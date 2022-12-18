-- команди MySQL

SELECT * FROM `up`
SELECT `ID`, `name`, `phone` FROM `up`;
SELECT DISTINCT spec FROM `up`;

SELECT * FROM `up` WHERE ID = 1;
SELECT * FROM `up` WHERE surname = 'K';

SELECT * FROM `up` WHERE surname = 'H' AND spec = 'studen';
SELECT * FROM `up` WHERE `name` = 'Taras' OR `name` = 'Olga';
SELECT * FROM `up` WHERE NOT surname = 'K';
SELECT * FROM `up` WHERE NOT surname = 'K' AND NOT surname = 'H';

SELECT * FROM `up` ORDER BY name;
SELECT * FROM `up` ORDER BY surname DESC;
SELECT * FROM `up` ORDER BY surname, name;

INSERT INTO `up`(`ID`, `name`, `surname`, `phone`, `spec`, `comment`, `date`, `time`) VALUES ('6','Vlad','J','+380507775511','studen','fffrrr','2022-12-10','20:46:02');
INSERT INTO `up`(`ID`, `name`, `surname`, `phone`, `spec`, `date`, `time`) VALUES ('7','Pavlo','D','+380684442288','teacher','2022-12-10', '20:53:25');

SELECT `name`, `surname`, `comment` FROM `up` WHERE comment IS NULL;
SELECT `name`, `comment` FROM `up` WHERE comment IS NOT NULL;

UPDATE `up` SET `comment`='wwwsss' WHERE ID = 2;
UPDATE `up` SET `comment`='nnnbbb' WHERE surname = 'K';

DELETE FROM `up` WHERE name = 'Valdemar';

SELECT * FROM `up` LIMIT 3;
SELECT * FROM `up` WHERE spec = 'studen' LIMIT 4;

SELECT MIN(price) FROM `up1`;
SELECT MAX(price) FROM `up1`;

SELECT COUNT(ID) FROM `up1`;
SELECT AVG(price) FROM `up1`;
SELECT SUM(price) FROM `up1`;

SELECT * FROM `up` WHERE name LIKE 'A%';
SELECT * FROM `up` WHERE name LIKE '_a%';
SELECT * FROM `up` WHERE name NOT LIKE '_l%';

SELECT * FROM `up` WHERE spec IN ('studen', 'teacher');
SELECT * FROM `up` WHERE comment NOT IN ('nnnbbb', 'NULL');

SELECT * FROM `up1` WHERE price BETWEEN 3 AND 7;
SELECT * FROM `up1` WHERE price NOT BETWEEN 3 AND 7;
SELECT * FROM `up1` WHERE unit BETWEEN 'kg' AND 'watt' ORDER BY unit;
SELECT * FROM `up` WHERE date BETWEEN '2022-11-28' AND '2022-11-29';



-- новий урок

