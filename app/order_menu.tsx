'use client'

import { ChangeEvent, ChangeEventHandler, MouseEvent, ReactEventHandler, useEffect, useState } from 'react';
import { Tables } from '@/database.types';
import InventorySearch from './inventory_search';
import CustomerSearch from './customer_search';

type OrderItem = {
	product: string
	quantity: number
	price: number | null
	id: number
	lineItem: number
}

export default function OrderMenu({ isOpen, closeMenu }: { isOpen: boolean, closeMenu: () => void }) {

	let isHidden = true;


	const [inventory, setInventory] = useState<Tables<'Inventory'>[]>([]);
	const [itemsOrdered, updateItemsOrdered] = useState<OrderItem[]>([]);

	const [customer, setCustomer] = useState<Tables<'Customers'>>();

	const [subtotal, setSubtotal] = useState(0);
	const [taxes, setTaxes] = useState(0);
	const [shipping, setShipping] = useState(0);
	const [total, setTotal] = useState(0);

	useEffect(() => {
		async function loadInventory() {
			try {
				const response = await fetch("api/db/inventory")
				if (!response.ok) {
					throw new Error(`Response status: ${response.status}`);
				}

				const data = await response.json();
				setInventory(data);

			}
			catch (error) {
				console.log(error);
				throw new Error('Could not load the inventory from the database');
			}
		}

		loadInventory();
	},
		[]);

	useEffect(() => {
		isHidden = !isOpen;
		console.log(isHidden);

		const orderMenu = document.getElementById("orderMenu");
		if (orderMenu != null) {
			orderMenu.hidden = isHidden;
		}
	},
		[isOpen]);

	useEffect(() => {
		// update subtotal
		setSubtotal(itemsOrdered.reduce((sum, product) => sum + (product.price! * product.quantity), 0));
	},
		[itemsOrdered]);

	useEffect(() => {
		// update taxes
		setTaxes(subtotal * .06);
		// update shipping
		if (subtotal != 0) {
			setShipping(5.99);
		}
		else {
			setShipping(0);
		}
	},
		[subtotal])

	useEffect(() => {
		// update total
		setTotal(subtotal + taxes + shipping);
	},
		[taxes])

	function addItemToOrder(selectedId: number) {
		// Find the selected product in the inventory
		const selectedProduct = inventory.find(product => product.id === selectedId);

		// If a product was found in the inventory
		if (selectedProduct) {
			// Find the index of the selected product in the order
			const productIndex = itemsOrdered.findIndex(product => product.id === selectedProduct.id);

			// If not found update the state of the order adding the selected product as an OrderItem
			if (productIndex === -1) {
				updateItemsOrdered(prevItems => [...prevItems,
				{ ...selectedProduct, quantity: 1, lineItem: prevItems.length }]);
			}
			else {	// Else increase the quantity of the item at the found index by 1 
				//and update the state of the order with the new array
				updateItemsOrdered(prev =>
					prev.map((product, i) =>
						productIndex === i ? { ...product, quantity: product.quantity + 1 } : product
					));
			}

		}
	}

	function removeItemFromOrder(selectedProduct: OrderItem) {
		const updatedProducts = itemsOrdered.filter(product => product.id != selectedProduct.id);
		updateItemsOrdered(updatedProducts);
	}

	function updateQuantity(event: ChangeEvent<HTMLInputElement, HTMLInputElement>, id: number) {
		const newQuantity = Number.isNaN(event.target.valueAsNumber) ? 0 : event.target.valueAsNumber;
		updateItemsOrdered(prev =>
			prev.map((item) =>
				item.id === id ? { ...item, quantity: newQuantity } : item));
	}

	async function addCustomerToOrder(selectedId: number) {
		try {
			const params = new URLSearchParams();
			params.append("id", selectedId.toString());
			const response = await fetch(`api/db/customers?${params}`)
			if (!response.ok) {
				throw new Error(`Response status: ${response.status}`);
			}

			const data = await response.json();
			setCustomer(data);
			console.log(customer);

		}
		catch (error) {
			console.log(error);
			throw new Error('Could not load the inventory from the database');
		}

	}

	return (
		<div id='orderMenu' className='popup'>
			<h1 className='mt-5 ml-5 text-3xl font-bold'>New Order</h1>
			<label>
				Date:
				<input name='date' type='date' defaultValue={(new Date).toISOString().split('T')[0]} />
			</label>
			<br />

			<CustomerSearch addToOrder={addCustomerToOrder} />
			<div id='order-customer' hidden={customer == undefined} className='border-2'>
				<h2>{customer?.name}</h2>
				<p>{customer?.email}</p>
			</div>

			<InventorySearch addToOrder={addItemToOrder} />
			<div id='ordered-products'>
				{itemsOrdered.map((item) => (
					<div key={item.lineItem} className='inventory-row inventory-entry'>
						<p className='inventory-field'>{item.product}</p>
						<p className='inventory-field'>{item.price!.toLocaleString("en", { style: "currency", currency: "USD" })}</p>
						<input className='inventory-field' type='number' name='quantity'
							value={item.quantity!} onChange={(event) =>
								updateQuantity(event, item.id)} />
						<button className='button' onClick={() => removeItemFromOrder(item)}>x</button>
					</div>
				))}
			</div>
			<br />

			<h2>Price Breakdown</h2>
			<br />
			<p>Subtotal: {subtotal.toLocaleString("en", { style: "currency", currency: "USD" })}</p>
			<br />
			<p>Tax: {taxes.toLocaleString("en", { style: "currency", currency: "USD" })} </p>
			<br />
			<p>Shipping: {shipping.toLocaleString("en", { style: "currency", currency: "USD" })}</p>
			<br />
			<p>Total: {total.toLocaleString("en", { style: "currency", currency: "USD" })}</p>
			<br />
			<button className='absolute top-0 right-0 w-10' onClick={() => { closeMenu() }}>X</button>
		</div>
	);
}
