'use client'

import { useState } from 'react';
import NewOrderButton from './new_order_button';
import OrderMenu from './order_menu';
import { useRouter } from 'next/navigation';
import NewProductButton from './new_product_button';
import ProductMenu from './product_menu';

export default function NewProductWrapper() {
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
			<NewProductButton showMenu={setMenuOpen} />
			{isMenuOpen && (
				<ProductMenu
					key={instanceKey}
					closeMenu={closeMenu}
				/>
			)}
		</>
	);
}
