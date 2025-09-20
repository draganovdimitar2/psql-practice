/* 
As Gru builds a new weapon, he must delegate responsibilities to the Minions and give them tasks. For this reason, you need to update the table by adding new columns:
    "code" - represents the place where the Minion works and is exactly 4 characters long;
    "task" - text with no length limit;
    "salary" - specify to the third decimal place and has 8 digits;
*/

ALTER TABLE minions_info
ADD COLUMN code CHAR(4),
ADD COLUMN task TEXT,
ADD COLUMN salary DECIMAL(8, 3);