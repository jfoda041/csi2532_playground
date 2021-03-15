SELECT name, birthplace FROM artists
	WHERE EXTRACT(year FROM dateofbirth) > 1880 AND EXTRACT(year FROM dateofbirth) < 1930;