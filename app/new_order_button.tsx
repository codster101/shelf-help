'use client'

export default function NewOrderButton({ showMenu }: { showMenu: (isOpen: boolean) => void }) {

	return (
		<button className='right' onClick={() => { showMenu(true); }}>New Order</button>
	);
}
