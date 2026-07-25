'use client'

import { ChangeEvent, useEffect, useState } from 'react';
import { Tables } from '@/database.types';
import InventorySearch from './inventory_search';
import CustomerSearch from './customer_search';
import { GetPriceSummary, NewOrder, Order, SubmitOrder } from './order';

export default function OrderMenu({ closeMenu }: { closeMenu: () => void }) {

	const [date, setDate] = useState((new Date).toISOString().split('T')[0]);

	const [inventory, setInventory] = useState<Tables<'Inventory'>[]>([]);

	const [order, setOrder] = useState<Order>(NewOrder());

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

	function addItemToOrder(selectedId: number) {
		// Find the selected product in the inventory
		const selectedProduct = inventory.find(product => product.id === selectedId);

		// If a product was found in the inventory
		if (selectedProduct) {
			// Find the index of the selected product in the order
			const productIndex = order.items.findIndex(product => product.id === selectedProduct.id);

			// If not found update the state of the order adding the selected product as an OrderItem
			if (productIndex === -1) {
				setOrder({
					...order,
					items: [...order.items,
					{ ...selectedProduct, quantity: 1 }
					]
				});
			}
			else {	// Else increase the quantity of the item at the found index by 1 
				//and update the state of the order with the new array
				setOrder({
					...order,
					items: order.items.map((product, i) =>
						productIndex === i ? { ...product, quantity: product.quantity + 1 } : product
					)
				});
			}

		}
	}

	function removeItemFromOrder(selectedProduct: Tables<'Inventory'>) {
		const updatedProducts = order.items.filter(product => product.id != selectedProduct.id);
		setOrder({ ...order, items: updatedProducts });
	}

	function updateQuantity(event: ChangeEvent<HTMLInputElement, HTMLInputElement>, id: number) {
		const newQuantity = Number.isNaN(event.target.valueAsNumber) ? 0 : event.target.valueAsNumber;
		setOrder({
			...order,
			items: order.items.map((item) => item.id === id ? { ...item, quantity: newQuantity } : item)
		});
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
			setOrder({ ...order, customer: data });

		}
		catch (error) {
			console.log(error);
			throw new Error('Could not load the inventory from the database');
		}

	}

	async function submitOrder() {
		await SubmitOrder(order);
		closeMenu();
	}

	return (
		<div id='orderMenu' className='popup'>
			<h1 className='mt-5 ml-5 text-3xl font-bold'>New Order</h1>
			<label>
				Date:
				<input name='date' type='date' value={date} onChange={(e) => setDate(e.currentTarget.value)} />
			</label>
			<br />

			<CustomerSearch addToOrder={addCustomerToOrder} />
			<div id='order-customer' hidden={order.customer == undefined} className='border-2'>
				<h2>{order.customer?.name}</h2>
				<p>{order.customer?.email}</p>
			</div>

			<InventorySearch addToOrder={addItemToOrder} />
			<div id='ordered-products'>
				{order.items.map((item) => (
					<div key={item.id} className='inventory-row inventory-entry'>
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
			<p>Subtotal: {GetPriceSummary(order).subtotal.toLocaleString("en", { style: "currency", currency: "USD" })}</p>
			<br />
			<p>Tax: {GetPriceSummary(order).taxes.toLocaleString("en", { style: "currency", currency: "USD" })} </p>
			<br />
			<p>Shipping: {GetPriceSummary(order).shipping.toLocaleString("en", { style: "currency", currency: "USD" })}</p>
			<br />
			<p>Total: {GetPriceSummary(order).total.toLocaleString("en", { style: "currency", currency: "USD" })}</p>
			<br />
			<button className='absolute top-0 right-0 w-10' onClick={() => { closeMenu() }}>X</button>
			<button onClick={submitOrder}>Add Order</button>
		</div>
	);
}
