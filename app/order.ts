export type Order = {
	id?: number
	date_ordered: string
	customer: {
		id: number
		name: string
		email: string
	} | null
	items: {
		product: string
		price: number
		quantity: number
		id: number
	}[]
}

export type OrderInfo = {
	date_ordered: string,
	customer_id: number,
	items_ordered: {
		product: string
		price: number
		quantity: number
		id: number
	}[]
}


export function NewOrder() {
	const order: Order = {
		date_ordered: (new Date).toISOString().split('T')[0],
		customer: null,
		items: []
	}
	return order;
}

export function GetPriceSummary(order: Order) {
	const subtotal = order.items.length == 0 ? 0 : order.items.reduce((sum, item) => sum + item.price * item.quantity, 0);

	return {
		subtotal: subtotal,
		taxes: subtotal * 0.06,
		shipping: 5.99,
		total: (subtotal * 1.06) + 5.99
	}
}

export async function SubmitOrder(order: Order) {

	if (!order.customer) return false;

	const order_info: OrderInfo = {
		date_ordered: order.date_ordered,
		customer_id: order.customer.id,
		items_ordered: order.items
	}

	try {
		await fetch('api/db/orders', {
			method: 'POST',
			body: JSON.stringify(order_info)
		});
	}
	catch (error) {
		console.log(error);
		throw new Error('Could not load the inventory from the database');
	}

}
