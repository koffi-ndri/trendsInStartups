-- Task 1:
SELECT * FROM startups;
-- The startups table ten columns:

--     name
--     location
--     category
--     employees
--     raised
--     valuation
--     founded
--     stage
--     ceo
--     info

-- Task 2:
SELECT COUNT(*)
FROM startups;

-- Task 3:
SELECT SUM(valuation)
FROM startups;

-- Task 4:
SELECT MAX(raised)
FROM startups;

-- Task 5:
SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

-- Task 6:
SELECT MIN(founded)
FROM startups;

-- Task 7:
SELECT AVG(valuation)
FROM startups;

-- Task 8:
SELECT category, AVG(valuation)
FROM startups
GROUP BY category;

-- Task 9:
SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category;

-- Task 10:
SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category
ORDER BY AVG(valuation) DESC;

-- Task 11:
SELECT category, COUNT(*)
FROM startups
GROUP BY category;

-- Task 12:
SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3;

-- Task 13:
SELECT location, AVG(employees)
FROM startups
GROUP BY location;

-- Task 14:
SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;