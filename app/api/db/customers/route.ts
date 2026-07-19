import "@/app/customers_manager";
import { customersManager } from "@/app/customers_manager";
import { NextRequest } from "next/server";

export async function GET(req: NextRequest) {
	console.log(req.nextUrl.searchParams.has("target"));

	// Check for target parameter indicating a search for products
	if (req.nextUrl.searchParams.has("target")) {
		let target = req.nextUrl.searchParams.get("target");
		target = target == "" ? '*' : target;	// If target blank get all results
		if (target != null) {		// If the value is null skip and get all products
			console.log("filter");
			const data = await customersManager.getMatchingCustomers(target);
			return Response.json(data);
		}
	}

	// Check for an id match retrieval
	if (req.nextUrl.searchParams.has("id")) {
		const id = req.nextUrl.searchParams.get("id");
		if (id != null) {
			const data = await customersManager.getCustomer(Number.parseInt(id));
			return Response.json(data);
		}

	}

	console.log("get all");
	const data = await customersManager.getAll();
	return Response.json(data);
}
