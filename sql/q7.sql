SELECT name, id FROM customers
    INNER JOIN likeartists ON customers.id = likeartists.customer_id
    WHERE artist_name = 'Picasso';