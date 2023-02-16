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

CREATE TABLE games (
  id SERIAL PRIMARY KEY,
  multiplayer VARCHAR(255),
  last_played_at DATE NOT NULL,
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

CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  second_name VARCHAR(100)
);