SELECT *
FROM movies;

SELECT *
FROM people;

SELECT *
FROM stars;

SELECT *
FROM people
WHERE name = 'Kevin Bacon';

SELECT *
FROM stars
	JOIN movies ON movies.id = stars.movie_id
WHERE stars.person_id = 102;

SELECT *
FROM stars
	JOIN movies ON movies.id = stars.movie_id
WHERE stars.person_id = 9323132;

SELECT title,
	year,
	rating
FROM movies
	JOIN stars ON movies.id = stars.movie_id
	JOIN people ON stars.person_id = people.id
	JOIN ratings ON movies.id = ratings.movie_id
WHERE name = 'Kevin Bacon'
ORDER BY rating DESC;

INSERT INTO people (name, birth)
VALUES ('Josh', 1984);

DELETE FROM people
WHERE id = (
		SELECT id
		FROM people
		WHERE (
				name = 'Josh'
				AND birth = 1984
			)
	);
