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
		const { data, error } = await supabase.from("Customers").select("name");

		if (error) {
			throw new Error(error.message);
		}

		return data;
	},
	async getMatchingCustomers(target: string) {
		const supabase = await createClient();
		const { data, error } =
			await supabase.from('Customers').select().ilike("name", target + '%');

		if (error) {
			throw new Error(error.message);
		}

		return data;

	}
}
