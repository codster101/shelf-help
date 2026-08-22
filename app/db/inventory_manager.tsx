import { createClient } from "@/lib/supabase/server";

export const inventoryManager = {
	async getAll() {
		const supabase = await createClient()
		const { data, error } = await supabase.from('Inventory').select("*");

		if (error) {
			throw new Error(error.message);
		}

		return data;
	},
	async getAllNames() {
		const supabase = await createClient()
		const { data, error } = await supabase.from("Inventory").select("Product");

		if (error) {
			throw new Error(error.message);
		}

		return data;
	},
	async getMatchingProducts(target: string) {
		const supabase = await createClient()
		const { data, error } =
			await supabase.from('Inventory').select().ilike("product", target + '%');

		if (error) {
			throw new Error(error.message);
		}

		return data;

	},
	async removeProducts(products: { id: number, quantity: number }[]) {
		const supabase = await createClient()
		const { data, error } = await supabase.rpc('decrement_quantities', { items: products });

		if (error) {
			throw new Error(error.message);
		}

		return data;
	},
	async updateInventory(products: { sku: number, product: string, price: number }[]) {
		const supabase = await createClient()

		const uniqueProducts = Array.from(
			new Map(products.map(p => [p.sku, p])).values()
		);

		// const { error } = await supabase.from("Inventory").insert(products);
		const { error } = await supabase.from("Inventory").upsert(uniqueProducts, {
			onConflict: 'sku',
			defaultToNull: true
		});

		if (error) {
			throw new Error(error.message);
		}

	}
}
