create database IPL_Analysis;
use IPL_Analysis;
SELECT COUNT(*) AS total_matches
FROM matches_cleaned;

select * from matches_cleaned;



## Total Matches

SELECT COUNT(*) AS total_matches
FROM matches_cleaned;



## Number of Teams

SELECT COUNT(DISTINCT team1) AS total_teams
FROM matches_cleaned;


## Team with Most Wins

SELECT
    winner,
    COUNT(*) AS wins
FROM matches_cleaned
WHERE winner <> 'No Result'
GROUP BY winner
ORDER BY wins DESC;



## Matches Played by Season

select season , 
count(*) as total_matches
from matches_cleaned
group by season
order by season;



## Top Venues by Matches Hosted

select venue,
count(*) as matches_hosted 
from matches_cleaned
group by venue
order by matches_hosted DESC;



## Toss Impact Analysis

select toss_match_win,
count(*) as matches 
from matches_cleaned
group by toss_match_win;




##Most Player of the Match Awards

select player_of_match,
count(*) as awards
from matches_cleaned
where player_of_match <> 'No Award'
group by player_of_match
order by awards DESC
limit 10;




## Highest Wins by Venue

select winner, venue,
count(*) as wins 
from matches_cleaned 
where winner <> 'No Result'
group by winner, venue
order by wins DESC;
