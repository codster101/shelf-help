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
	async addOrder(order: { customer_id: number, date_ordered: string }) {
		const orderInfo = {
			customer_id: order.customer_id,
			date_ordered: order.date_ordered
		}
		const { data, error } = await this.connection.from('Orders').insert(orderInfo).select('id').single();

		if (error) {
			throw new Error(error.message);
		}

		return data;
	}
}

