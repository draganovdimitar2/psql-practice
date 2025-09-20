/* 
Constraints can be specified when the table is created or afterward. Please use the syntax below to add constraints to the given columns:
ALTER TABLE <table_name>
ADD CONSTRAINT <constraint_name> <constraint_definition> (<column1>, <column2>, ... <column_n>);
Add them to the following columns:
    "id" and "email"- should be UNIQUE across all the table rows. The constraint name for this column is "unique_containt";
    "banana" - should always be a positive number and greater than 0. The constraint name for this column is " banana_check";
*/


ALTER TABLE minions_info
ADD CONSTRAINT unique_containt
UNIQUE (id, email),
ADD CONSTRAINT banana_check
CHECK (banana > 0);