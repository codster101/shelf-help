import * as cheerio from 'cheerio';
import { inventoryManager } from './db/inventory_manager';

export default async function Sync(data: string) {
	const $ = cheerio.load(data);

	let tile = $('.grid-tile-wrapper:first');

	let products: { sku: number, product: string, price: number }[] = [];

	while (tile.length != 0) {
		const product = tile.children('.product');
		console.log(product);

		const sku = product.children().attr('data-gtm-product-variant-id')?.split('US')[1];
		const name = product.children().attr('data-gtm-product-name')!;
		const price = product.children().attr('data-gtm-product-price');

		if (!sku || !name || !price) {
			console.warn(`Unable to parse products in inventory sync: ${sku} ${name} ${price}`);
			tile = tile.next('.grid-tile-wrapper');
			continue;
		}

		if (!Number.parseInt(sku) || !Number.parseInt(price)) {
			console.warn(`Unable to parse products in inventory sync: ${sku} ${name} ${price}`);
			tile = tile.next('.grid-tile-wrapper');
			continue;
		}

		const productInfo = {
			'sku': Number.parseInt(sku),
			'product': name,
			'price': Number.parseFloat(price)
		};

		products.push(productInfo);
		tile = tile.next('.grid-tile-wrapper');
	}

	console.log(products.length);
	console.log(products);

	inventoryManager.updateInventory(products);
}
