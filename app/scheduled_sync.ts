
startSync();

async function startSync() {
	try {
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
		// await fetch("http://shelf-help-sable.vercel.app/api/sync", {
		// 	method: "POST",
		// 	body: result
		// });
		await fetch("http://localhost:3000/api/sync", {
			method: "POST",
			body: result
		});
	} catch (e) {
		throw e;
	}
}
