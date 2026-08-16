import Sync from '@/app/product_sync';
export const dynamic = 'force-dynamic';

export async function GET() {
	try {
		await Sync();
		return new Response("Sync complete");
	} catch (err) {
		console.error("Sync failed:", err);
		return new Response("Sync failed", { status: 500 });
	}
}
