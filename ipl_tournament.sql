SELECT * FROM ipl

-- Single Match with each team
WITH add_index AS (
SELECT 
ROW_NUMBER() OVER() AS SlNo
, * FROM ipl
)

SELECT a1.teams AS A1_Team, a2.teams AS A2_Team FROM add_index a1
JOIN add_index a2
ON a1.slno > a2.slno

-- two matches with each team