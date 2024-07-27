CREATE TABLE "Country" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "File" (
  id SERIAL PRIMARY KEY,
  file_name VARCHAR(255) NOT NULL,
  mime_type VARCHAR(50) NOT NULL CHECK (mime_type IN ('image/jpeg', 'image/png', 'image/gif', 'image/bmp', 'image/webp')),
  key VARCHAR(255) NOT NULL,
  url TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "Person" (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  biography TEXT NOT NULL,
  date_of_birth DATE NOT NULL,
  gender VARCHAR(10) NOT NULL CHECK (gender IN ('male', 'female', 'other')),
  home_country_id INTEGER REFERENCES "Country"(id) NOT NULL,
  primary_photo_file_id INTEGER REFERENCES "File"(id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "User" (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  avatar_file_id INTEGER REFERENCES "File"(id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "Movie" (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  budget DECIMAL(15, 2) NOT NULL,
  release_date DATE NOT NULL,
  duration INTEGER NOT NULL,
  director_id INTEGER REFERENCES "Person"(id) NOT NULL,
  country_id INTEGER REFERENCES "Country"(id) NOT NULL,
  poster_file_id INTEGER REFERENCES "File"(id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "Genre" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "Character" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  role VARCHAR(50) NOT NULL CHECK (role IN ('leading', 'supporting', 'background')),
  movie_id INTEGER REFERENCES "Movie"(id) NOT NULL,
  person_id INTEGER REFERENCES "Person"(id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "MovieGenre" (
  movie_id INTEGER REFERENCES "Movie"(id),
  genre_id INTEGER REFERENCES "Genre"(id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (movie_id, genre_id)
);

CREATE TABLE "FavoriteMovie" (
  user_id INTEGER REFERENCES "User"(id),
  movie_id INTEGER REFERENCES "Movie"(id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (user_id, movie_id)
);

CREATE TABLE "PersonPhoto" (
  id SERIAL PRIMARY KEY,
  person_id INTEGER REFERENCES "Person"(id),
  file_id INTEGER REFERENCES "File"(id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "MovieParticipation" (
  id SERIAL PRIMARY KEY,
  movie_id INTEGER REFERENCES "Movie"(id),
  person_id INTEGER REFERENCES "Person"(id),
  role VARCHAR(50) NOT NULL CHECK (role IN ('crowd', 'extra')),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
