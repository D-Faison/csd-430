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
	MovieTitle varchar(250) not null,
    ReleaseYear int,
    RunTime varchar(10) not null,
    Director varchar(100) not null,
    Rating decimal(2,1),
    Genre varchar(250) not null
);


/*Insert a minimum 10 movies into table*/
INSERT INTO dejanae_movies_data(MovieTitle,ReleaseYear,RunTime,Director,Rating,Genre)VALUES
("Alien",1979,"1h57min","Ridley Scott",8.5,"Horror.Sci-Fi"),
("Howl's Moving Castle",2004,"1h59min","Hayao Miyazaki",8.2,"Animation.Adventure.Family"),
("Ratatouille",2007,"1h51min","Brad Bird.Jan Pinkava",8.5,"Animation.Adventure.Comedy"),
("The Dark Knight",2008,"2h32min","Christopher Nolan",9.1,"Action.Crime.Drama"),
("The Lord of the Rings: The Fellowship of the Ring",2001,"2h58min","Peter Jackson",8.9,"Adventure.Drama.Fantasy"),
("Sinners",2025,"2h17min","Ryan Coogler",7.6,"Action.Horror.Drama"),
("Fixed",2025,"1h27min","Genndy Tartakovsky",5.2,"Animation.Adventure.Comedy"),
("Alien:Romulus",2024,"1h59min","Fede Alvarez",7.1,"Horror.Sci-Fi.Thriller"),
("Fixed",2025,"1h27min","Genndy Tartakovsky",5.2,"Animation.Adventure.Comedy"),
("KPop Demon Hunters",2025,"1h35min","Chris Appelhans.Maggie Kang",7.7,"Animation.Adventure.Action"),
("Alice in Wonderland",2010,"1h48min","Tim Burton",6.4,"Adventure.Family.Fantasy"),
("Gremlins",1984,"1h46min","Joe Dante",7.3,"Fantasy.Horror.Comedy"),
("Inception",2010,"2h28min","Christopher Nolan",8.8,"Action.Adventure.Sci-Fi")