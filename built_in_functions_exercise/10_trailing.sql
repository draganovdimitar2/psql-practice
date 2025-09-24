-- The TRIM() function also has another flag, which can help you remove trailing spaces from the "continent_name" values.


SELECT 
	LTRIM(peak_name, 'M') AS "left_trim",
    RTRIM(peak_name, 'm') AS 'right_trim'
FROM
	peaks;