SELECT revenues_domestic,revenues_domestic - LEAD(revenues_domestic,1) OVER (ORDER BY revenues_domestic DESC )as "diff" FROM movies_revenues

