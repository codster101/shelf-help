'use client'

export default function NewProductButton({ showMenu }: { showMenu: (isOpen: boolean) => void }) {

	return (
		<button className='p-2 font-semibold hover:bg-background m-2 border-1 border-border' onClick={() => { showMenu(true);; }}>New Product</button>
	);
}
