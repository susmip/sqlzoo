-- Name and capital have the same length

SELECT name, capital
  FROM world
 WHERE LEN(name)=LEN(capital);
 
 -- Matching name and capital
 
 SELECT name, capital
FROM world
where LEFT(name,1)=LEFT(capital,1);


-- All the vowels
SELECT name
   FROM world
WHERE name like '%a%' and 
name like '%e%' and 
name like '%i%' and
name like '%o%' and 
name like '%u%' and 
name not like '% %';
