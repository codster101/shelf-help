import { createClient } from "@/lib/supabase/server";
import { NextRequest, NextResponse } from "next/server";

export const dynamic = 'force-dynamic';

export async function POST(req: NextRequest) {
	try {
		const loginInfo: { username: string, password: string } = await req.json();
		let username = loginInfo.username;
		let password = loginInfo.password;

		if (!username || !password) {
			return NextResponse.json({ error: 'Missing username or password' }, { status: 400 });
		}

		const supabase = await createClient();
		const { data, error } = await supabase.auth.signInWithPassword({
			email: username,
			password: password
		});

		if (error) {
			alert(error.message);
			console.error('Sign-in failed:', error.message);
			return NextResponse.json({ error: error.message }, { status: 401 });
		}

		return NextResponse.json({ user: data.user });
	} catch (err) {
		console.error("Authentication failed:", err);
		return new Response("Authentication failed", { status: 500 });
	}
}
