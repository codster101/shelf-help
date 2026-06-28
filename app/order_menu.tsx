'use client'

import { useEffect } from 'react';

export default function OrderMenu({ isOpen }: { isOpen: boolean }) {

	let isHidden = true;

	useEffect(() => {
		isHidden = !isOpen;
		console.log(isHidden);
	},
		[isOpen]);

	return (
		<div hidden={isHidden}>
			<h1>New Order</h1>
		</div>
	);
}
