CREATE TABLE "clickers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "question_id" integer, "a_count" integer, "b_count" integer, "c_count" integer, "d_count" integer, "created_at" datetime, "updated_at" datetime, "response" varchar(255) DEFAULT '');
CREATE TABLE "questions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "question" text, "a" varchar(255), "b" varchar(255), "c" varchar(255), "d" varchar(255), "answer" varchar(255), "created_at" datetime, "updated_at" datetime, "number" integer);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20110307233910');

INSERT INTO schema_migrations (version) VALUES ('20110311081459');

INSERT INTO schema_migrations (version) VALUES ('20110312021614');

INSERT INTO schema_migrations (version) VALUES ('20110316013211');