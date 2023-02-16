require 'json'

GENRE_FILE = 'genres.json'.freeze
MUSIC_FILE = 'music_albums.json'.freeze
MUSIC_GENRE_FILE = 'music_albums_genres.json'.freeze

def write_json(array, file_path)
  opts = {
    array_nl: "\n",
    object_nl: "\n",
    indent: '  ',
    space_before: ' ',
    space: ' '
  }
  File.write(file_path, JSON.generate(array, opts))
end

def on_entry(app)
  check_music_files
  read_genres(app)
  read_albums(app)
  read_music_genre(app)
end

def on_exit(app)
  store_genres(app)
  store_albums(app)
  save_music_genre(app)
end

# CHECK IF FILE EXIST
def check_music_files
  File.write(GENRE_FILE, '{}') unless File.exist?(GENRE_FILE)
  File.write(MUSIC_FILE, '{}') unless File.exist?(MUSIC_FILE)
  File.write(MUSIC_GENRE_FILE, '{}') unless File.exist?(MUSIC_GENRE_FILE)
end

def read_json(file_path)
  return unless File.exist?(file_path)

  file = File.read(file_path)
  JSON.parse(file)
end

# Store Genres
def store_genres(app)
  array = []
  app.genres.each do |genre|
    array.push(name: genre.name)
  end
  write_json(array, GENRE_FILE)
end

# Store Music Albums
def store_albums(app)
  array = []
  app.music.each do |music|
    array.push(id: music.id, publish_date: music.publish_date, on_spotify: music.on_spotify)
  end
  write_json(array, MUSIC_FILE)
end

# Read Genres
def read_genres(app)
  array = read_json(GENRE_FILE)
  array.each do |genre|
    genre = Genre.new(genre['name'])
    app.genres.push(genre)
  end
end

# Read MUSIC_GENRES
def read_music_genre(app)
  array = read_json(MUSIC_GENRE_FILE)
  array.each do |mg|
    if mg['type'] == 'Music'
      app.music_genre_fl.push(music_id: mg['music_id'], genre_id: mg['genre_id'], type: mg['type'])
    elsif mg['type'] == 'Book'
      app.music_genre_fl.push(Book_id: mg['book_id'], genre_id: mg['genre_id'], type: mg['type'])
    else
      app.music_genre_fl.push(Game_id: mg['game_id'], genre_id: mg['genre_id'], type: mg['type'])
    end
  end
end

# SAVE MUSIC_GENRES
def save_music_genre(app)
  array = []
  app.music_genre_fl.each do |mg|
    array.push(mg)
  end
  write_json(array, MUSIC_GENRE_FILE)
end

# Read Music Albums
def read_albums(app)
  array = read_json(MUSIC_FILE)
  array.each do |album|
    music = MusicAlbum.new(album['publish_date'], on_spotify: album['on_spotify'])
    app.music.push(music)
  end
end
