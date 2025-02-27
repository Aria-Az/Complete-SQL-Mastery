-- Formatting Dates and Times

SELECT DATE_FORMAT(NOW(), '%y ') -- TWO DIGIT YEAR
SELECT DATE_FORMAT(NOW(), '%Y ') -- FOUR DIGIT YEAR
SELECT DATE_FORMAT(NOW(), '%m %Y ') -- TWO DIGIT MONTH
SELECT DATE_FORMAT(NOW(), '%M %Y ') -- STRING MONTH
SELECT DATE_FORMAT(NOW(), '%M %d %Y ') -- March 11 2019

-- search mysql date format string on google and format specifier and its description

SELECT TIME_FORMAT(NOW(), '%H:%i ') -- hour and minute
SELECT TIME_FORMAT(NOW(), '%H:%i %p ') -- hour and minute with pm
