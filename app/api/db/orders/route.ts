import { inventoryManager } from "@/app/db/inventory_manager";
import { itemsOrderedManager } from "@/app/db/items_ordered_manager";
import { OrderInfo } from "@/app/order";
import { ordersManager } from "@/app/db/orders_manager";
import { NextRequest } from "next/server";

export const dynamic = 'force-dynamic';

export async function GET() {
	const data = await ordersManager.getAll();
	return Response.json(data);
}

export async function POST(req: NextRequest) {
	const request: OrderInfo = await req.json();
	// Add order to the Orders table
	const addOrderResponse = await ordersManager.addOrder(request);

	// Use new order id to enter the items ordered into the Items Ordered table
	console.log("REQUEST: " + request);
	await itemsOrderedManager.addItems(request.items_ordered, addOrderResponse.id);

	// Update the inventory by removing the items that were ordered
	const updateInventoryResponse = await inventoryManager.removeProducts(request.items_ordered);

	return Response.json(updateInventoryResponse);

}
