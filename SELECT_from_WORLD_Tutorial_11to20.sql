-- Name and capital have the same length

SELECT name, capital
  FROM world
 WHERE LEN(name)=LEN(capital);
 
 -- Matching name and capital
 
 SELECT name, capital
FROM world
where LEFT(name,1)=LEFT(capital,1);
