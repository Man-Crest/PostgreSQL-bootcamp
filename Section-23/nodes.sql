EXPLAIN ANALYZE SELECT * FROM pg_am

EXPLAIN ANALYZE select * from movies WHERE movie_id='1'

SHOW max_parallel_workers_per_gather

SET max_parallel_workers_per_gather TO 0

SHOW max_parallel_maintenance_workers

SELECT pg_relation_size('movies');

SHOW seq_page_cost;

SHOW cpu_tuple_cost;

SHOW cpu_operator_cost;
