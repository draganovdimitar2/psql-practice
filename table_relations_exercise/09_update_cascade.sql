-- Revise the "countries_rivers" table by ensuring that its relationship with the "rivers" and "countries" tables is properly updated. When a row in the parent tables is updated, ensure that matching rows in the child table are also updated.


ALTER TABLE
	countries_rivers

ADD CONSTRAINT 
	countries_countries_rivers_river_id_fkey
FOREIGN KEY
	(river_id)
REFERENCES
	rivers(id)
ON UPDATE CASCADE,

ADD CONSTRAINT 
	countries_countries_rivers_country_code_fkey
FOREIGN KEY
	(country_code)
REFERENCES
	countries(country_code)
ON UPDATE CASCADE;