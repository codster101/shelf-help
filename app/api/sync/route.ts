import Sync from '@/app/product_sync';
export const dynamic = 'force-dynamic';

export async function POST(request: Request) {
	try {
		const requestJson = await request.text();
		await Sync(requestJson);
		return new Response("Sync complete");
	} catch (err) {
		console.error("Sync failed:", err);
		return new Response("Sync failed", { status: 500 });
	}
}
