import { supabase } from "./database_connection"

type item = {
	product: string
	price: number
	quantity: number
	id: number
	sku: number
}

export const itemsOrderedManager = {
	async addItems(items: item[], order_id: number) {
		const result = await supabase.from('Items Ordered').insert(
			items.map((item) => {
				return {
					product: item.product,
					price: item.price,
					quantity: item.quantity,
					product_id: item.id,
					order_id: order_id,
					product_sku: item.sku
				}
			}));
		return result
	},
	async getItemsFromOrder(order_id: number) {
		const { data, error } = await supabase.from('Items Ordered').select('*').eq('order_id', order_id);

		if (error) {
			throw new Error(error.message);
		}

		return data;
	}
}
