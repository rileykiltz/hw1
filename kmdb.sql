INSERT INTO studios (studio_name) VALUES ('Warner Bros');

INSERT INTO movies (movie_name, rating, year, studio_id) VALUES
('Batman Begins', 'PG-13', '2005', 1),
('The Dark Knight', 'PG-13', '2008', 1),
('The Dark Knight Rises', 'PG-13', '2012', 1);

INSERT INTO actors (first_name, last_name) VALUES
('Christian', 'Bale'),
('Michael', 'Caine'),
('Liam', 'Neeson'),
('Katie', 'Holmes'),
('Gary', 'Oldman'),
('Heath', 'Ledger'),
('Aaron', 'Eckhart'),
('Maggie', 'Gyllenhaal'),
('Tom', 'Hardy'),
('Joseph', 'Gordon-Levitt'),
('Anne', 'Hathaway');

INSERT INTO characters (first_name, last_name, actor_id, movie_id) VALUES
('Bruce', 'Wayne', (SELECT id FROM actors WHERE first_name = 'Christian' AND last_name = 'Bale'), 1),
('Alfred', NULL, (SELECT id FROM actors WHERE first_name = 'Michael' AND last_name = 'Caine'), 1),
('Ra\'s', 'Al Ghul', (SELECT id FROM actors WHERE first_name = 'Liam' AND last_name = 'Neeson'), 1),
('Rachel', 'Dawes', (SELECT id FROM actors WHERE first_name = 'Katie' AND last_name = 'Holmes'), 1),
('Commissioner', 'Gordon', (SELECT id FROM actors WHERE first_name = 'Gary' AND last_name = 'Oldman'), 1);

INSERT INTO characters (first_name, last_name, actor_id, movie_id) VALUES
('Bruce', 'Wayne', (SELECT id FROM actors WHERE first_name = 'Christian' AND last_name = 'Bale'), 2),
('Joker', NULL, (SELECT id FROM actors WHERE first_name = 'Heath' AND last_name = 'Ledger'), 2),
('Harvey', 'Dent', (SELECT id FROM actors WHERE first_name = 'Aaron' AND last_name = 'Eckhart'), 2),
('Alfred', NULL, (SELECT id FROM actors WHERE first_name = 'Michael' AND last_name = 'Caine'), 2),
('Rachel', 'Dawes', (SELECT id FROM actors WHERE first_name = 'Maggie' AND last_name = 'Gyllenhaal'), 2);

INSERT INTO characters (first_name, last_name, actor_id, movie_id) VALUES
('Bruce', 'Wayne', (SELECT id FROM actors WHERE first_name = 'Christian' AND last_name = 'Bale'), 3),
('Commissioner', 'Gordon', (SELECT id FROM actors WHERE first_name = 'Gary' AND last_name = 'Oldman'), 3),
('Bane', NULL, (SELECT id FROM actors WHERE first_name = 'Tom' AND last_name = 'Hardy'), 3),
('John', 'Blake', (SELECT id FROM actors WHERE first_name = 'Joseph' AND last_name = 'Gordon-Levitt'), 3),
('Selina', 'Kyle', (SELECT id FROM actors WHERE first_name = 'Anne' AND last_name = 'Hathaway'), 3);
