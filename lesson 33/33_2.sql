**Schema (SQLite v3.30)**

CREATE  TABLE "main"."people" ("name" TEXT, "phone" TEXT, "email" TEXT);

INSERT INTO people VALUES('Альфред Бедросов', '+7 999 010-10-00', 'alfie@gmail.com ');

INSERT INTO people VALUES('Полина Викинг', '+7 910 158-92-01', 'pollie@gmail.com ');

INSERT INTO people VALUES('Степан Миядзаки', '+7 895 150-43-11', 'stepka@gmail.com ');

CREATE  TABLE "main"."companies" ("name" TEXT);

INSERT INTO companies VALUES('Goofle');

INSERT INTO companies VALUES('Oracle');

INSERT INTO companies VALUES('Santa Claus');

ALTER TABLE "main"."people" ADD COLUMN "company_id" INTEGER;

UPDATE "main"."people" SET "company_id" = 2 WHERE  "rowid" = 1;

UPDATE "main"."people" SET "company_id" = 1 WHERE  "rowid" = 2;

UPDATE "main"."people" SET "company_id" = 3 WHERE  "rowid" = 3;

---

**Query #1**

SELECT * FROM people;

| name             | phone            | email             | company_id |
| ---------------- | ---------------- | ----------------- | ---------- |
| Альфред Бедросов | +7 999 010-10-00 | alfie@gmail.com   | 2          |
| Полина Викинг    | +7 910 158-92-01 | pollie@gmail.com  | 1          |
| Степан Миядзаки  | +7 895 150-43-11 | stepka@gmail.com  | 3          |

---
**Query #2**

SELECT * FROM companies;

| name        |
| ----------- |
| Goofle      |
| Oracle      |
| Santa Claus |

---

[View on DB Fiddle](https://www.db-fiddle.com/)
