require_relative './app'

def add_music_genre(mid, gid)
  app = App.new
  app.music_genre_fl.push(music_id: mid, genre_id: gid)
end
