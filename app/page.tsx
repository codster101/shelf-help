import NewOrderWrapper from './new_order_wrapper';
import { inventoryManager } from './inventory_manager';
import ProductSelect from './product_select';


export default async function Home() {

  // const { data, error } = dbConnection.from("Inventory").select("*");

  // if (error) {
  //   console.error(error);
  //   return <div>Error Loading Inventory</div>
  // }

  const data = await inventoryManager.getAll();

  return (
    <>
      <h1 className="title">Shelf-Help</h1>
      <NewOrderWrapper />
      <div className="inventory-table">
        <div className="inventory-row table-header">
          <p className="inventory-field">Product</p>
          <p className="inventory-field">Price</p>
          <p className="inventory-field">Quantity</p>
        </div>
        {data?.map((row) => (
          <div key={row.id} className="inventory-row inventory-entry">
            <p className="inventory-field">{row.product}</p>
            <p className="inventory-field">{row.price.toLocaleString("en", { style: "currency", currency: "USD" })}</p>
            <input className="inventory-field" type="number" defaultValue={row.quantity == null ? 0 : row.quantity} />
          </div>
        ))}
      </div>
    </>
  );
}
