'use client'

import { useState } from 'react';

export default function ProductMenu({ closeMenu }: { closeMenu: () => void }) {
	const [productName, setProductName] = useState('');
	const [productPrice, setProductPrice] = useState(0);
	const [productQuantity, setProductQuantity] = useState(0);

	async function addProduct() {
		try {
			const product_info = {
				"product": productName,
				"price": productPrice,
				"quantity": productQuantity
			}

			await fetch('api/db/inventory', {
				method: 'POST',
				body: JSON.stringify(product_info)
			});
		}
		catch (error) {
			console.log(error);
			throw new Error('Could not load the inventory from the database');
		}
		closeMenu();
	}

	return (
		<div className='absolute w-2/5 top-1/10 left-1/10 bg-card border-border border-1 border-radius-2 p-5'>
			<h1 className='my-5 text-3xl font-bold serif'>New Product</h1>

			<form>
				<p className="inline text-base font-semibold">Product Name: </p>
				<input className="w-50 my-2 border-1 border-border" type='text'
					value={productName} onChange={(e) => setProductName(e.target.value)}>
				</input>
				<br />

				<p className="inline text-base font-semibold">Price: </p>
				<input className="w-50 my-2 border-1 border-border" type='number'
					value={productPrice} onChange={(e) => setProductPrice(e.target.valueAsNumber)}>
				</input>
				<br />

				<p className="inline text-base font-semibold">Current Inventory: </p>
				<input className="w-50 my-2 border-1 border-border" type='number'
					value={productQuantity} onChange={(e) => setProductQuantity(e.target.valueAsNumber)}>
				</input>
				<br />

				<button
					className='my-2 p-2 border-1 border-border hover:bg-background'
					onClick={addProduct}
				>
					Add Product
				</button>
			</form>

			<button className='absolute top-3 right-3 w-10 border-1 border-border hover:bg-background' onClick={() => { closeMenu() }}>X</button>
		</div>
	);
}
