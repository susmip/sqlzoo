-- Modify it to show the matchid and player name for all goals scored by Germany. To identify German players, check for: teamid = 'GER'
SELECT goal.matchid,goal.player FROM goal
join eteam on eteam.id=goal.teamid where goal.teamid='GER';

--Show id, stadium, team1, team2 for just game 1012 
select distinct game.id,game.stadium,game.team1,game.team2 from game
join goal on goal.matchid=game.id where game.id=1012;

--Modify it to show the player, teamid, stadium and mdate for every German goal.
SELECT goal.player,goal.teamid,game.stadium,game.mdate
  FROM game JOIN goal ON game.id=goal.matchid where goal.teamid='GER';
 
-- Show the team1, team2 and player for every goal scored by a player called Mario player LIKE 'Mario%'
select game.team1,game.team2,goal.player from game
join goal on goal.matchid=game.id where goal.player like 'Mario%';

-- Show player, teamid, coach, gtime for all goals scored in the first 10 minutes gtime<=10
SELECT goal.player, goal.teamid,eteam.coach,goal.gtime
  FROM goal join eteam on goal.teamid=eteam.id
 WHERE goal.gtime<=10;
 
 --List the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.
 select game.mdate,eteam.teamname from game
join eteam on game.team1=eteam.id where eteam.coach='Fernando Santos';

--List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw'
select goal.player from goal 
join game on game.id=goal.matchid
where game.stadium='National Stadium, Warsaw';

--Instead show the name of all players who scored a goal against Germany.
select distinct goal.player from goal
join game on
 game.id=goal.matchid where 
(game.team1='GER' or game.team2='GER') and goal.teamid<>'GER';



-- Show teamname and the total number of goals scored.

select eteam.teamname,count(*) from goal 
join eteam on goal.teamid=eteam.id
group by eteam.teamname;




-- Show the stadium and the number of goals scored in each stadium.
select game.stadium,count(*) from game join goal on
goal.matchid=game.id group by stadium;
