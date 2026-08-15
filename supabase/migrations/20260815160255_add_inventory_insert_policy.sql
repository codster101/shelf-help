
  create policy "Enable insert access for all users"
  on "public"."Inventory"
  as permissive
  for insert
  to public
with check (true);



