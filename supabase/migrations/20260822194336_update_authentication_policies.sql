drop policy "Enable read access for all users" on "public"."Customers";

drop policy "Enable insert access for all users" on "public"."Inventory";

drop policy "Enable read access for all users" on "public"."Inventory";

drop policy "Enable update access for all users" on "public"."Inventory";

drop policy "Enable insert access for all users" on "public"."Items Ordered";

drop policy "Enable read access for all users" on "public"."Items Ordered";

drop policy "Enable insert access for all users" on "public"."Orders";

drop policy "Enable read access for all users" on "public"."Orders";


  create policy "Enable read access for all users"
  on "public"."Customers"
  as permissive
  for select
  to authenticated
using (true);



  create policy "Enable insert access for all users"
  on "public"."Inventory"
  as permissive
  for insert
  to authenticated
with check (true);



  create policy "Enable read access for all users"
  on "public"."Inventory"
  as permissive
  for select
  to authenticated
using (true);



  create policy "Enable update access for all users"
  on "public"."Inventory"
  as permissive
  for update
  to authenticated
using (true);



  create policy "Enable insert access for all users"
  on "public"."Items Ordered"
  as permissive
  for insert
  to authenticated
with check (true);



  create policy "Enable read access for all users"
  on "public"."Items Ordered"
  as permissive
  for select
  to authenticated
using (true);



  create policy "Enable insert access for all users"
  on "public"."Orders"
  as permissive
  for insert
  to authenticated
with check (true);



  create policy "Enable read access for all users"
  on "public"."Orders"
  as permissive
  for select
  to authenticated
using (true);




