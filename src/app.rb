require_relative './functions/list_books'
require_relative './functions/list_games'
require_relative './functions/list_labels'
require_relative './functions/list_authors'
require_relative './functions/add_book'
require_relative './functions/add_game'
require_relative './functions/assign_label'
require_relative './functions/assign_genre'
require_relative './functions/add_music_album'
require_relative './functions/list_music_albums'
require_relative './functions/list_genres'
require_relative './functions/assign_author'
require_relative './functions/save_data'
require_relative './functions/load_data'

class App
  attr_reader :books, :authors, :games, :items, :labels, :genres, :music, :music_genre_fl

  LIST_OPTIONS = {
    1 => :list_books,
    2 => :list_music_albums,
    3 => :list_movies,
    4 => :list_games,
    5 => :list_genres,
    6 => :list_labels,
    7 => :list_authors,
    8 => :list_sources,
    9 => :add_book,
    10 => :add_music_album,
    11 => :add_movie,
    12 => :add_game,
    13 => :assign_label,
    14 => :assign_author,
    15 => :assign_genre
  }.freeze

  def initialize
    @books = []
    @authors = []
    @games = []
    @items = []
    @labels = []
    @music = []
    @genres = []
    @music_genre_fl = []
  end

  def options(option)
    send(LIST_OPTIONS[option])
  end

  def save_data
    save_books
    save_labels
  end

  def load
    load_data
  end
end
