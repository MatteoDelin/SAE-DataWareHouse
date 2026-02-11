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

CREATE TABLE dim_manga (
    manga_id INT PRIMARY KEY,
    manga_title VARCHAR(255),
    manga_title_en VARCHAR(255),
    manga_published_from VARCHAR(50),
    manga_published_to VARCHAR(50)
);

CREATE TABLE manga_genre (
    manga_id INT,
    genre_id INT,
    PRIMARY KEY (manga_id, genre_id),
    FOREIGN KEY (manga_id) REFERENCES dim_manga(manga_id),
    FOREIGN KEY (genre_id) REFERENCES dim_genre(genre_id)
);

CREATE TABLE FACT_Manga_Sales (
    manga_id INT NOT NULL,
    publisher_id INT NOT NULL,
    demographic_id INT NOT NULL,
    author_id INT NOT NULL,
    no_of_collected_volumes INT,
    manga_chapters INT,
    score DOUBLE PRECISION,
    average_sales_per_volume_in_million DOUBLE PRECISION,
    approximate_sales_in_million DOUBLE PRECISION,

    PRIMARY KEY (manga_id, publisher_id, demographic_id, author_id),
    FOREIGN KEY (manga_id) REFERENCES dim_manga(manga_id),
    FOREIGN KEY (publisher_id) REFERENCES dim_publisher(publisher_id),
    FOREIGN KEY (demographic_id) REFERENCES dim_demographic(demographic_id),
    FOREIGN KEY (author_id) REFERENCES dim_author(author_id)
);


select * from dim_author;


