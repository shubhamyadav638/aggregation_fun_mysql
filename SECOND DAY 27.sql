create database employee;
use employee;

SELECT 
    *
FROM
    my_uber_drives_2016;
-- AS used only column not work as table
SELECT 
    *
FROM
    my_uber_drives_2016 AS uber;
SELECT 
    *
FROM
    uber;

-- aggregation function 
-- MAX, MIN,COUNT,SUM,AVG

SELECT 
    MAX(miles)
FROM
    my_uber_drives_2016;
-- WHAT IS THE TOTAL COUNT OF RIDES ?
SELECT 
    COUNT(miles)
FROM
    my_uber_drives_2016;
-- WHAT IS THE SUM OF TOTAL DISTANCE?
SELECT 
    SUM(miles)
FROM
    my_uber_drives_2016;
-- WHAT IS THE AVG MILES TRAVELLED FOR THE PURPOSE OF MEETING ?
select avg(miles) from my_uber_drives_2016 where PURPOSE = "meeting"

select avg(miles) from my_uber_drives_2016 ;



-- india_election_2014

use employee;

-- What are the different party available in election.

select distinct(party) from india_election_2014;

select count(distinct(party)) from india_election_2014;

select count(distinct(party)) as party_name from india_election_2014;

-- What is max vote and name that contendor.
select max(votes) from india_election_2014;

select WinningCandidate,max(votes) from india_election_2014;

SELECT 
    WinningCandidate, Votes
FROM
    india_election_2014
WHERE
    Votes = (SELECT 
            MAX(Votes)
        FROM
            india_election_2014);

-- Who is the contendor from UP & Rajasthan.
select WinningCandidate from india_election_2014;

select WinningCandidate from india_election_2014 where state = "uttar pradesh";

select WinningCandidate, state from india_election_2014 where state = "uttar pradesh";

select WinningCandidate, state from india_election_2014 where state = "uttar pradesh" or state="Rajasthan";
-- WHich PC name win the election with highest margin.

SELECT PCName, WinningCandidate, MAX(Margin) AS HighestMargin
FROM india_election_2014
GROUP BY PCName, WinningCandidate
ORDER BY HighestMargin DESC
LIMIT 1;

-- What is max number of votes.
select max(votes) from india_election_2014;
-- What is min number of votes.
select min(votes) from india_election_2014;