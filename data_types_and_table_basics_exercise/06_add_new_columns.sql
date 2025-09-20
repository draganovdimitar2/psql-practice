/*
Add two new columns with the following data:
    "email" - with a max length of 20 characters;
    "equipped" - state of true or false;
*/


ALTER TABLE minions_info
ADD COLUMN email VARCHAR(20),
ADD COLUMN equipped BOOLEAN NOT NULL;