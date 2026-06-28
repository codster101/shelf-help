'use client'

import { useState } from 'react';

export default function NewOrderButton({ showMenu }: { showMenu: boolean }) {

	// const [isOrderMenuOpen, OpenOrderMenu] = useState(false);

	return (
		<button className='right' onClick={() => { showMenu = !showMenu; console.log("Button Pressed: " + showMenu); }}>New Order</button>
	);
}
