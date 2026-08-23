import NewOrderWrapper from './new_order_wrapper';
import { inventoryManager } from '@/app/db/inventory_manager';
import Link from 'next/link';
import { redirect } from 'next/navigation';
import NewProductWrapper from './new_product_wrapper';

export const dynamic = 'force-dynamic';

export default async function Home() {

  const data = await inventoryManager.getAll();

  // <Link href="/orders/" className='w-full p-2 font-semibold'>Customers</Link>
  return (
    <>
      <div className='flex bg-card'>
        <div className='w-1/8 flex flex-col bg-card border-r-border border-r-1'>
          <h1 className="font-serif text-xl/[1.2] font-semibold text-foreground p-4 border-b-border border-b-1">Shelf-Help</h1>
          <div className=' flex flex-col border-b-border border-b-1'>
            <Link href="/inventory/" className='w-full p-2 bg-background font-semibold'>Inventory</Link>
            <Link href="/orders/" className='w-full p-2 font-semibold'>Orders</Link>
          </div>
          <NewOrderWrapper />
        </div>
        <div className='w-7/8 bg-card'>
          <div className='h-30 p-5'>
            <h1 className="font-serif text-2xl/[1.2] font-semibold text-foreground">Inventory</h1>
          </div>
          <NewProductWrapper />
          <div className="px-5 w-full bg-background border-t-border border-t-1 h-full">
            <div className="grid grid-cols-[.5fr_.25fr_.25fr] gap-2 items-center border-b-secondary border-b-1 p-2 border-b-border border-b-1 text-xs font-semibold text-primary-foreground uppercase tracking-[.025em] p-2">
              <p className="w-1/3">Product</p>
              <p className="w-1/3">Price</p>
              <p className="w-1/3">Quantity</p>
            </div>
            {data?.map((row) => (
              <div key={row.id} className="grid grid-cols-[.5fr_.25fr_.25fr] gap-2 items-center border-b-secondary border-b-1 p-2">
                <div>
                  <span className="w-1/3 font-medium text-[14px]">
                    {row.product}
                  </span>
                  <span className='ml-5 text-primary-foreground font-xs italic'>{row.sku}</span>
                </div>
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
