SELECT name, birthplace FROM artist
	WHERE EXTRACT(year FROM BirthDate) > 1880 AND EXTRACT(year FROM BirthDate) < 1930;