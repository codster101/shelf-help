import NewOrderWrapper from '@/app/inventory/new_order_wrapper';
import { inventoryManager } from '@/app/db/inventory_manager';
import Link from 'next/link';
import { redirect } from 'next/navigation';
import NewProductWrapper from '@/app/inventory/new_product_wrapper';
import { customersManager } from '../db/customers_manager';
import { customerAddressLine, customerCityState, customerName, customerZipCountry } from './customer_functions';

export const dynamic = 'force-dynamic';

export default async function Home() {

  const data = await customersManager.getAll();

  return (
    <>
      <div className='flex bg-card'>
        <div className='w-1/8 flex flex-col bg-card border-r-border border-r-1'>
          <h1 className="font-serif text-xl/[1.2] font-semibold text-foreground p-4 border-b-border border-b-1">Shelf-Help</h1>
          <div className=' flex flex-col border-b-border border-b-1'>
            <Link href="/inventory/" className='w-full p-2 font-semibold'>Inventory</Link>
            <Link href="/orders/" className='w-full p-2 font-semibold'>Orders</Link>
            <Link href="/orders/" className='w-full p-2 bg-background font-semibold'>Customers</Link>
          </div>
          <NewOrderWrapper />
        </div>
        <div className='w-7/8 bg-card'>
          <div className='h-30 p-5'>
            <h1 className="font-serif text-2xl/[1.2] font-semibold text-foreground">Customers</h1>
          </div>
          <NewProductWrapper />
          <div className="px-5 w-full bg-background border-t-border border-t-1 h-full">
            <div className="grid grid-cols-[.20fr_.20fr_.20fr_.20fr_.20fr] gap-2 items-center border-b-secondary border-b-1 p-2 border-b-border border-b-1 text-xs font-semibold text-primary-foreground uppercase tracking-[.025em] p-2">
              <p className="">Name</p>
              <p className="">Email</p>
              <p className="">Birthday</p>
              <p className="">Phone Number</p>
              <p className="">Address</p>
            </div>
            {data?.map((row) => (
              <div key={row.id} className="grid grid-cols-[.20fr_.20fr_.20fr_.20fr_.20fr] gap-2 items-center border-b-secondary border-b-1 p-2">
                <p className="font-semibold">{customerName(row)}</p>
                <p className=''>{row.email}</p>
                <p className="">{row.birthday}</p>
                <p className="">{row.phone_number}</p>
                <p className="">
                  {customerAddressLine(row)}<br />
                  {customerCityState(row)}<br />
                  {customerZipCountry(row)}<br />
                </p>
              </div>
            ))}
          </div>
        </div>
      </div>
    </>
  );
}
