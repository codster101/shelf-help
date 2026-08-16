import Sync from '@/app/product_sync';
export const dynamic = 'force-dynamic';

export function GET() {
	Sync();
	return new Response("Sync");
}
