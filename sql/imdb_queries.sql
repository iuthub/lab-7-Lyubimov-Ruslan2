-- 1) What are the names of all movies released in 1995?
SELECT name FROM movies WHERE year=1995;

-- 2) How many people played a part in the movie "Lost in Translation"?
SELECT DISTINCT a.id;
FROM actors a;
JOIN roles r ON a.id = r.actor_id;
JOIN movies m ON m.id = r.movie_id;
WHERE m.name='Lost in Translation';

-- 3) What are the names of all the people who played a part in the movie "Lost in Translation"?
SELECT DISTINCT a.first_name, a.last_name;
FROM actors a;
JOIN roles r ON a.id = r.actor_id;
JOIN movies m ON m.id = r.movie_id;
WHERE m.name='Lost in Translation';

-- 4) Who directed the movie "Fight Club"?
SELECT DISTINCT d.first_name, d.last_name;
FROM directors d;
JOIN movies_directors md ON md.director_id=d.id;
JOIN movies m ON m.id=md.movie_id;
WHERE m.name='Fight Club';

-- 5) How many movies has Clint Eastwood directed?
SELECT DISTINCT m.id;
FROM movies m;
JOIN movies_directors md ON md.movie_id=m.id;
JOIN directors d ON d.id=md.director_id;
WHERE d.first_name = 'Clint' AND d.last_name='Eastwood';

-- 6) What are the names of all movies Clint Eastwood has directed?
SELECT DISTINCT m.name;
FROM movies m;
JOIN movies_directors md ON md.movie_id=m.id;
JOIN directors d ON d.id=md.director_id;
WHERE d.first_name = 'Clint' AND d.last_name='Eastwood';

-- 7) What are the names of all directors who have directed at least one horror lm?
SELECT DISTINCT d.first_name, d.last_name;
FROM directors d;
JOIN directors_genres dg ON dg.director_id=d.id;
WHERE dg.genre='horror';

-- 8) What are the names of every actor who has appeared in a movie directed by Christopher Nolan?
SELECT DISTINCT a.first_name, a.last_name;
FROM actors a;
JOIN roles r ON r.actor_id=a.id;
JOIN movies_directors md ON md.movie_id=r.movie_id;
JOIN directors d ON d.id=md.director_id;
WHERE d.first_name='Christopher' AND d.last_name='Nolan';