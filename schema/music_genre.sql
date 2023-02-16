-- CREATE MUSIC_GENRE TABLE
CREATE TABLE music_genre (
  id SERIAL PRIMARY KEY,
  music_id INTEGER NOT NULL,
  genre_id INTEGER NOT NULL,
  FOREIGN KEY (music_id) REFERENCES music_album(id),
  FOREIGN KEY (genre_id) REFERENCES genre(id)
);