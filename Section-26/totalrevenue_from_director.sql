
WITH cte_director_revenue AS (
    SELECT d.director_id,
        SUM(
            COALESCE(mrev.revenues_domestic, 0) + COALESCE(mrev.revenues_international, 0)
        ) AS total_revenue
    FROM directors AS d
        INNER JOIN movies AS m ON m.director_id = d.director_id
        INNER JOIN movies_revenues AS mrev ON mrev.movie_id = m.movie_id
    GROUP BY d.director_id
)
SELECT *
FROM cte_director_revenue
ORDER BY director_id;


WITH cte_director_revenue_full AS (
    SELECT d.director_id,
        SUM(
            COALESCE(mrev.revenues_domestic, 0) + COALESCE(mrev.revenues_international, 0)
        ) AS total_revenue
    FROM directors AS d
        INNER JOIN movies AS m ON m.director_id = d.director_id
        INNER JOIN movies_revenues AS mrev ON mrev.movie_id = m.movie_id
    GROUP BY d.director_id
)
SELECT di.director_id,
    di.first_name,
    di.last_name,
    cte.total_revenue
FROM cte_director_revenue_full cte
    INNER JOIN directors as di ON di.director_id = cte.director_id
ORDER BY di.director_id;
