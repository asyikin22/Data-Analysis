-- group by
select genre, AVG(pages), MAX(pages), MIN(pages)
from goodreads
GROUP BY genre;

-- order by
select *
from goodreads
ORDER BY author;

select * 
from goodreads
ORDER BY author DESC;

select *
from goodreads
ORDER BY gender, pages;

-- Limit
select * 
from goodreads
order by pages DESC
LIMIT 10;

ALTER TABLE goodreads
MODIFY Pages INT
AFTER  Author;

SELECT LENGTH ('Asyikin');

SELECT AUTHOR, LENGTH(Author)
from goodreads;

SELECT AUTHOR, UPPER(Author)
from goodreads;

-- select author, REPLACE (author, 'a', 'x')
-- from goodreads;

SELECT LOCATE ('Y', 'Asyikin');

select author, LOCATE ('George', author)
from goodreads;

select Author, Origin, Language,
CONCAT(Origin, " ", Language) AS combined
from goodreads
LIMIT 5;

SELECT Author, title, `Year Published`,
CASE
	WHEN `Year Published` > 2000 THEN 'New'
    WHEN `Year Published` BETWEEN 1900 and 2000 THEN 'Not very new'
    WHEN `Year Published` < 1900 THEN 'Very Old'
END AS Book_Age
FROM goodreads;
