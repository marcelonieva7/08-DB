INSERT INTO "Country" (name) VALUES 
('United States'),
('United Kingdom'),
('Canada'),
('Australia'),
('France'),
('Germany'),
('India'),
('Japan'),
('South Korea'),
('Brazil'),
('Argentina');

INSERT INTO "File" (file_name, mime_type, key, url) VALUES 
('avatar1.jpg', 'image/jpeg', 'avatars/avatar1.jpg', 'https://example.com/avatars/avatar1.jpg'),
('avatar2.png', 'image/png', 'avatars/avatar2.png', 'https://example.com/avatars/avatar2.png'),
('poster1.jpg', 'image/jpeg', 'posters/poster1.jpg', 'https://example.com/posters/poster1.jpg'),
('poster2.png', 'image/png', 'posters/poster2.png', 'https://example.com/posters/poster2.png'),
('photo1.jpg', 'image/jpeg', 'photos/photo1.jpg', 'https://example.com/photos/photo1.jpg'),
('photo2.png', 'image/png', 'photos/photo2.png', 'https://example.com/photos/photo2.png'),
('photo3.gif', 'image/gif', 'photos/photo3.gif', 'https://example.com/photos/photo3.gif'),
('poster3.bmp', 'image/bmp', 'posters/poster3.bmp', 'https://example.com/posters/poster3.bmp'),
('avatar3.webp', 'image/webp', 'avatars/avatar3.webp', 'https://example.com/avatars/avatar3.webp'),
('photo4.jpg', 'image/jpeg', 'photos/photo4.jpg', 'https://example.com/photos/photo4.jpg');

INSERT INTO "Person" (first_name, last_name, biography, date_of_birth, gender, home_country_id, primary_photo_file_id) VALUES 
('Robert', 'Downey Jr.', 'American actor and producer.', '1965-04-04', 'male', 1, 5),
('Scarlett', 'Johansson', 'American actress and singer.', '1984-11-22', 'female', 1, 6),
('Chris', 'Evans', 'American actor.', '1981-06-13', 'male', 1, 7),
('Chris', 'Hemsworth', 'Australian actor.', '1983-08-11', 'male', 4, 8),
('Mark', 'Ruffalo', 'American actor and producer.', '1967-11-22', 'male', 1, 9),
('Jeremy', 'Renner', 'American actor and musician.', '1971-01-07', 'male', 1, 10),
('Tom', 'Hiddleston', 'English actor.', '1981-02-09', 'male', 2, 5),
('Paul', 'Rudd', 'American actor, comedian, and writer.', '1969-04-06', 'male', 1, 6),
('Brie', 'Larson', 'American actress and filmmaker.', '1989-10-01', 'female', 1, 7),
('Chadwick', 'Boseman', 'American actor and playwright.', '1976-11-29', 'male', 1, 8),
('Anthony', 'Russo', 'American film and television director.', '1970-02-03', 'male', 1, 9),
('Joe', 'Russo', 'American film and television director.', '1971-07-18', 'male', 1, 10),
('James', 'Cameron', 'Canadian filmmaker.', '1954-08-16', 'male', 3, 5),
('Christopher', 'Nolan', 'British-American film director, producer, and screenwriter.', '1970-07-30', 'male', 2, 6),
('Peter', 'Jackson', 'New Zealand film director.', '1961-10-31', 'male', 2, 7),
('Zoë', 'Saldana', 'American actress and dancer.', '1978-06-19', 'female', 1, 5),
('Sigourney', 'Weaver', 'American actress.', '1949-10-08', 'female', 1, 6),
('Sam', 'Worthington', 'Australian actor.', '1976-08-02', 'male', 4, 7),
('Zachary', 'Levi', 'American actor and singer.', '1980-09-29', 'male', 1, 8),
('Karen', 'Gillan', 'Scottish actress and filmmaker.', '1987-11-28', 'female', 2, 9),
('Dave', 'Bautista', 'American actor and former professional wrestler.', '1969-01-18', 'male', 1, 10),
('extra1_name', 'extra1_last_name', 'extra1_biography', '1970-01-01', 'male', 1, NULL),
('extra2_name', 'extra2_last_name', 'extra2_biography', '1980-01-01', 'female', 5, NULL),
('crow1_name', 'crow1_last_name', 'crow1_biography', '1993-01-01', 'male', 1, NULL),
('crow2_name', 'crow2_last_name', 'crow2_biography', '1998-01-01', 'other', 7, NULL),
('Santiago', 'Mitre', 'Argentine film director and screenwriter. He was named as a member of the jury of the Critics Week section of the 2016 Cannes Film Festival.', '1980-12-04', 'male', 11, 5),
('Ricardo', 'Darin', 'Argentine actor, film director and film producer, considered one of the best and most prolific actors of Argentine cinema.', '1957-01-16', 'male', 11, 6);

