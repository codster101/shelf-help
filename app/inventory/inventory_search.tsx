'use client'

import { Tables } from "@/database.types";
import { ChangeEvent, useState } from "react";

export default function InventorySearch({ addToOrder }: { addToOrder: (selectedId: number) => void }) {
	const [searchInput, updateSearchInput] = useState("default value");
	const [searchResult, updateSearchResult] = useState<Tables<"Inventory">[]>([]);
	const [areResultsHidden, setResultsHidden] = useState(true);

	async function handleChangeSearchInput(event: ChangeEvent<HTMLInputElement, HTMLInputElement>) {
		updateSearchInput(event.target.value);
		// Query the database for any products starting with input
		getProductMatches(event.target.value);

		// when fetch returns ensure the current input = the input from the fetch
		// Then return the results
	}

	async function getProductMatches(target: string) {
		try {
			const params = new URLSearchParams();
			params.append("target", target);

			const response = await fetch(`api/db/inventory?${params}`);

			if (!response.ok) {
				throw new Error(`Response status: ${response.status}`);
			}

			const data = await response.json();

			updateSearchResult(data);
			setResultsHidden(false);
		}
		catch (error) {
			console.log(error);
			throw new Error('Could not load the inventory from the database');
		}
	}

	return (
		<div className="mt-5">
			<p className="inline text-base font-semibold">Add Item: </p>
			<div className="inline relative">
				<input className="w-50 border-1 border-border" type="search"
					onChange={handleChangeSearchInput} onFocus={() => getProductMatches("")}
					onBlur={() => { setResultsHidden(true) }} />
				<div className="absolute inset-x-0 top-6 w-50 border-1 border-border z-5"
					hidden={areResultsHidden} onBlur={() => { setResultsHidden(true) }}>
					<ul className="">
						{searchResult.map((product) => (
							<li key={product.id}
								className="indent-4 bg-card hover:bg-background"
								onMouseDown={() => addToOrder(product.id)}>
								{product.product}
							</li>
						))}
					</ul>
				</div>
			</div>
		</div>
	);
}
