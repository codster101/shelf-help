import { Tables } from '@/database.types';
import { ConnectToDb } from './database_connection';

export const ordersManager = {
	connection: ConnectToDb(),
	async getAll() {
		const { data, error } = await this.connection.from('Customers').select("*");

		if (error) {
			throw new Error(error.message);
		}

		return data;
	},
	async addOrder(order: { customer_id: number, date_ordered: string, items_ordered: Tables<'Inventory'>[] }) {
		const orderInfo = {
			customer_id: order.customer_id,
			date_ordered: order.date_ordered
		}
		const { data, error } = await this.connection.from('Orders').insert(orderInfo).select('id').single();

		if (error) {
			throw new Error(error.message);
		}

		type item = {
			product: string
			quantity: number | null
			price: number | null
			order_id: number
		};

		let ordered_items: item[] = [];
		order.items_ordered.forEach((product) => {
			const item = {
				product: product.product,
				quantity: product.quantity,
				price: product.price,
				order_id: data.id,
			}
			ordered_items.push(item);
		});

		await this.connection.from('Items Ordered').insert(ordered_items);

		return data;
	}
}

