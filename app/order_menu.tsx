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
		<div className='absolute h-4/5 w-4/5 top-1/10 left-1/10 bg-card border-border border-1 border-radius-2 px-5'>
			<h1 className='my-5 text-3xl font-bold serif'>New Order</h1>
			<label className='text-sm font-semibold'>
				Date:
				<input name='date' type='date' value={date} onChange={(e) => setDate(e.currentTarget.value)} />
			</label>
			<br />

			<CustomerSearch addToOrder={addCustomerToOrder} />
			<div hidden={order.customer == undefined} className='border-1 border-border p-2 m-2 w-1/4'>
				<h2 className='text-base font-semibold text-primary-foreground mono underline'>{order.customer?.name}</h2>
				<p className='text-sm font-semibold text-primary-foreground'>Email: {order.customer?.email}</p>
			</div>

			<InventorySearch addToOrder={addItemToOrder} />
			{order.items.length != 0 && <div className="mt-5 px-5 w-full bg-background border-t-border border-t-1">
				{order.items.map((item) => (
					<div key={item.id} className='flex border-b-secondary border-b-1 p-2'>
						<p className='w-1/3 font-medium text-[14px]'>{item.product}</p>
						<p className='w-1/3 mono text-[12px]'>{item.price!.toLocaleString("en", { style: "currency", currency: "USD" })}</p>
						<input className='font-medium text-[14px]' type='number' name='quantity'
							value={item.quantity!} onChange={(event) =>
								updateQuantity(event, item.id)} />
						<button className='ml-auto px-2 border-1 border-border bg-card hover:bg-background'
							onClick={() => removeItemFromOrder(item)}>x</button>
					</div>
				))}
			</div>}
			<br />

			<div className='w-50 pl-2 border-1 border-border'>
				<h2 className='text-xl serif underline'>Price Breakdown</h2>
				<br />
				<p className='text-sm/1 font-semibold'>Subtotal: {GetPriceSummary(order).subtotal.toLocaleString("en", { style: "currency", currency: "USD" })}</p>
				<br />
				<p className='text-sm/1 font-semibold'>+ Tax: {GetPriceSummary(order).taxes.toLocaleString("en", { style: "currency", currency: "USD" })} </p>
				<br />
				<p className='text-sm/1 font-semibold underline'>+ Shipping: {GetPriceSummary(order).shipping.toLocaleString("en", { style: "currency", currency: "USD" })}</p>
				<br />
				<p className='text-sm/1 font-semibold'>Total: {GetPriceSummary(order).total.toLocaleString("en", { style: "currency", currency: "USD" })}</p>
				<br />
			</div>
			<button className='absolute top-3 right-3 w-10 border-1 border-border hover:bg-background' onClick={() => { closeMenu() }}>X</button>
			<button
				className='my-2 p-2 border-1 border-border hover:bg-background'
				onClick={submitOrder}
			>
				Add Order
			</button>
		</div>
	);
}
