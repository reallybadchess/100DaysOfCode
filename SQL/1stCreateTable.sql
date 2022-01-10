-- Practice creating table

CREATE TABLE account(
    user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	create_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
)	