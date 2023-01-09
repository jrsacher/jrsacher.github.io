SELECT *
FROM shows;

SELECT title,
    year
FROM shows
WHERE year > 2000;

SELECT shows.title,
    ratings.rating AS user_rating
FROM shows
    JOIN ratings ON shows.id = ratings.show_id;

-- This is the same as above
SELECT title,
    rating AS user_rating
FROM shows
    JOIN ratings ON shows.id = ratings.show_id;

-- Building a complex query:
SELECT id
FROM people
WHERE name = 'Danny DeVito';

SELECT show_id
FROM stars
WHERE person_id = (
        SELECT id
        FROM people
        WHERE name = 'Danny DeVito'
    );

SELECT name
FROM people
    JOIN stars ON people.id = stars.person_id
WHERE stars.show_id IN (
        SELECT show_id
        FROM stars
        WHERE person_id = (
                SELECT id
                FROM people
                WHERE name = 'Danny DeVito'
            )
    );

SELECT name,
    title,
    year
FROM people
    JOIN stars ON people.id = stars.person_id
    JOIN shows ON shows.id = stars.show_id
WHERE stars.show_id IN (
        SELECT show_id
        FROM stars
        WHERE person_id = (
                SELECT id
                FROM people
                WHERE name = 'Danny DeVito'
            )
    )
ORDER BY year DESC,
    title,
    name;

-- What are the best-rated, highly-watched, recent shows?
SELECT *
FROM shows
    JOIN ratings ON shows.id = ratings.show_id
WHERE shows.year >= 2020
    AND ratings.rating >= 9
    AND ratings.votes >= 1000
ORDER BY ratings.rating DESC;

-- Who has starred in the most shows?
SELECT people.name,
    COUNT(shows.id) AS total_shows
FROM shows
    JOIN stars ON shows.id = stars.show_id
    JOIN people ON people.id = stars.person_id
GROUP BY people.name
HAVING total_shows > 50
ORDER BY total_shows DESC;

-- What has Snoop Dogg starred in?
SELECT shows.title,
    shows.year,
    shows.episodes,
    ratings.rating
FROM shows
    JOIN stars ON shows.id = stars.show_id
    JOIN people ON people.id = stars.person_id
    JOIN ratings ON ratings.show_id = shows.id
WHERE people.name = 'Snoop Dogg'
ORDER BY rating DESC;

-- What shows star Snoop Dogg and Martha Stewart?
SELECT *
FROM shows
WHERE id IN (
        SELECT show_id
        FROM stars
            JOIN people ON people.id = stars.person_id
        WHERE people.name = 'Snoop Dogg'
        INTERSECT
        SELECT show_id
        FROM stars
            JOIN people ON people.id = stars.person_id
        WHERE people.name = 'Martha Stewart'
    );