import { createClient, SupabaseClient } from '@supabase/supabase-js';
import { Database } from '../database.types';

export function ConnectToDb() {
	const supabaseUrl = process.env.SUPABASE_URL;
	const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY;

	let supabase: SupabaseClient<Database>;
	if (supabaseUrl != null && supabaseKey != null) {
		supabase = createClient<Database>(supabaseUrl, supabaseKey, {
			global: {
				fetch: (url, options) => fetch(url, { ...options, cache: "no-store" }),
			},
		});


		return supabase;

	} else {
		console.error("Supabase connection info could not be  found for url : " + supabaseUrl);
		throw new Error("Supabase connection info could not be  found for url : ");
	}

}
