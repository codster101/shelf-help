alter table "public"."Customers" alter column "email" set not null;

alter table "public"."Inventory" alter column "price" set not null;

alter table "public"."Inventory" alter column "quantity" set not null;

alter table "public"."Items Ordered" add column "product_id" bigint not null;

alter table "public"."Items Ordered" alter column "order_id" set not null;

alter table "public"."Items Ordered" alter column "price" set not null;

alter table "public"."Items Ordered" alter column "quantity" set not null;

alter table "public"."Orders" alter column "customer_id" set not null;

alter table "public"."Items Ordered" add constraint "Items Ordered_product_id_fkey" FOREIGN KEY (product_id) REFERENCES public."Inventory"(id) not valid;

alter table "public"."Items Ordered" validate constraint "Items Ordered_product_id_fkey";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.decrement_quantities(items jsonb)
 RETURNS void
 LANGUAGE sql
AS $function$
  update "Inventory" as inv
  set quantity = inv.quantity - (item->>'quantity')::int
  from jsonb_array_elements(items) as item
  where inv.id = (item->>'id')::int;
$function$
;

CREATE OR REPLACE FUNCTION public.decrement_quantities(row_ids integer[], amount integer)
 RETURNS void
 LANGUAGE sql
AS $function$
  update "Inventory"
  set quantity = quantity - amount
  where id = any(row_ids);
$function$
;


  create policy "Enable update access for all users"
  on "public"."Inventory"
  as permissive
  for update
  to public
using (true);



  create policy "Enable insert access for all users"
  on "public"."Items Ordered"
  as permissive
  for insert
  to public
with check (true);



  create policy "Enable insert access for all users"
  on "public"."Orders"
  as permissive
  for insert
  to public
with check (true);




