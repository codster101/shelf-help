create or replace function decrement_quantities(items jsonb)
returns void as $$
  update "Inventory" as inv
  set quantity = inv.quantity - (item->>'quantity')::int
  from jsonb_array_elements(items) as item
  where inv.id = (item->>'id')::int;
$$ language sql;