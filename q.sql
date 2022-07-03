CREATE TABLE IF NOT EXISTS genre (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS performer (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    genre_id INTEGER REFERENCES genre(id) NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    year_of_issue INTEGER NOT NULL CHECK(year_of_issue > 0),
    performer_id INTEGER REFERENCES performer(id) NOT NULL
);

CREATE TABLE IF NOT EXISTS song (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    duration TIME NOT NULL,
    album_id INTEGER REFERENCES album(id) NOT NULL
);


