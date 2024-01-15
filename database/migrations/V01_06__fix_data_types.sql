ALTER TABLE users
ALTER COLUMN "email" TYPE varchar(255),
ALTER COLUMN "dob" TYPE timestamp,
ALTER COLUMN "user_type" TYPE varchar(255);

ALTER TABLE address
ADD COLUMN "full_address" varchar(500),
ALTER COLUMN "country" TYPE varchar(255),
ALTER COLUMN "address_alias" TYPE varchar(255),
ALTER COLUMN "details_notes" TYPE varchar(500);
