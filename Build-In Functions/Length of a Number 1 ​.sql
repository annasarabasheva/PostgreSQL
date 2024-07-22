SELECT
	cast(population AS TEXT),
	length(cast(population AS TEXT)) AS "length"
FROM countries;