-- EXAMPLE
-- (file: spec/seeds_{table_name}.sql)

-- Copy the SQL queries you've created in 'albums_respository_class_design.md' Step 2.


TRUNCATE TABLE artists RESTART IDENTITY; 


INSERT INTO artists (name, genre) VALUES ('Pixies', 'Rock');
INSERT INTO artists (name, genre) VALUES ('ABBA', 'Pop');
-- INSERT INTO artists (name, genre) VALUES ('Taylor Swift', 'Pop');
-- INSERT INTO artists (name, genre) VALUES ('Nina Simone', 'Pop');