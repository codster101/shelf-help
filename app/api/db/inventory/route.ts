import { inventoryManager } from "@/app/inventory_manager";

export async function GET() {
	const data = await inventoryManager.getAll();
	return Response.json(data);
}
