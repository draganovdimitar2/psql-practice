/* 
As part of a database of words for a language-learning app, you need to create a function that will check if a word is composed of a given 
set of letters. The function should return true if the word can be formed from the set of letters, and false otherwise.
Your task is to create the function "fn_is_word_comprised" with the following requirements:
*	The function should take two input parameters: "set_of_letters" and "word". Both parameters should be of type VARCHAR(50);
*	The function should return a BOOLEAN value indicating whether the word can be composed from the given set of letters;
*	The function should be case-insensitive, i.e., it should treat upper-case and lower-case letters as the same;
*	The function should be able to handle words containing spaces or special characters but should ignore them when checking if the word 
can be composed of the set of letters.
*/


CREATE OR REPLACE FUNCTION fn_is_word_comprised(
	set_of_letters VARCHAR(50),
	word VARCHAR(50)
)
RETURNS BOOLEAN
AS 
$$
BEGIN
	RETURN TRIM(LOWER(word), LOWER(set_of_letters)) = '';
END;
$$
LANGUAGE plpgsql;


-- CREATE OR REPLACE FUNCTION fn_is_word_comprised(
-- 	set_of_letters VARCHAR(50),
-- 	word VARCHAR(50)
-- )
-- RETURNS BOOLEAN
-- AS 
-- $$
-- DECLARE 
-- 	i INT;
-- 	letter CHAR(1);
-- BEGIN
-- 	FOR i in 1..LENGTH(word) LOOP
-- 		letter := SUBSTRING(LOWER(word), i, 1);

-- 		IF POSITION (letter IN LOWER(set_of_letters)) = 0 THEN
-- 			RETURN FALSE;
-- 		END IF;
-- 	END LOOP;

-- 	RETURN TRUE;
-- END;
-- $$
-- LANGUAGE plpgsql;