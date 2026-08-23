'use client'

import { useState } from "react";
import { GetPriceSummary, Order } from "@/app/types/order";
import { customerName } from "../customers/customer_functions";

export function OrderTable({ orders }: { orders: Order[] }) {
	const [expandedId, setExpandedId] = useState<number | null>(null);
	return (
		<div>
			{orders.map((order) => {
				let isExpanded = expandedId == order.id;
				return (
					<div key={order.id} className="grid grid-cols-[1fr] gap-2 items-center border-b-secondary border-b-1 p-2">
						<div className='grid grid-cols-[.5fr_.25fr_.25fr] gap-2 items-center border-b-secondary border-b-1 p-2'>
							<div className="flex">
								<button className='px-1 font-semibold text-primary-foreground'
									onClick={() => setExpandedId(isExpanded ? null : order.id!)}>
									<span className=""> ▶</span>
								</button>
								<p className="font-medium text-[14px]">
									{customerName(order.customer!)}
								</p>
							</div>
							<p className="">
								{order.date_ordered}
							</p>
							<p className="">
								{GetPriceSummary(order).total.toLocaleString("en",
									{ style: "currency", currency: "USD" }
								)}
							</p>
						</div>
						{isExpanded && <div className="mt-5 px-5 w-full bg-background border-t-border border-t-1">
							{order.items.map((item) => (
								<div key={item.id} className='flex border-b-secondary border-b-1 p-2'>
									<p className='w-1/3 font-medium text-[14px]'>{item.product}</p>
									<p className='w-1/3 mono text-[12px]'>{item.price!.toLocaleString("en", { style: "currency", currency: "USD" })}</p>
									<p className='font-medium text-[14px]'>{item.quantity!} </p>
								</div>
							))}
						</div>}
					</div>
				);
			})
			}
		</div>
	);
}
