SELECT name FROM customers
    INNER JOIN likeartists ON customers.id = likeartists.customer_id
    WHERE artist_name IN(
        SELECT artist_name FROM likeartists

        INNER JOIN artists ON likeartists.artist_name = artists.name
        WHERE style = 'Renaissance')

        AND amount > 30000;