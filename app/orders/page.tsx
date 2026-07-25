import NewOrderWrapper from '../new_order_wrapper';
import Link from 'next/link';
import { ordersManager } from '../db/orders_manager';
import { Tables } from '@/database.types';
import { GetPriceSummary, Order } from '../order';
import { customersManager } from '../db/customers_manager';
import { itemsOrderedManager } from '../db/items_ordered_manager';


export default async function Page() {

	const orders: Tables<'Orders'>[] = await ordersManager.getAll();

	let orderDisplays: Order[] = [];
	for (const order of orders) {
		const customerInfo = await customersManager.getCustomer(order.customer_id);
		const items = await itemsOrderedManager.getItemsFromOrder(order.id);

		orderDisplays.push({
			id: order.id,
			date_ordered: order.date_ordered,
			customer: customerInfo,
			items: items
		});
	}

	return (
		<>
			<h1 className="title">Shelf-Help</h1>
			<Link href="../">Inventory</Link>
			<NewOrderWrapper />
			<div className="inventory-table">
				<div className="inventory-row table-header">
					<p className="inventory-field">Customer</p>
					<p className="inventory-field">Date</p>
					<p className="inventory-field">Total</p>
				</div>
				{orderDisplays?.map((row) => (
					<div key={row.id} className='inventory-entry'>
						<div className="inventory-row">
							<p className="inventory-field">{row.customer?.name}</p>
							<p className="inventory-field">{row.date_ordered}</p>
							<p className="inventory-field">
								{GetPriceSummary(row).total.toLocaleString("en", { style: "currency", currency: "USD" })}
							</p>
						</div>
						<div>
							{row.items.map((item) => (
								<div key={item.id}>
									<p>{item.product}</p>
								</div>
							))}
						</div>
					</div>
				))}
			</div>
		</>
	);
}
