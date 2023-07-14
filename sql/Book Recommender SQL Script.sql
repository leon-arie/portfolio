
#Create the table and load the data from our Amazon review data.
DROP TABLE IF EXISTS reviews;
CREATE TABLE reviews (
  Id VARCHAR(255),
  Title VARCHAR(500),
  User_id VARCHAR(255),
  profileName VARCHAR(255),
  review_helpfulness VARCHAR(255),
  review_score FLOAT,
  review_summary TEXT,
  review_text TEXT
);
LOAD DATA INFILE '/ProgramData/MySQL/MySQL Server 5.7/Uploads/reviews.csv'
INTO TABLE reviews
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

#Create the table and load the data from our Google API data.
DROP TABLE IF EXISTS book_data;
CREATE TABLE book_data (
  Title VARCHAR(500),
  Description TEXT,
  Authors TEXT,
  Image VARCHAR(500),
  Categories TEXT
);
LOAD DATA INFILE '/ProgramData/MySQL/MySQL Server 5.7/Uploads/book_data.csv'
INTO TABLE book_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


#These tables are used in Python to quickly filiter the database. Will use these 2 tables to join them later on.
DROP TABLE IF EXISTS book_avg_score;
CREATE TABLE book_avg_score AS
SELECT reviews.Title, AVG(review_score) AS avg_review_score
FROM reviews
#WHERE
GROUP BY Title;

CREATE TABLE book_categories AS
SELECT book_data.Title, Categories
FROM book_data
#WHERE
GROUP BY Title;

#This is an exmaple of the query I use in Python to pull our book data.
SELECT reviews.Title, Description, Authors, review_score, review_text, Categories 
FROM reviews 
INNER JOIN book_data ON reviews.Title = book_data.Title  
WHERE reviews.Title IN ( 
SELECT book_avg_score.Title 
FROM book_avg_score 
INNER JOIN book_categories ON book_avg_score.Title = book_categories.Title 
WHERE avg_review_score>=4 AND Categories LIKE 'art'
);




