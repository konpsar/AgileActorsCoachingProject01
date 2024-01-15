CREATE TABLE "Users" (
  "id" int PRIMARY KEY,
  "user_name" varchar UNIQUE NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "gender" varchar,
  "dob" timestamp NOT NULL,
  "user_type" varchar NOT NULL
);
