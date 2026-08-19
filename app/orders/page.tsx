import NewOrderWrapper from '@/app/inventory/new_order_wrapper';
import Link from 'next/link';
import { ordersManager } from '../db/orders_manager';
import { Tables } from '@/database.types';
import { Order } from '@/app/types/order';
import { customersManager } from '../db/customers_manager';
import { itemsOrderedManager } from '../db/items_ordered_manager';
import { OrderTable } from './order_table';

export const dynamic = 'force-dynamic';

export default async function Page() {

	const orders: Tables<'Orders'>[] = await ordersManager.getAll();

	let orderDisplays: Order[] = [];
	for (const order of orders) {
		const customerInfo = await customersManager.getCustomer(order.customer_id);
		const items = await itemsOrderedManager.getItemsFromOrder(order.id);

		if (customerInfo && typeof customerInfo == "object") {

			orderDisplays.push({
				id: order.id,
				date_ordered: order.date_ordered,
				customer: customerInfo,
				items: items.map(item => ({
					id: item.product_id,
					product: item.product,
					price: item.price,
					quantity: item.quantity,
					sku: item.product_sku
				}))
			});
		}
		else {
			throw new Error("No customer in order");
		}
	}


	return (
		<>
			<div className='flex h-screen bg-card'>
				<div className='w-1/8 flex flex-col bg-card border-r-border border-r-1'>
					<h1 className="font-serif text-xl/[1.2] font-semibold text-foreground p-4 border-b-border border-b-1">Shelf-Help</h1>
					<div className=' flex flex-col border-b-border border-b-1'>
						<Link href="./" className='w-full p-2 font-semibold hover:bg-background'>Inventory</Link>
						<Link href="/orders/" className='w-full p-2 bg-background font-semibold'>Orders</Link>
						<Link href="/orders/" className='w-full p-2 font-semibold hover:bg-background'>Customers</Link>
					</div>
					<NewOrderWrapper />
				</div>
				<div className='w-7/8 bg-card'>
					<div className='h-30 p-5'>
						<h1 className="font-serif text-2xl/[1.2] font-semibold text-foreground">Orders</h1>
					</div>
					<div className="px-5 w-full bg-background border-t-border border-t-1 h-full">
						<div className="flex border-b-border border-b-1 text-xs font-semibold text-primary-foreground uppercase tracking-[.025em] p-2">
							<p className="w-1/3">Customer</p>
							<p className="w-1/3">Date</p>
							<p className="w-1/3">Total</p>
						</div>
						<OrderTable orders={orderDisplays} />
					</div>
				</div>
			</div>
		</>
	);
}
