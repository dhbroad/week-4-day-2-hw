CREATE table customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	age INTEGER,
	email VARCHAR(100)
);

CREATE TABLE ticket (
	ticket_id SERIAL PRIMARY KEY,
	customer_id integer NOT NULL,
	movie_title VARCHAR(50),
	total_price NUMERIC(4,2),
	theater_number INTEGER,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE table movie (
	movie_id SERIAL PRIMARY KEY,
	movie_title VARCHAR(50),
	movie_description VARCHAR(200),
	rating VARCHAR(5)
);

CREATE TABLE ticket_movie(
	ticket_movie_id SERIAL PRIMARY KEY,
	ticket_id INTEGER,
	movie_id INTEGER,
	FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id),
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE concessions(
	order_id SERIAL PRIMARY KEY,
	customer_id integer NOT NULL,
	total_price NUMERIC(4,2),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
	);