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