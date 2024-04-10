
CREATE INDEX idx_orders_movies_revenues ON movies_revenues (revenue_id);

CREATE INDEX idx_movies_revenues_revenue_id_movie_id ON movies_revenues (revenue_id,movie_id);

-- it will not allow to insert same data because its unique indexing
CREATE UNIQUE INDEX idx_u_movies_movie_id ON movies (movie_id);

SELECT * FROM pg_indexes