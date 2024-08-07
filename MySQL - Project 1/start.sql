SELECT *
FROM goodreads
WHERE Author = 'George Orwell'
;

SELECT *
FROM goodreads
WHERE `Year Published` > 2000
;

SELECT *
FROM goodreads
WHERE gender = 'female'
OR Origin = 'Malaysia'
;

select *
from goodreads
where Title LIKE '%del%';
;

select * 
from goodreads
where Origin LIKE 'J____';
