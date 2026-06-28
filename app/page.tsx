import { createClient, SupabaseClient } from '@supabase/supabase-js';
import { Database } from '../database.types';
import NewOrderButton from './new_order_button';
import OrderMenu from './order_menu';

const supabaseUrl = process.env.SUPABASE_URL;
const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY;
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

function setOrderMenuOpen(shouldOpen: boolean) {

}

export default async function Home() {
  const { data, error } = await supabase.from("Inventory").select("*");

  if (error) {
    console.error(error);
    return <div>Error Loading Inventory</div>
  }

  let showOrderMenu: boolean = false;

  return (
    <>
      <h1 className="title">Shelf-Help</h1>
      <NewOrderButton showMenu={showOrderMenu} />
      <OrderMenu isOpen={showOrderMenu} />
      <div className="inventory-table">
        <div className="inventory-row table-header">
          <p className="inventory-field">Product</p>
          <p className="inventory-field">Price</p>
          <p className="inventory-field">Quantity</p>
        </div>
        {data?.map((row) => (
          <div key={row.id} className="inventory-row inventory-entry">
            <p className="inventory-field">{row.product}</p>
            <p className="inventory-field">{row.price}</p>
            <input className="inventory-field" type="number" defaultValue={row.quantity == null ? 0 : row.quantity} />
          </div>
        ))}
      </div>
    </>
  );
}
