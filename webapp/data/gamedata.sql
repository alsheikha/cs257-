
CREATE TABLE genres (
    id int,
    genre text);

CREATE TABLE platforms (
    id int,
    platform text );

CREATE TABLE publishers (
    id int,
    publisher text);

CREATE TABLE videogames (
    Rank int,
    Name text,
    platform_id int,
    Year text,
    genre_id int,
    publisher_id int,
    Global_Sales float);

;
