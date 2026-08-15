alter table "public"."Inventory" add column "sku" integer not null;

alter table "public"."Inventory" alter column "quantity" set default 0;


