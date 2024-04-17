CREATE TABLE studios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    studio_name TEXT
);

CREATE TABLE actors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT
    last_name TEXT
);

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_name TEXT
    rating TEXT
    year TEXT
    studio_id INTEGER,
    FOREIGN KEY(studio_id) REFERENCES studios(id),
);

CREATE TABLE characters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT
    last_name TEXT
    actor_id INTEGER,
    movie_id INTEGER,
    FOREIGN KEY(actor_id) REFERENCES actors(id),
    FOREIGN KEY(movie_id) REFERENCES movies(id)
    
);