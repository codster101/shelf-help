alter table "public"."Customers" drop column "name";

alter table "public"."Customers" add column "address_line_1" text;

alter table "public"."Customers" add column "address_line_2" text;

alter table "public"."Customers" add column "birthday" text;

alter table "public"."Customers" add column "city" text;

alter table "public"."Customers" add column "country" text;

alter table "public"."Customers" add column "first_name" text not null;

alter table "public"."Customers" add column "last_name" text;

alter table "public"."Customers" add column "phone_number" text;

alter table "public"."Customers" add column "state" text;

alter table "public"."Customers" add column "zip_code" text;



