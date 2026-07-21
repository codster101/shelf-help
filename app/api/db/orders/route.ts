import { ordersManager } from "@/app/orders_manageer";
import { NextRequest } from "next/server";

export async function GET(req: NextRequest) {
	const data = await ordersManager.getAll();
	return Response.json(data);
}

export async function POST(req: NextRequest) {
	const response = ordersManager.addOrder(await req.json());
	return Response.json(response);

}
