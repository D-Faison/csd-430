/*DeJanae Faison
*M5&6-CSD340 Database 
*Due 9/7/25
*/
/*CREATE DATABASE IF IT DOES NOT EXIST*/
CREATE DATABASE IF NOT EXISTS CSD340;
USE CSD340;

DROP TABLE IF EXISTS dejanae_movies_data;

/*User*/
DROP USER IF EXISTS 'student1'@'localhost'; 
CREATE USER 'student1'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON CSD340.* TO 'student1'@'localhost' ;

/*Table with minimum of 5 fields*/
CREATE TABLE dejanae_movies_data(
	ID int primary key not null auto_increment,
	MovieTitle varchar(100) not null,
    ReleaseYear int,
    RunTime varchar(10) not null,
    Director varchar(100) not null,
    Rating decimal(2,1),
    Genre varchar(250) not null
);

/*Insert a minimum 10 movies into table*/
INSERT INTO dejanae_movies_data(MovieTitle,ReleaseYear,RunTime,Director,Rating,Genre)VALUES
("Alien",1979,"1h57min","Ridley Scott",8.5,"Horror.Sci-Fi")