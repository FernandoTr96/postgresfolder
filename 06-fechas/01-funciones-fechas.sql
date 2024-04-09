-- https://www.postgresql.org/docs/8.1/functions-datetime.html

SELECT
now(),
CURRENT_DATE,
CURRENT_TIME,
date_part('minutes',now());