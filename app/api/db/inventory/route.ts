import { inventoryManager } from "@/app/inventory_manager";
import { NextRequest } from "next/server";

export async function GET(req: NextRequest) {
	console.log(req.nextUrl.searchParams.has("target"));

	// Check for target parameter indicating a search for products
	if (req.nextUrl.searchParams.has("target")) {
		const target = req.nextUrl.searchParams.get("target");
		if (target != null) {		// If the value is null skip and get all products
			console.log("filter");
			const data = await inventoryManager.getMatchingProducts(target);
			return Response.json(data);
		}
	}

	console.log("get all");
	const data = await inventoryManager.getAll();
	return Response.json(data);
}
