require_relative './lib/database_connection'
require_relative './lib/album_repository'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('music_library')

album_repository = AlbumRepository.new

album = album_repository.find(3)

puts album.id
puts album.title
puts album.release_year
puts album.artist_id

# outputs:
# ➜  Music_library git:(main) ✗ ruby app.rb
# Waterloo
# 1972
# 2
