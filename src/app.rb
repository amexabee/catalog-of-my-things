require_relative './functions/list_books'
require_relative './functions/list_labels'
require_relative './functions/add_book'
require_relative './functions/assign_label'
require_relative './functions/add_genre'
require_relative './functions/add_music_album'
require_relative './functions/list_music_albums'
require_relative './functions/list_genres.rb'


class App
  attr_reader :books, :authors, :games, :items, :labels, :genres, :music

  LIST_OPTIONS = {
    1 => :list_books,
    2 => :list_music,
    3 => :list_movies,
    4 => :list_games,
    5 => :list_genres,
    6 => :list_labels,
    7 => :list_authors,
    8 => :list_sources,
    9 => :add_book,
    10 => :add_music,
    11 => :add_movie,
    12 => :add_game,
    13 => :assign_label
  }.freeze

  def initialize
    @books = []
    @authors = []
    @games = []
    @items = []
    @labels = []
    @music = []
    @genres = []
  end

  def options(option)
    send(LIST_OPTIONS[option])
  end
end