INSERT INTO "User" (username, first_name, last_name, email, password, avatar_file_id) VALUES 
('user1', 'John', 'Doe', 'john.doe@example.com', 'password123', 1),
('user2', 'Jane', 'Smith', 'jane.smith@example.com', 'password123', 2),
('user3', 'Michael', 'Johnson', 'michael.johnson@example.com', 'password123', 3),
('user4', 'Emily', 'Davis', 'emily.davis@example.com', 'password123', 4),
('user5', 'Daniel', 'Brown', 'daniel.brown@example.com', 'password123', 5),
('user6', 'Emma', 'Wilson', 'emma.wilson@example.com', 'password123', 6),
('user7', 'David', 'Moore', 'david.moore@example.com', 'password123', 7),
('user8', 'Sophia', 'Taylor', 'sophia.taylor@example.com', 'password123', 8),
('user9', 'James', 'Anderson', 'james.anderson@example.com', 'password123', 9),
('user10', 'Olivia', 'Thomas', 'olivia.thomas@example.com', 'password123', 10);

INSERT INTO "Movie" (title, description, budget, release_date, duration, director_id, country_id, poster_file_id) VALUES 
('Avengers: Endgame', 'The Avengers take a final stand against Thanos.', 356000000, '2019-04-26', 181, 11, 1, 3),
('Avatar', 'A paraplegic Marine dispatched to the moon Pandora.', 237000000, '2009-12-18', 162, 13, 1, 4),
('Titanic', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist.', 200000000, '1997-12-19', 195, 13, 1, 5),
('The Dark Knight', 'Batman battles the Joker.', 185000000, '2008-07-18', 152, 14, 1, 6),
('Inception', 'A thief who steals corporate secrets through the use of dream-sharing technology.', 160000000, '2010-07-16', 148, 14, 1, 7),
('The Lion King', 'Lion cub and future king Simba searches for his identity.', 45000000, '1994-06-24', 88, 15, 1, 8),
('The Godfather', 'The aging patriarch of an organized crime dynasty transfers control of his empire.', 6000000, '1972-03-24', 175, 14, 1, 9),
('Pulp Fiction', 'The lives of two mob hitmen, a boxer, a gangster, and his wife intertwine.', 8000000, '1994-10-14', 154, 14, 1, 10),
('Forrest Gump', 'The presidencies of Kennedy and Johnson, the Vietnam War, and more through the perspective of Forrest Gump.', 55000000, '1994-07-06', 142, 15, 1, 3),
('The Matrix', 'A computer hacker learns about the true nature of his reality.', 63000000, '1999-03-31', 136, 14, 1, 4),
('Avengers: Infinity War', 'The Avengers must stop Thanos.', 316000000, '2018-04-27', 149, 11, 1, 3),
('Aliens', 'Ellen Ripley returns to confront the Alien.', 18500000, '1986-07-18', 137, 13, 1, 4),
('Dunkirk', 'Allied soldiers are evacuated during WWII.', 100000000, '2017-07-21', 106, 14, 1, 5),
('The Lord of the Rings: The Fellowship of the Ring', 'A hobbit and friends set out to destroy the One Ring.', 93000000, '2001-12-19', 178, 15, 1, 6),
('The Lord of the Rings: The Two Towers', 'The second part of the epic trilogy.', 94000000, '2002-12-18', 179, 15, 1, 7),
('Argentina, 1985', 'A team of lawyers takes on the heads of Argentina s bloody military dictatorship.', 5000000, '2022-10-22', 140, 26, 11, 3);

INSERT INTO "Genre" (name) VALUES 
('Action'),
('Adventure'),
('Comedy'),
('Drama'),
('Fantasy'),
('Horror'),
('Mystery'),
('Romance'),
('Sci-Fi'),
('Thriller');

INSERT INTO "Character" (name, description, role, movie_id, person_id) VALUES 
('Tony Stark', 'A billionaire industrialist and genius inventor.', 'leading', 1, 1),
('Natasha Romanoff', 'A spy and former KGB assassin.', 'supporting', 1, 2),
('Steve Rogers', 'A World War II veteran who was enhanced to the peak of human physicality.', 'leading', 1, 3),
('Thor', 'The crown prince of Asgard, based on the Norse mythological deity of the same name.', 'leading', 1, 4),
('Bruce Banner', 'A genius scientist who, because of exposure to gamma radiation, transforms into the Hulk.', 'supporting', 1, 5),
('Clint Barton', 'Master archer.', 'supporting', 1, 6),
('Loki', 'God of Mischief.', 'supporting', 1, 7),
('Scott Lang', 'A former thief who becomes Ant-Man.', 'supporting', 1, 8),
('Carol Danvers', 'Air Force pilot who becomes Captain Marvel.', 'leading', 1, 9),
('T Challa', 'King of Wakanda.', 'leading', 1, 10),
('Thanos', 'Intergalactic warlord.', 'leading', 11, 1),
('Ellen Ripley', 'Warrant officer.', 'leading', 12, 2),
('Joker', 'Psychopathic criminal mastermind.', 'leading', 4, 3),
('Bruce Wayne', 'Millionaire playboy who becomes Batman.', 'leading', 4, 4),
('Frodo Baggins', 'Hobbit of the Shire.', 'leading', 14, 5),
('Gandalf', 'Wizard.', 'supporting', 14, 6),
('Samwise Gamgee', 'Hobbit and Frodo s best friend.', 'supporting', 14, 7),
('Aragorn', 'Ranger of the North.', 'leading', 14, 8),
('Legolas', 'Elven prince.', 'supporting', 14, 9),
('Gollum', 'Former bearer of the One Ring.', 'supporting', 14, 10),
('Julio César Strassera', 'Argentine lawyer and jurist. He served as Chief Prosecutor.', 'leading', 15, 27);

INSERT INTO "MovieGenre" (movie_id, genre_id) VALUES 
(1, 1),
(1, 2),
(1, 5),
(2, 2),
(2, 4),
(2, 5),
(3, 3),
(3, 7),
(4, 1),
(4, 8),
(5, 1),
(5, 4),
(5, 5),
(6, 9),
(6, 4),
(7, 1),
(8, 10),
(8, 3),
(9, 3),
(9, 6),
(10, 1),
(10, 5),
(11, 1),
(11, 2),
(11, 5),
(12, 1),
(12, 4),
(13, 1),
(13, 3),
(14, 2),
(14, 4),
(14, 1),
(15, 2),
(15, 4),
(15, 1),
(16, 4);

INSERT INTO "FavoriteMovie" (user_id, movie_id) VALUES 
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15),
(9, 1),
(9, 2),
(10, 3),
(10, 4),
(1, 5);

INSERT INTO "MovieParticipation" (person_id, movie_id, role) VALUES 
(21, 2, 'extra'),
(22, 3, 'extra'),
(23, 5, 'crowd'),
(24, 7, 'crowd'),
(24, 16, 'crowd');

INSERT INTO "PersonPhoto" (person_id, file_id) VALUES 
(1, 5),
(2, 6),
(3, 7),
(4, 8),
(5, 9),
(6, 10),
(7, 5),
(8, 6),
(9, 7),
(10, 8),
(11, 9),
(12, 10),
(13, 5),
(14, 6),
(15, 7),
(1, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10),
(6, 5),
(7, 6),
(8, 7),
(9, 8),
(10, 9);
