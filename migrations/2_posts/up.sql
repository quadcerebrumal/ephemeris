CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE "posts" (
    "id" SERIAL PRIMARY KEY,
    "author" TEXT NOT NULL REFERENCES "users" ("username") ON DELETE CASCADE ON UPDATE CASCADE,
    "title" VARCHAR(100) NOT NULL,
    "subtitle" VARCHAR(140) NOT NULL,
    "body" TEXT NOT NULL,
    "created_at" TIMESTAMP NOT NULL DEFAULT current_timestamp,
    "updated_at" TIMESTAMP
);

SELECT diesel_manage_updated_at('posts');
