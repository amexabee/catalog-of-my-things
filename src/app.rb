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
    3 => :list_games,
    4 => :list_genres,
    5 => :list_labels,
    6 => :list_authors,
    7 => :add_book,
    8 => :add_music_album,
    9 => :add_game,
    10 => :assign_label,
    11 => :assign_author,
    12 => :assign_genre
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
    save_games
    save_labels
    save_authors
  end

  def load
    load_data
  end
end
