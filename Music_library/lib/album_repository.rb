require_relative './album'

class AlbumRepository

  def all 

    albums = []
    
    sql = 'SELECT id, title, release_year, artist_id FROM albums;'
    result = DatabaseConnection.exec_params(sql, [])

    result.each do |record|
      album = Album.new
      album.id = record['id']
      album.title = record['title']
      album.release_year = record['release_year']
      album.artist_id = record['artist_id']

      albums << album
    end

    return albums
  end
end

# Quando chamei essa função
# repo = AlbumRepository.new
# albums = repo.all
# deu erro no terminal dizendo que 
# album_repository.rb:10:in `all': uninitialized constant 
# AlbumRepository::DatabaseConnection (NameError)
#	from album_repository.rb:27:in `<main>'

# Note that the all method depends on the DatabaseConnection class. 
# You will need to make sure that the DatabaseConnection class 
# is defined and available in your code before calling the all method.