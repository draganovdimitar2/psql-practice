/*
Create type "type_mood" that contains the following set of values:
    ('happy', 'relaxed', 'stressed', 'sad')
In the table add another column "mood" of type "type_mood".
*/


CREATE TYPE type_mood AS ENUM (
	'happy', 
	'relaxed', 
	'stressed', 
	'sad'
);

ALTER TABLE minions_info
ADD COLUMN mood type_mood;