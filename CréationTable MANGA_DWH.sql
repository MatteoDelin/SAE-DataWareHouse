
CREATE TABLE IF NOT EXISTS dim_author (
  author_id       SERIAL PRIMARY KEY,
  author_nom     VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS dim_publisher (
  publisher_id       SERIAL PRIMARY KEY,
  publisher_nom     VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS dim_genre (
  genre_id       SERIAL PRIMARY KEY,
  genre_nom     VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS dim_demographic (
  demographic_id       SERIAL PRIMARY KEY,
  demographic_nom     VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS DIM_date (
    date VARCHAR(50) PRIMARY KEY
);

select * from dim_date
