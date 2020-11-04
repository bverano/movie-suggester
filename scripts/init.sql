CREATE TABLE movie (
  movie_uid UUID NOT NULL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  "cast" VARCHAR(250) DEFAULT NULL,
  release_date DATE DEFAULT NULL,
  genre VARCHAR(100) DEFAULT NULL
);

CREATE TABLE "user" (
  user_uid UUID NOT NULL PRIMARY KEY,
  username VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  UNIQUE(username)
);

CREATE TABLE wish_list (
  user_uid UUID NOT NULL REFERENCES "user" (user_uid) ON DELETE CASCADE,
  movie_uid UUID NOT NULL REFERENCES movie (movie_uid),
  comment varchar(300) DEFAULT NULL,
  PRIMARY KEY (user_uid, movie_uid)
);