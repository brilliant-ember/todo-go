
CREATE USER goapp;
GRANT ALL PRIVILEGES ON DATABASE todo_db to goapp;

CREATE DATABASE todo_db;

CREATE TABLE todo(id INT GENERATED ALWAYS AS IDENTITY,
 ip_address VARCHAR(200) NOT NULL, text VARCHAR(2000) NOT NULL,
 checked BOOLEAN NOT NULL, created_at timestamptz NOT NULL DEFAULT NOW());

CREATE INDEX ip_index ON todo (ip_address);