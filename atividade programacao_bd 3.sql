/* Programação de banco de dados funções data e hora*/

use test;
SELECT NOW();

SELECT YEAR('2020-09-01 23:33:25');

SELECT YEAR(NOW());

SELECT dayofyear('2020-02-01');

SELECT str_to_date('01/02/2020', '%d/%m/%Y');

SELECT DATE_FORMAT('2020-09-01 23:33:25', '%d/%m/%Y');

SELECT CONCAT("Esse é o número ", 10);

SELECT CAST('2020-02-02 12:12:12' as date);