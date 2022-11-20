CREATE TABLE noc_countries (
    noc text,
    country_name text);

CREATE TABLE athletes (
    id int,
    first_name text,
    last_name text );

CREATE TABLE events (
    id int,
    sport text,
    event text);

CREATE TABLE olympics (
    id int,
    year int,
    season text,
    city text);

CREATE TABLE appearances (
    athlete_id int,
    event_id int,
    olympics_id int,
    sex text,
    age int,
    height int,
    weight float,
    team text,
    noc text,
    medal text
);
