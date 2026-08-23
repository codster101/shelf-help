import { createClient } from '@/lib/supabase/server';
import { supabase } from './database_connection';

export const customersManager = {
	async getAll() {
		const supabase = await createClient();
		const { data, error } = await supabase.from('Customers').select();

		if (error) {
			throw new Error(error.message);
		}

		return data;
	},
	async getCustomer(id: number) {
		const supabase = await createClient();
		const { data, error } = await supabase.from('Customers').select().eq('id', id).single();

		if (error) {
			throw new Error(error.message);
		}

		return data;
	},
	async getAllNames() {
		const supabase = await createClient();
		const { data, error } = await supabase.from("Customers").select("first_name, last_name");

		if (error) {
			throw new Error(error.message);
		}

		const names = data.map(customer => customer.first_name + " " + customer.last_name);

		return names;
	},
	async getMatchingCustomers(target: string) {
		const supabase = await createClient();
		const { data, error } =
			await supabase.from('Customers').select()
				.or(`first_name.ilike.${target}%,last_name.ilike.${target}%`);

		if (error) {
			throw new Error(error.message);
		}

		return data;

	}
}
