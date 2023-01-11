require_relative './artist'

class ArtistRepository

  def all 

    artists = []
    
    sql = 'SELECT id, name, genre FROM artists;'
    result = DatabaseConnection.exec_params(sql, [])

    result.each do |record|
      artist = Artist.new
      artist.id = record['id']
      artist.name = record['name']
      artist.genre = record['genre']

      artists << artist
    end

    return artists
  end

  def find(id) 
    sql = 'SELECT title, release_year, artist_id FROM artists WHERE id = $1;'
    sql_params = [id]

    result = DatabaseConnection.exec_params(sql, sql_params)
    record = result[0]

    artist = Artist.new
    artist.title = record['title']
    artist.release_year = record['release_year']
    artist.id = record['id']
    artist.artist_id = record['artist_id']

    return artist
  end

  def create(artist)
    sql = 'INSERT INTO 
              artists (title, release_year, artist_id) 
              VALUES ($1, $2, $3);'
    sql_params = [artist.title, artist.release_year, artist.artist_id]

    DatabaseConnection.exec_params(sql, sql_params)

    return nil
  end  
end