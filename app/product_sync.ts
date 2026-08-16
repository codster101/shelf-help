import * as cheerio from 'cheerio';
import { inventoryManager } from './db/inventory_manager';


export default async function Sync() {
	const response = await fetch("https://www.marykay.com/en/updategrid?cgid=root&srule=product-name-ascending&start=0&sz=10000", {
		headers: {
			"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0 Safari/537.36",
			"Accept": "text/html,application/xhtml+xml",
		}
	});


	if (!response.ok) {
		throw new Error(`Response status: ${response.status}`);
	}

	const result = await response.text();

	const $ = cheerio.load(result);

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
