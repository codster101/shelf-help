'use client'

import { ChangeEvent, ChangeEventHandler, MouseEvent, ReactEventHandler, useEffect, useState } from 'react';
import { Tables } from '@/database.types';

type OrderItem = {
	product: string
	quantity: number
	price: number | null
	id: number
	lineItem: number
}

export default function OrderMenu({ isOpen, closeMenu }: { isOpen: boolean, closeMenu: () => void }) {

	let isHidden = true;


	const [selectedProduct, updateSelectedProduct] = useState<Tables<'Inventory'>>({ product: "Product", quantity: 0, price: 0, id: -1 });
	const [inventory, setInventory] = useState<Tables<'Inventory'>[]>([]);
	const [itemsOrdered, updateItemsOrdered] = useState<OrderItem[]>([]);

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
		setSubtotal(itemsOrdered.reduce((sum, product) => sum + product.price!, 0));
		// update shipping
		// update taxes
		// update total
	},
		[itemsOrdered]);

	function addItemToOrder(event: ChangeEvent<HTMLSelectElement>) {
		// Find the selected product in the inventory
		const selectedProduct = inventory.find(product => product.id === Number(event.target.value));

		// If a product was found in the inventory
		if (selectedProduct) {
			// Find the index of the selected product in the order
			const productIndex = itemsOrdered.findIndex(product => product.id === selectedProduct.id);

			// If not found update the state of the order adding the selected product as an OrderItem
			if (productIndex === -1) {
				updateItemsOrdered(prevItems => [...prevItems,
				{ ...selectedProduct, quantity: 1, lineItem: itemsOrdered.length }]);
			}
			else {	// Else increase the quantity of the item at the found index by 1 
				//and update the state of the order with the new array
				updateItemsOrdered(prev =>
					prev.map((product, i) =>
						productIndex === i ? { ...product, quantity: product.quantity + 1 } : product
					));
			}

			// // If the product is already in the order update the existing product quantity instead of adding the product
			// if (productsOrdered.find(product => product.id === Number(event.target.value))) {
			// 	// Loop through ordered products and if match found then increase the quantity by 1
			// 	productsOrdered.map((product) => {
			// 		product.id == selectedProduct.id ? { ...product, quantity: product.quantity!++ } : product
			// 	});
			// }
			// else {
			// 	updateProductsOrdered(prevItems => [...prevItems, selectedProduct]);
			// }
		}
	}

	function removeItemFromOrder(selectedProduct: OrderItem) {
		const updatedProducts = itemsOrdered.filter(product => product.id != selectedProduct.id);
		updateItemsOrdered(updatedProducts);
	}

	return (
		<div id='orderMenu' className='popup'>
			<h1 className='mt-5 ml-5 text-3xl font-bold'>New Order</h1>
			<label>
				Date:
				<input name='date' type='date' defaultValue={(new Date).toISOString().split('T')[0]} />
			</label>
			<br />
			<label>
				Customer:
				<input name='customer' type='text' />
			</label>
			<br />
			<label>
				Products:
				<select value="" onChange={addItemToOrder}>
					<option key={-1} value="" hidden={true}>Select a Product</option>
					{inventory.map((product) => (
						<option key={product.id} value={product.id}>
							{product.product}
						</option>
					))}
				</select>
				<div id='ordered-products'>
					{itemsOrdered.map((item) => (
						<div key={item.lineItem} className='inventory-row inventory-entry'>
							<p className='inventory-field'>{item.product}</p>
							<p className='inventory-field'>{item.price!}</p>
							<input className='inventory-field' type='number' name='quantity'
								value={item.quantity!} onChange={() => { }} />
							<button className='button' onClick={() => removeItemFromOrder(item)}>x</button>
						</div>
					))}
				</div>
			</label>
			<br />
			<h2>Price Breakdown</h2>
			<br />
			<p>Subtotal: {subtotal.toLocaleString()}</p>
			<br />
			<p>Tax: </p>
			<br />
			<p>Shipping: </p>
			<br />
			<p>Total: </p>
			<br />
			<button className='absolute top-0 right-0 w-10' onClick={() => { closeMenu() }}>X</button>
		</div>
	);
}
