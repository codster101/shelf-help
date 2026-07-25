import NewOrderWrapper from './new_order_wrapper';
import { inventoryManager } from './db/inventory_manager';
import Link from 'next/link';


export default async function Home() {

  const data = await inventoryManager.getAll();

  return (
    <>
      <div className='flex h-screen bg-brown-500'>
        <div className='w-1/8'>
        </div>
        <div className='w-7/8'>
          <h1 className="title">Shelf-Help</h1>
          <Link href="/orders/">Customers</Link>
          <NewOrderWrapper />
          <div className="mx-auto w-3/4">
            <div className="flex ">
              <p className="w-1/3">Product</p>
              <p className="w-1/3">Price</p>
              <p className="w-1/3">Quantity</p>
            </div>
            {data?.map((row) => (
              <div key={row.id} className="flex">
                <p className="w-1/3">
                  {row.product}
                </p>
                <p className="w-1/3">
                  {row.price!.toLocaleString("en", { style: "currency", currency: "USD" })}
                </p>
                <input className="w-1/3" type="number" defaultValue={row.quantity == null ? 0 : row.quantity} />
              </div>
            ))}
          </div>
        </div>
      </div>
    </>
  );
}
