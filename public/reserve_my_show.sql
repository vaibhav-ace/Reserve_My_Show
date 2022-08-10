/*This implementation is of the SQL database for the reservation/booking system for a theatre*/


/*Creating a database and switching to the database*/
CREATE DATABASE reserve_my_show;
USE reserve_my_show;


/*Following the database schema and creating each table with the respective attributes, foreign keys and primary keys*/

/*Users table with the primary key 'username'*/
CREATE TABLE users(
    username VARCHAR(100),
    email VARCHAR(100),
    user_password VARCHAR(100),
    PRIMARY KEY (username)
);

/*Movie table with primary key 'ID'*/
CREATE TABLE movie(
    movie_id INT,
    title VARCHAR (100),
    duration INT,
    movie_date DATE,
    movie_time TIME,
    PRIMARY KEY(movie_id)
);

/*Reserved Seats table with primary key 'seat section'*/
CREATE TABLE reserved_seats(
    seat_section VARCHAR(100),
    total_seat_count INT,
    seats_remaining INT,
    PRIMARY KEY (seat_section)
);

/*Seats table with primary key 'ID' and foreign key 'seat section'*/
CREATE TABLE seats(
    seat_id INT,
    seat_number INT,
    seat_section VARCHAR(100),
    cost INT,
    PRIMARY KEY (seat_id),
    FOREIGN KEY (seat_section) REFERENCES reserved_seats(seat_section)
);

/*Reservation table with primary key 'ID' and foreign key 'username', 'movie id', 'seat section' and 'seat start number'*/
CREATE TABLE reservation(
    reservation_id INT AUTO_INCREMENT,
    username VARCHAR(100),
    movie_id INT,
    seat_section VARCHAR(100),
    seat_count INT,
    seat_start_number INT,
    approved BOOLEAN,
    total_cost INT,
    PRIMARY KEY (reservation_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY (seat_section) REFERENCES reserved_seats(seat_section),
    FOREIGN KEY (seat_start_number) REFERENCES seats(seat_id)
);


/*Adding at least 1 row of test data to each table in the order they were created, i.e. from users to reservation*/


/*Extra Insertion for seat booking on 20th June, 2022*/
/*Avengers: Age of Ultron*/
INSERT INTO users VALUES ('eli', 'eli@reserve_my_show.com', 'elishane');
INSERT INTO movie VALUES (1, 'Avengers: Age of Ultron', 2, "2022-06-20", "01:00:00");
INSERT INTO reserved_seats VALUES ('Premium', 5, 5);
INSERT INTO seats VALUES (1, 1, 'Premium', 40);
INSERT INTO reservation VALUES (1, 'eli', 1, 'Premium', 5, 1, TRUE, 40);


/*Spiderman: Into the Spider-Verse*/
INSERT INTO users VALUES ('axel', 'axel@reserve_my_show.com', 'axelblaze');
INSERT INTO movie VALUES (2, 'Spiderman: Into the Spider-Verse', 2, "2022-06-20", "03:00:00");
INSERT INTO seats VALUES (2, 2, 'Premium', 40);