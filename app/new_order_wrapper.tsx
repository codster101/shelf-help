'use client'

import { useState } from 'react';
import NewOrderButton from './new_order_button';
import OrderMenu from './order_menu';

export default function NewOrderWrapper() {
	const [isMenuOpen, setMenuOpen] = useState(false);

	return (
		<>
			<NewOrderButton showMenu={setMenuOpen} />
			<OrderMenu isOpen={isMenuOpen} closeMenu={() => { console.log("close"); setMenuOpen(false) }} />
		</>
	);
}
