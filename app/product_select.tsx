import { inventoryManager } from './inventory_manager'

export default async function ProductSelect() {
	return (
		<select>
			{(await inventoryManager.getAllNames()).map((name) => (
				<option key={name} value={name}>
					{name}
				</option>
			))};
		</select>
	);
}
