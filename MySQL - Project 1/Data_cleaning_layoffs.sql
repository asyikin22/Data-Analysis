select *,
ROW_NUMBER() OVER(
PARTITION BY company, industry, total_laid_off, percentage_laid_off, `date`) AS row_num
from layoffs_staging;

-- Create a CTE to remove duplicate
WITH duplicate_cte AS
(
select *,
ROW_NUMBER() OVER(
PARTITION BY company, location,
industry, total_laid_off, percentage_laid_off, `date`, stage, 
country, funds_raised_millions) AS row_num
from layoffs_staging
)
SELECT *
FROM duplicate_cte 
WHERE row_num > 1;

-- Create table, REMEMBER, this will only create column, NOT rows
-- CREATE TABLE `layoffs_staging2` (
--   `company` text,
--   `location` text,
--   `industry` text,
--   `total_laid_off` int DEFAULT NULL,
--   `percentage_laid_off` text,
--   `date` text,
--   `stage` text,
--   `country` text,
--   `funds_raised_millions` int DEFAULT NULL,
--   `row_num` INT
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Insert rows into layoffs_staging2

-- INSERT INTO layoffs_staging2
-- select *,
-- ROW_NUMBER() OVER(
-- PARTITION BY company, location,
-- industry, total_laid_off, percentage_laid_off, `date`, stage, 
-- country, funds_raised_millions) AS row_num
-- from layoffs_staging

-- DELETE 
-- FROM layoffs_staging2
-- WHERE row_num > 1;

-- SELECT *
-- FROM layoffs_staging2
-- WHERE row_num > 1;

select company, (TRIM(company))
from layoffs_staging2;

UPDATE layoffs_staging2
SET company = TRIM(company);

-- select DISTINCT industry
-- from layoffs_staging2
-- ORDER BY 1;

select *
from layoffs_staging2
WHERE industry like 'Crypto%';

UPDATE layoffs_staging2
SET industry = 'Crypto'
WHERE industry LIKE '%Crypto%';

-- SELECT DISTINCT industry
-- from layoffs_staging2
-- ORDER BY 1

-- SELECT DISTINCT country, TRIM(TRAILING '.' FROM country)
-- FROM layoffs_staging2
-- ORDER BY 1;

-- UPDATE layoffs_staging2
-- SET country = TRIM(TRAILING '.' FROM country)
-- WHERE country LIKE 'United States%';

-- SELECT `date`,
-- str_to_date(`date`, '%m/%d/%Y') as formatted_date
-- from layoffs_staging2;

-- UPDATE layoffs_staging2
-- SET `date` = str_to_date(`date`, '%m/%d/%Y');

SELECT `date`
from layoffs_staging2;

ALTER TABLE layoffs_staging2
MODIFY COLUMN `date` DATE;

select *
from layoffs_staging2;

-- Get rid of row_num
ALTER TABLE layoffs_staging2
DROP COLUMN row_num;

-- Show total laid off and its percentage 
select *
from layoffs_staging2
where total_laid_off IS NULL
AND percentage_laid_off IS NULL;

-- show anything where total laid off or its percentage is null/blank
-- select *
-- FROM layoffs_staging2
-- WHERE industry is null
-- or industry = '';

select *
FROM layoffs_staging2
where company = 'Airbnb';

-- 
