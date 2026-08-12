export { }

const response = await fetch("https://www.marykay.com/en/updategrid?cgid=root&srule=product-name-ascending&start=0&sz=10000");

if (!response.ok) {
	throw new Error(`Response status: ${response.status}`);
}

const result = await response.text();
console.log(result);
