import { ConnectToDb } from './database_connection';

export const customersManager = {
	connection: ConnectToDb(),
	async getAll() {
		const { data, error } = await this.connection.from('Customers').select();

		if (error) {
			throw new Error(error.message);
		}

		return data;
	},
	async getCustomer(id: number) {
		const { data, error } = await this.connection.from('Customers').select().eq('id', id).single();

		if (error) {
			throw new Error(error.message);
		}

		return data;
	},
	async getAllNames() {
		const { data, error } = await this.connection.from("Customers").select("name");

		if (error) {
			throw new Error(error.message);
		}

		return data;
	},
	async getMatchingCustomers(target: string) {
		const { data, error } =
			await this.connection.from('Customers').select().ilike("name", target + '%');

		if (error) {
			throw new Error(error.message);
		}

		return data;

	}
}
