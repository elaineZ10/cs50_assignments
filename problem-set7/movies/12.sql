SELECT title FROM movies
JOIN people ON people.id = stars.person_id
JOIN stars ON movies.id = stars.movie_id
WHERE people.name = 'Bradley Cooper' AND title IN
(SELECT title FROM movies
JOIN people ON people.id = stars.person_id
JOIN stars ON movies.id = stars.movie_id
WHERE people.name = 'Jennifer Lawrence');



