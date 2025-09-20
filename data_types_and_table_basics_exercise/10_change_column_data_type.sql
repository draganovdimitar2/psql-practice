-- Change the data type of the "task" column and limit its length to 150 characters. 


ALTER TABLE minions_info
ALTER COLUMN task TYPE VARCHAR(150);