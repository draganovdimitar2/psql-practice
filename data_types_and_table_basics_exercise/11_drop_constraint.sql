-- Remove the constraint that prevents the "equipped" column from having a NULL value.


ALTER TABLE minions_info
ALTER COLUMN equipped
DROP NOT NULL;
