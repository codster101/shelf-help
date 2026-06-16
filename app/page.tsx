import Image from "next/image";
import { createClient, SupabaseClient } from '@supabase/supabase-js';
import { Database, Tables } from '../database.types';

const supabaseUrl = process.env.SUPABASE_URL;
const supabaseKey = process.env.NEXT_PUBLIC_PUBLISHABLE_KEY;
let supabase: SupabaseClient<Database>;
if (supabaseUrl != null && supabaseKey != null) {
  supabase = createClient<Database>(supabaseUrl, supabaseKey, {
    global: {
      fetch: (url, options) => fetch(url, { ...options, cache: "no-store" }),
    },
  });
  const { data, error } = await supabase.from("Inventory").select("id");
  console.log(data);
  console.log(error);
} else {
  console.error("Supabase connection info could not be  found for url : " + supabaseUrl);
}

export default async function Home() {
  const { data, error } = await supabase.from("Inventory").select("*");

  if (error) {
    console.error(error);
    return <div>Error Loading Inventory</div>
  }

  return (
    <div className="inventory-table">
      {data?.map((row) => (
        <div key={row.id} className="inventory-row">
          <p>{row.product}</p>
          <p>{row.price}</p>
          <p>{row.quantity}</p>
        </div>
      ))}
    </div>
  );
}
