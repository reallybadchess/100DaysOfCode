-- Creating a movies_actors junction table

CREATE TABLE movies_actors (
	movie_id INT REFERENCES movies (movie_id),
	actor_id INT REFERENCES actors (actor_id),
	-- We need a primary key!
	PRIMARY KEY (movie_id, actor_id)
);

