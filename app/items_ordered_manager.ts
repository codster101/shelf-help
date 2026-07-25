import { ConnectToDb } from "./database_connection";

type item = {
	product: string
	price: number
	quantity: number
	id: number
}

export const itemsOrderedManager = {
	connection: ConnectToDb(),
	async addItems(items: item[], order_id: number) {
		const result = await this.connection.from('Items Ordered').insert(
			items.map((item) => {
				return {
					product: item.product,
					price: item.price,
					quantity: item.quantity,
					product_id: item.id,
					order_id: order_id
				}
			}));
		return result
	}
}
