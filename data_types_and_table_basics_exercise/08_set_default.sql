/*
To maintain data accuracy and reliability in the table, it is necessary to establish specific rules. By default, columns allow NULL values. To enforce the columns to disallow NULL values, the following rules should be implemented:
    "age" - should have a DEFAULT 0;
    "name" and "code" - should have an empty string as the default value;
*/


ALTER TABLE minions_info
ALTER COLUMN age SET DEFAULT 0,
ALTER COLUMN name SET DEFAULT '',
ALTER COLUMN code SET DEFAULT '';