
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

select * from dim_genre

