require_relative './lib/database_connection'
require_relative './lib/album_repository'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('music_library_test')

# Perform a SQL query on the database and get the result set.
sql = 'SELECT id, title FROM albums;'
result = DatabaseConnection.exec_params(sql, [])

# Print out each record from the result set .
result.each do |record|
  p record
end

# tested and running
# ➜  Music_library git:(main) ✗ ruby app.rb
# {"id"=>"1", "title"=>"Waterloo"}
# {"id"=>"2", "title"=>"Voyage"}