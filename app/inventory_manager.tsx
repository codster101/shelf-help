import { ConnectToDb } from './database_connection';

export const inventoryManager = {
	connection: ConnectToDb(),
	async getAll() {


		const { data, error } = await this.connection.from('Inventory').select("*");

		if (error) {
			throw new Error(error.message);
		}


		return data;
	},
	async getAllNames() {
		const { data, error } = await this.connection.from("Inventory").select("Product");

		if (error) {
			throw new Error(error.message);
		}

		return data;
	}
}
