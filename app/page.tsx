'use client'

import { useRouter } from "next/navigation";
import { SubmitEvent, useState } from "react";

export default function LoginPage() {

	const [username, setUsername] = useState('');
	const [password, setPassword] = useState('');

	const router = useRouter();

	async function processLoginAttempt(event: SubmitEvent<HTMLFormElement>) {
		event.preventDefault();

		try {
			const response = await fetch('/api/auth', {
				method: 'POST',
				headers: { 'Content-Type': 'application/json' },
				body: JSON.stringify({ username, password }),
			}); if (!response.ok) {
				throw new Error(`Response status: ${response.status}`);
			}

			router.push('/inventory');
		}
		catch (e) {
			console.log("error in authenticaiton api");
			console.error(e);
			alert("Incorrect username or password");
		}

	}

	return (
		<>
			<div className="min-h-screen flex items-center justify-center px-4">
				<div className="w-full max-w-sm flex flex-col items-center text-center">
					<h1 className="text-3xl font-semibold text-foreground font-serif">
						Welcome
					</h1>
					<p className="mt-2 text-sm text-foreground">
						Sign in to start your shelf help journey
					</p>

					<form onSubmit={processLoginAttempt} className="w-full mt-8 flex flex-col gap-4">
						<input
							type="text"
							value={username}
							onChange={(e) => setUsername(e.target.value)}
							placeholder="Username"
							className="w-full px-4 py-2.5 border border-border text-foreground"
						/>
						<input
							type="password"
							value={password}
							onChange={(e) => setPassword(e.target.value)}
							placeholder="Password"
							className="w-full px-4 py-2.5 border border-border text-foreground"
						/>
						<button
							type="submit"
							className="w-full mt-2 py-2.5 font-medium hover:border border-border focus:bg-border"
						>
							Sign in
						</button>
					</form>
				</div>
			</div>
		</>
	);
}
