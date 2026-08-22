CREATE UNIQUE INDEX "Inventory_sku_key" ON public."Inventory" USING btree (sku);

alter table "public"."Inventory" add constraint "Inventory_sku_key" UNIQUE using index "Inventory_sku_key";



