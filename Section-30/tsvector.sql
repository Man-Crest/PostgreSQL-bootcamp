SELECT to_tsvector('washes');
SELECT to_tsvector('washed');
SELECT to_tsvector('washing');  

SELECT to_tsvector('my name is man, i will complete my course before the end of april')


SELECT to_tsvector('my name is man, i will complete my course before the end of april')
@@ to_tsquery('name') --names/naming/named also true

SELECT to_tsvector('my name is man, i will complete my course before the end of april')
@@ to_tsquery('name & course')

SELECT to_tsvector('my name is man, i will complete my course before the end of april')
@@ to_tsquery('name | sddvfd')

SELECT to_tsvector('my name is man, i will complete my course before the end of april')
@@ to_tsquery('(man & name) | (complete & !fdbdfb)')



CREATE TABLE random_table (
    id SERIAL PRIMARY KEY,
    details VARCHAR(150)
);

INSERT INTO random_table (details) VALUES
('The quick brown fox jumps over the lazy dog.'),
('A journey of a thousand miles begins with a single step.'),
('All that glitters is not gold.'),
('Actions speak louder than words.'),
('Beauty is in the eye of the beholder.'),
('Better late than never.'),
('Birds of a feather flock together.'),
('Curiosity killed the cat.'),
('Don''t count your chickens before they hatch.'),
('Don''t put all your eggs in one basket.'),
('Every cloud has a silver lining.'),
('Fortune favors the bold.'),
('Honesty is the best policy.'),
('If at first you don''t succeed, try, try again.'),
('Ignorance is bliss.'),
('It takes two to tango.'),
('Keep your friends close and your enemies closer.'),
('Laughter is the best medicine.'),
('Life is like a box of chocolates; you never know what you''re gonna get.'),
('Look before you leap.'),
('Love conquers all.'),
('Money doesn''t grow on trees.'),
('No pain, no gain.'),
('Once bitten, twice shy.'),
('Practice makes perfect.'),
('Rome wasn''t built in a day.'),
('The early bird catches the worm.'),
('The pen is mightier than the sword.'),
('There''s no place like home.'),
('Time heals all wounds.'),
('To be or not to be, that is the question.'),
('Two heads are better than one.'),
('When in Rome, do as the Romans do.'),
('Where there''s a will, there''s a way.'),
('You can''t judge a book by its cover.'),
('You reap what you sow.'),
('Absence makes the heart grow fonder.'),
('Actions speak louder than words.'),
('A penny for your thoughts.'),
('Blood is thicker than water.'),
('Brevity is the soul of wit.'),
('Cleanliness is next to godliness.'),
('Don''t cry over spilled milk.'),
('Don''t put the cart before the horse.'),
('Easy come, easy go.'),
('Familiarity breeds contempt.'),
('Give credit where credit is due.'),
('Good things come to those who wait.');

ALTER TABLE random_table
ADD COLUMN ts_search_dateail  VARCHAR(150);

UPDATE random_table
SET ts_search_dateail = to_tsvector(details)

select * from random_table


select details from random_table
WHERE ts_search_dateail @@ to_tsquery('look')


SELECT * 
FROM random_table 
WHERE ts_search_dateail @@ to_tsquery('thousand <-> miles');


-- NOTE: ts_headline() used in select not in where

--NOTE: ts_rank()














