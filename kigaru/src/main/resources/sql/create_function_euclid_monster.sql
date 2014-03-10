CREATE OR REPLACE FUNCTION euclid_monster(integer, integer, integer, integer) RETURNS VARCHAR(30) AS $$
	SELECT name FROM monster
	ORDER BY (1 /(1 + sqrt(
			pow(melancholy - $1,2) +
			pow(sad - $2,2) +
			pow(worry - $3,2) +
			pow(angry - $4,2)
			))) DESC
	LIMIT 1;
$$ LANGUAGE SQL;