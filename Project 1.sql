# Project 1
-- Q1
CREATE SCHEMA ecommerce;
USE ecommerce;

-- Q2
-- Import the .csv file, but it import very slowly
-- Attached a sreenshots Sql-Project-1.1, Sql-Project-1.2

-- Q3
SELECT * FROM users_data;
SELECT COUNT(*) FROM users_data;
DESC users_data;

-- Q4
SELECT * FROM users_data LIMIT 100;

-- Q5 
SELECT DISTINCT country FROM users_data;
SELECT DISTINCT language FROM users_data;

-- Q5 Remarks
SELECT 'Country' Distinct_Name, COUNT( DISTINCT country) Distinct_Value FROM users_data UNION SELECT 'Language', COUNT( DISTINCT language) FROM users_data;

-- Q6
SELECT gender, COUNT(gender) Total_user FROM users_data GROUP BY gender;
-- Answer : Female Followers

-- Q7
SELECT COUNT(hasProfilePicture) Picture_user FROM users_data WHERE hasProfilePicture = 'True';
SELECT COUNT(hasAnyApp) Any_App_user FROM users_data WHERE hasAnyApp = 'True';
SELECT COUNT(hasAndroidApp) Android_user FROM users_data WHERE hasAndroidApp = 'True';
SELECT COUNT(hasIosApp) Ios_user FROM users_data WHERE hasIosApp = 'True';

-- Q8
SELECT country, COUNT(productsBought) Total FROM users_data GROUP BY country ORDER BY productsBought DESC;

-- Q9
SELECT country, COUNT(productsSold) Total FROM users_data GROUP BY country ORDER BY productsSold;

-- Q10
SELECT productsPassRate FROM users_data ORDER BY productsPassRate DESC LIMIT 10;

-- Q11
SELECT language, COUNT(identifierHash) No_of_users FROM users_data GROUP BY language;

-- Q12
SELECT gender FROM users_data WHERE gender = 'F' UNION SELECT count(socialProductsLiked) FROM users_data WHERE gender = 'F';


-- Q13
SELECT gender FROM users_data WHERE gender = 'M' UNION SELECT count(productsSold) FROM users_data WHERE gender = 'M';

-- Q14
SELECT country, MAX(productsBought) Maximum FROM users_data;

-- Q15
SELECT country, productsSold FROM users_data ORDER BY productsSold LIMIT 10;

-- Q16
SELECT daysSinceLastLogin FROM users_data ORDER BY daysSinceLastLogin LIMIT 110;

-- Q17
SELECT gender, daysSinceLastLogin FROM users_data WHERE gender = 'F' AND daysSinceLastLogin > 100;

-- Q18
SELECT country, COUNT(gender) Female_user FROM users_data WHERE gender = 'F' GROUP BY country;

-- Q19
SELECT country, COUNT(gender) Male_user FROM users_data WHERE gender = 'M' GROUP BY country;

-- Q20
SELECT country, AVG(productsSold) Average_sold, AVG(productsBought) Average_Bought, COUNT(gender) Male_user FROM users_data WHERE gender = 'M' GROUP BY country;