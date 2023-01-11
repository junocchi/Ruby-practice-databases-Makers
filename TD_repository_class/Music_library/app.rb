require_relative './lib/database_connection'
require_relative './lib/artist_repository'
require_relative './lib/album_repository'

# We need to give the database name to the method `connect`
# Here we always connect to the mais database
DatabaseConnection.connect('music_library')

artist_repository = ArtistRepository.new
artist_repository.all.each do |artist|
  p artist  
end

# outputs:
# ➜  Music_library git:(main) ✗ ruby app.rb
#<Artist:0x00007fe109831188 @id="1", @name="Pixies", @genre="Rock">
#<Artist:0x00007fe109828100 @id="2", @name="ABBA", @genre="Pop">
#<Artist:0x00007fe109822570 @id="3", @name="Taylor Swift", @genre="Pop">
#<Artist:0x00007fe109820ea0 @id="4", @name="Nina Simone", @genre="Pop">
#<Artist:0x00007fe10981b658 @id="5", @name="Massive Attack", @genre="Alternative">
#<Artist:0x00007fe109819bf0 @id="7", @name="Zeca Pagodinho", @genre="Samba">
#<Artist:0x00007fe109818138 @id="6", @name="Coldplay", @genre="Pop">

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
