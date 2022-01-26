-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
--   (10 points)
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off
.width 10 25 20

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!

-- Create new tables, according to your domain model
-- TODO!

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!



-- The SQL statement for the movies output
-- TODO!


-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""


-- The SQL statement for the cast output
-- TODO!

DROP TABLE IF EXISTS title;
DROP TABLE IF EXISTS year_released;
DROP TABLE IF EXISTS mpaa_rating;
DROP TABLE IF EXISTS director;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS top_cast;

CREATE TABLE title (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
    director_id INTEGER,
    year_released_id INTEGER
);

CREATE TABLE year_released (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    year INTEGER
);

CREATE TABLE mpaa_rating (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    rating TEXT
);

CREATE TABLE director (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT
);

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    year_released INTEGER,
    mpaa_rating TEXT,
    director TEXT
);

CREATE TABLE top_cast(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    actor TEXT,
    screen_name TEXT
);
INSERT INTO title (
    name
) VALUES ("Batman Begins")
;

INSERT INTO title (
    name
) VALUES ("The Dark Knight")
;

INSERT INTO title (
    name
) VALUES ("The Dark Knight Rises")
;

INSERT INTO year_released (
    year
) VALUES ("2005")
;

INSERT INTO year_released (
    year
) VALUES ("2008")
;

INSERT INTO year_released (
    year
) VALUES ("2012")
;

INSERT INTO mpaa_rating (
    rating
) VALUES ("PG_13")
;

INSERT INTO mpaa_rating (
    rating
) VALUES ("PG_13")
;

INSERT INTO mpaa_rating (
    rating
) VALUES ("PG_13")
;

INSERT INTO director (
    first_name,
    last_name
) VALUES ("Christopher","Nolan")
;

-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

SELECT title, year_released, mpaa_rating, director FROM movies;
SELECT title, actor, screen_name FROM top_cast;