import { ConnectToDb } from './database_connection';

export const customersManager = {
	connection: ConnectToDb(),
	async getAll() {
		const { data, error } = await this.connection.from('Customers').select("*");

		if (error) {
			throw new Error(error.message);
		}

		return data;
	},
	async getCustomer(id: number) {
		const { data, error } = await this.connection.from('Customers').select("*").eq('id', id);

		if (error) {
			throw new Error(error.message);
		}

		if (data.length > 1) {
			throw new Error("Multiple customers with identical ids");
		}

		if (data.length == 0) {
			return data;
		}

		return data[0];
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
