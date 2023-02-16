-- CREATE MUSIC_ALBUM TABLE
CREATE TABLE music_album (
  id SERIAL PRIMARY KEY,
  author INTEGER,
  genre INTEGER,
  label INTEGER,
  publish_date DATE NOT NULL,
  archived BOOLEAN,
  on_spotify BOOLEAN,
  FOREIGN KEY (author) REFERENCES author(id),
  FOREIGN KEY (source) REFERENCES source(id),
  FOREIGN KEY (label) REFERENCES label(id),
  FOREIGN KEY (genre) REFERENCES genre(id)
);

-- CREATE GENRE TABLE
CREATE TABLE genre (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

-- CREATE GENRE ITEMS TABLE
CREATE TABLE genre_items (
  id SERIAL PRIMARY KEY,
  genre_id INTEGER NOT NULL,
  item VARCHAR(100) NOT NULL,
  FOREIGN KEY(genre_id) REFERENCES genre(id)
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  publisher VARCHAR(255),
  cover_state VARCHAR(100),
  genre_id INT,
  author_id INT,
  label_id INT,
  publish_date DATE NOT NULL,
  archived BOOLEAN,
  FOREIGN KEY (genre_id) REFERENCES genre(id),
  FOREIGN KEY (author_id) REFERENCES authors(id),
  FOREIGN KEY (label_id) REFERENCES labels(id)
);

CREATE TABLE labels (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100),
  color VARCHAR(100)
);
