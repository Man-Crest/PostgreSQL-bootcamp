SELECT movie_name,ROW_NUMBER() OVER
(
    ORDER BY movie_length DESC
) FROM movies

