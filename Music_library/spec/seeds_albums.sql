-- EXAMPLE
-- (file: spec/seeds_{table_name}.sql)

-- Copy the SQL queries you've created in 'albums_respository_class_design.md' Step 2.


TRUNCATE TABLE artists RESTART IDENTITY; 
TRUNCATE TABLE albums RESTART IDENTITY;


INSERT INTO artists (name, genre) VALUES ('ABBA', 'Pop');

INSERT INTO albums (title, release_year, artist_id) VALUES ('Waterloo', '1974', '1');
INSERT INTO albums (title, release_year, artist_id) VALUES ('Voyage', '2021', '1');


