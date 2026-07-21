'use client'

import { useState } from 'react';
import NewOrderButton from './new_order_button';
import OrderMenu from './order_menu';

export default function NewOrderWrapper() {
	const [isMenuOpen, setMenuOpen] = useState(false);
	const [instanceKey, setKey] = useState(0);

	function closeMenu() {
		setMenuOpen(false);
		setKey(prev => prev + 1);
	}
	return (
		<>
			<NewOrderButton showMenu={setMenuOpen} />
			{isMenuOpen && (
				<OrderMenu
					key={instanceKey}
					closeMenu={closeMenu}
				/>
			)}
		</>
	);
}
