-- Create movies table

CREATE TABLE movies (
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(100) NOT NULL,
	movie_length INT,
	movie_language VARCHAR(20),
	age_certificate VARCHAR(10),
	release_date DATE,
	-- This next column creates a foreign key to the directors table
	director_id INT REFERENCES directors (director_id)
);