'use client'

import { useState } from 'react';
import NewOrderButton from './new_order_button';
import OrderMenu from './order_menu';
import { useRouter } from 'next/navigation';

export default function NewOrderWrapper() {
	const [isMenuOpen, setMenuOpen] = useState(false);
	const [instanceKey, setKey] = useState(0);

	const router = useRouter();

	function closeMenu() {
		router.refresh();
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
