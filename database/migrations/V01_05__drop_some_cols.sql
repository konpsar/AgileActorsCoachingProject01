ALTER TABLE users
DROP COLUMN "user_name",
DROP COLUMN "gender";

ALTER TABLE address
DROP COLUMN "street",
DROP COLUMN "city",
DROP COLUMN "region",
DROP COLUMN "postal_code";