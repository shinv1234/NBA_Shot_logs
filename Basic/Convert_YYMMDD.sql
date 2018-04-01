WITH log1 AS (
SELECT 
   *, 
   CASE
      WHEN LEFT(matchup, 3)='JAN' THEN 1
      WHEN LEFT(matchup, 3)='FEB' THEN 2
	  WHEN LEFT(matchup, 3)='MAR' THEN 3
      WHEN LEFT(matchup, 3)='APR' THEN 4
      WHEN LEFT(matchup, 3)='MAY' THEN 5	  
      WHEN LEFT(matchup, 3)='JUN' THEN 6
	  WHEN LEFT(matchup, 3)='JUL' THEN 7  
      WHEN LEFT(matchup, 3)='AUG' THEN 8
      WHEN LEFT(matchup, 3)='SEP' THEN 9 
      WHEN LEFT(matchup, 3)='OCT' THEN 10
	  WHEN LEFT(matchup, 3)='NOV' THEN 11  
	  WHEN LEFT(matchup, 3)='DEC' THEN 12
      ELSE NULL
   END AS Month, 
   CAST(RIGHT(LEFT(matchup, 6),2) AS int) AS Day,
   CAST(RIGHT(LEFT(matchup, 12),4) AS int) AS Year
FROM nba_shot_logs)

SELECT * FROM log1 ORDER BY Year, Month, Day
;