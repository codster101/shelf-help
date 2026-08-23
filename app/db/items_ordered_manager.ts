import { createClient } from "@/lib/supabase/server"

type item = {
	product: string
	price: number
	quantity: number
	id: number
	sku: number
}

export const itemsOrderedManager = {
	async addItems(items: item[], order_id: number) {
		const supabase = await createClient();
		const { error } = await supabase.from('Items Ordered').insert(
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
		if (error) {
			console.log(error);
			console.log(error.message);
			return error.message;
		}
		return "successful";
	},
	async getItemsFromOrder(order_id: number) {
		const supabase = await createClient();
		const { data, error } = await supabase.from('Items Ordered').select('*').eq('order_id', order_id);

		if (error) {
			throw new Error(error.message);
		}

		return data;
	}
}
