import { Tables } from "@/database.types";

export default function OrderItemsTable({ items }: { items: Tables<'Inventory'>[] }) {
	return (
		<>
		</>
	);
}

// {items.length != 0 && <div className="mt-5 px-5 w-full bg-background border-t-border border-t-1">
// 	{items.map((item) => (
// 		<div key={item.id} className='flex border-b-secondary border-b-1 p-2'>
// 			<p className='w-1/3 font-medium text-[14px]'>{item.product}</p>
// 			<p className='w-1/3 mono text-[12px]'>{item.price!.toLocaleString("en", { style: "currency", currency: "USD" })}</p>
// 			<input className='font-medium text-[14px]' type='number' name='quantity'
// 				value={item.quantity!} onChange={(event) =>
// 					updateQuantity(event, item.id)} />
// 			<button className='ml-auto px-2 border-1 border-border bg-card hover:bg-background'
// 				onClick={() => removeItemFromOrder(item)}>x</button>
// 		</div>
// 	))}
// </div>}
