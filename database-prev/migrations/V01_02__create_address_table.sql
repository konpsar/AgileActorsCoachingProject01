CREATE TABLE "Address" (
  "id" int PRIMARY KEY,
  "user_id" int NOT NULL,
  "street" varchar NOT NULL,
  "city" varchar NOT NULL,
  "region" varchar,
  "postal_code" varchar NOT NULL,
  "country" varchar NOT NULL,
  "address_type" varchar,
  "address_alias" varchar,
  "details_notes" varchar
);