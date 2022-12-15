/* values for _id and description will be passed as variables when query will be used in the controller. These queries are totally valid and will work if executed in psql cli. */

--reset servers
DROP TABLE IF EXISTS perntodo;

--create a new databse for perntodo
CREATE DATABASE perntodo;

--create a new database for tasks, inside the perntodo db
CREATE TABLE todos (
  _id SERIAL PRIMARY KEY,
  description VARCHAR(255) NOT NULL
);

--select everything from todos table
SELECT * FROM todos;

--select one item from table based on id
SELECT * FROM todos WHERE _id = 2;

--update one item from table based on id
UPDATE todos
SET description = "Updated task description"
WHERE _id = 2;

--delete one todo based on id
DELETE FROM todos WHERE _id = 2;

