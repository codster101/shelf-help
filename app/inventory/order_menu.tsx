'use client'

import { ChangeEvent, useEffect, useState } from 'react';
import { Tables } from '@/database.types';
import InventorySearch from './inventory_search';
import CustomerSearch from './customer_search';
import { GetPriceSummary, NewOrder, Order, SubmitOrder } from '@/app/types/order';
import { customerAddressLine, customerCityState, customerName, customerZipCountry } from '../customers/customer_functions';

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
		<div className='absolute w-7/10 top-1/10 left-1/10 bg-card border-border border-1 border-radius-2 px-5 pb-10'>

			<div className='grid grid-cols-1 lg:grid-cols-[1.6fr_1fr] gap-8 items-start'>
				<div>
					<div className='flex items-center my-5'>
						<h1 className='text-3xl font-bold serif'>New Order</h1>
						<label className='text-md font-semibold ml-10 p-1 border border-border'>
							Date:
							<input name='date' type='date' value={date} onChange={(e) => setDate(e.currentTarget.value)} />
						</label>
					</div>

					<CustomerSearch addToOrder={addCustomerToOrder} />
					<div hidden={order.customer == undefined} className='grid grid-cols-[.6fr_.4fr] border-1 border-border p-2 mt-2'>
						<div>
							<h2 className='text-base text-lg font-bold text-primary-foreground mono'>{customerName(order.customer!)}</h2>
							<p className='text-sm text-primary-foreground'>{order.customer?.email}</p>
						</div>
						<div>
							<p className='pr-10 text-sm font-semibold text-primary-foreground '>Shipping Address</p>
							<p className="pr-5 text-sm text-primary-foreground">
								{customerAddressLine(order.customer!)}<br />
								{customerCityState(order.customer!)}<br />
								{customerZipCountry(order.customer!)}<br />
							</p>
						</div>
					</div>

					<InventorySearch addToOrder={addItemToOrder} />
					<div className="grid grid-cols-[.5fr_.23fr_.23fr] gap-2 items-center border-b-secondary border-b-1 p-2 border-b-border border-b-1 text-xs font-semibold text-primary-foreground uppercase tracking-[.025em]">
						<p className="w-1/3">Product</p>
						<p className="w-1/3">Price</p>
						<p className="w-1/3">Quantity</p>
					</div>
					{order.items.length != 0 && <div className="px-5 w-full bg-background border-t-border border-t-1">
						{order.items.map((item) => (
							<div key={item.id} className='grid grid-cols-[.5fr_.23fr_.23fr_.04fr] gap-2 items-center border-b-secondary border-b-1 p-2'>
								<div>
									<span className="w-1/3 font-medium text-[14px]">
										{item.product}
									</span>
									<span className='ml-5 text-primary-foreground font-xs italic'>{item.sku}</span>
								</div>
								<p className='pr-4 mono text-[12px]'>{item.price!.toLocaleString("en", { style: "currency", currency: "USD" })}</p>
								<input className='h-8 w-16 text-center font-medium text-[14px] border border-border' type='number' name='quantity'
									value={item.quantity!} onChange={(event) =>
										updateQuantity(event, item.id)} />
								<button className='ml-auto size-6 border-1 border-border bg-card hover:bg-background flex items-center justify-center font-bold'
									onClick={() => removeItemFromOrder(item)}>x</button>
							</div>
						))}
					</div>}
					<br />
				</div>

				<div className='lg:sticky lg:top-30 pt-10 w-full'>
					<div className='px-5 w-full flex flex-col gap-3'>
						<h2 className='text-xl serif underline'>Price Breakdown</h2>
						<div className='flex flex-col gap-1.5'>
							<div className='flex justify-between'>
								<span className='text-sm font-semibold'>Subtotal</span>
								<span className='text-sm font-semibold'>{GetPriceSummary(order).subtotal.toLocaleString("en", { style: "currency", currency: "USD" })}</span>
							</div>
							<div className='flex justify-between'>
								<span className='text-sm font-semibold'>Tax</span>
								<span className='text-sm font-semibold'>{GetPriceSummary(order).taxes.toLocaleString("en", { style: "currency", currency: "USD" })}</span>
							</div>
							<div className='flex justify-between'>
								<span className='text-sm font-semibold'>Shipping</span>
								<span className='text-sm font-semibold'>{GetPriceSummary(order).shipping.toLocaleString("en", { style: "currency", currency: "USD" })}</span>
							</div>
						</div>
						<div className='flex justify-between border-t border-black'>
							<span className='text-sm font-semibold'>Total</span>
							<span className='text-sm font-semibold'>{GetPriceSummary(order).total.toLocaleString("en", { style: "currency", currency: "USD" })}</span>
						</div>
						<br />
					</div>
					<button
						className='w-full my-2 p-2 font-medium text-[14px] border-1 border-border hover:bg-background'
						onClick={submitOrder}
					>
						Add Order
					</button>
				</div>
			</div>
			<button className='absolute top-3 right-3 w-10 border-1 border-border hover:bg-background' onClick={() => { closeMenu() }}>X</button>
		</div>
	);
}
