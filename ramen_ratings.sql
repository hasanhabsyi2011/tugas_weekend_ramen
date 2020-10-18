CREATE TABLE ramen_ratings (
review INT(5) PRIMARY KEY,
brand VARCHAR(50),
variety VARCHAR(100),
style VARCHAR(15),
country VARCHAR(35),
stars FLOAT,
top_ten VARCHAR(5)
);

DESCRIBE ramen_ratings


LOAD DATA INFILE 'D:/BKPSDM/ramen-ratings.csv'
INTO TABLE ramen_ratings
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM ramen_ratings

SELECT * FROM ramen_ratings WHERE stars > 4;
SELECT * FROM ramen_ratings WHERE country = 'Japan';
SELECT review,brand,UCASE(variety),style,country,stars,top_ten FROM ramen_ratings;
