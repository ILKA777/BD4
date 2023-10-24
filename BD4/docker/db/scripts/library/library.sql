CREATE TABLE "reader" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "surname" varchar,
  "adress" varchar,
  "return_date" date,
  "birth_date" date
);

CREATE TABLE "takes" (
  "id" int PRIMARY KEY,
  "book_copy_id" int,
  "reader_number" int
);

CREATE TABLE "book" (
  "isbn" int PRIMARY KEY,
  "year" date,
  "title" varchar,
  "author" varchar,
  "count_of_pages" int,
  "publisher_id" int
);

CREATE TABLE "book_copy" (
  "copy_id" int PRIMARY KEY,
  "book_isbn" int,
  "position" int,
  "category_id" int
);

CREATE TABLE "category" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "parent_cat" varchar
);

CREATE TABLE "publisher" (
  "id" int PRIMARY KEY,
  "adress" varchar,
  "name" varchar
);

ALTER TABLE "takes" ADD FOREIGN KEY ("book_copy_id") REFERENCES "book_copy" ("copy_id");

ALTER TABLE "takes" ADD FOREIGN KEY ("reader_number") REFERENCES "reader" ("id");

ALTER TABLE "book" ADD FOREIGN KEY ("publisher_id") REFERENCES "publisher" ("id");

ALTER TABLE "book_copy" ADD FOREIGN KEY ("category_id") REFERENCES "category" ("id");
