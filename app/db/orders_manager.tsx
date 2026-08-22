import { createClient } from '@/lib/supabase/server';

export const ordersManager = {
	async getAll() {
		const supabase = await createClient();
		const { data, error } = await supabase.from('Orders').select();

		if (error) {
			throw new Error(error.message);
		}

		return data;
	},
	async addOrder(order: { customer_id: number, date_ordered: string }) {
		const supabase = await createClient();

		const orderInfo = {
			customer_id: order.customer_id,
			date_ordered: order.date_ordered
		}
		const { data, error } = await supabase.from('Orders').insert(orderInfo).select('id').single();

		if (error) {
			throw new Error(error.message);
		}

		return data;
	}
}

