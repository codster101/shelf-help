import { supabase } from "@/app/db/database_connection";
import { NextRequest } from "next/server";

export const dynamic = 'force-dynamic';

export async function POST(req: NextRequest) {
	try {
		const loginInfo: { username: string, password: string } = await req.json();
		let username = loginInfo.username;
		let password = loginInfo.password;
		if (username && password) {
			const { data, error } = await supabase.auth.signInWithPassword({
				email: username,
				password: password
			});

			if (error) {
				alert(error.message);
			}
			console.log(data);
		}

		return new Response("authenticated");
	} catch (err) {
		console.error("Authentication failed:", err);
		return new Response("Authentication failed", { status: 500 });
	}
}
