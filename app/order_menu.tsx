'use client'

import { ChangeEvent, ChangeEventHandler, ReactEventHandler, useEffect, useState } from 'react';
import { Tables } from '@/database.types';

type Product = {
	product: string
	quantity: number | null
	price: number | null
	id: number
}

export default function OrderMenu({ isOpen, closeMenu }: { isOpen: boolean, closeMenu: () => void }) {

	let isHidden = true;


	const [inventory, setInventory] = useState<Tables<'Inventory'>[]>([]);
	const [productsOrdered, updateProductsOrdered] = useState<Product[]>([]);

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

	function addProductToOrder(event: ChangeEvent<HTMLSelectElement>) {
		const selectedProduct = inventory.find(product => product.id === Number(event.target.value));
		if (selectedProduct) {
			updateProductsOrdered(prevItems => [...prevItems, selectedProduct]);
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
			<label>
				Customer:
				<input name='customer' type='text' />
			</label>
			<br />
			<label>
				Products:
				<select onChange={addProductToOrder}>
					{inventory.map((product) => (
						<option key={product.id} value={product.id}>
							{product.product}
						</option>
					))}
				</select>
				<div id='ordered-products'>
					{productsOrdered.map((product) => (
						<div key={product.id} className='inventory-row inventory-entry'>
							<p className='inventory-field'>{product.product}</p>
							<input className='inventory-field' type='number' name='price' defaultValue={product.price!} />
							<input className='inventory-field' type='number' name='quantity' defaultValue={product.quantity!} />
						</div>
					))}
				</div>
			</label>
			<button className='absolute top-0 right-0 w-10' onClick={() => { closeMenu() }}>X</button>
		</div>
	);
}
