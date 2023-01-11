# This is a Model class - used to hold a record's data.
# This class usually doesn't contain any logic, 
# but is only used to hold data.

class Artist
  # Replace the attributes by your own columns.
  attr_accessor :id, :name, :genre
end

# The keyword attr_accessor is a special Ruby feature
# which allows us to set and get attributes on an object.