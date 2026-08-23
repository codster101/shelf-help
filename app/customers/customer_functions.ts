import { Tables } from '@/database.types';

export function customerName(customer: Tables<'Customers'>) {
	if (!customer) return "";

	return customer.first_name + " " + customer.last_name;
}

export function customerAddressLine(customer: Tables<'Customers'>) {
	if (!customer) return "";

	if (!customer.address_line_1) {
		return "";
	}

	const address_line_2 = customer.address_line_2 ? customer.address_line_2 : "";

	return `${customer.address_line_1} ${address_line_2}`;
}

export function customerCityState(customer: Tables<'Customers'>) {
	if (!customer) return "";

	if (!customer.address_line_1) {
		return "";
	}

	if (!customer.city && !customer.state) {
		return "";
	}

	if (!customer.city) {
		return `${customer.state}`;
	}

	if (!customer.state) {
		return `${customer.city}`;
	}

	return `${customer.city}, ${customer.state}`;
}

export function customerZipCountry(customer: Tables<'Customers'>) {
	if (!customer) return "";

	if (!customer.address_line_1 || !customer.zip_code) {
		return "";
	}

	const country = customer.country ? customer.country : "";
	return `${customer.zip_code} ${country}`;
}
