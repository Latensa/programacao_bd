/* Programação de Banco de Dados 
Funções e operadores de Strings e expressões*/

SELECT "Olá Mundo";

SELECT CONCAT("Olá", "2024", "mundo");

SELECT LOWER("Converte TUDO para minúsculas");

SELECT LPAD('123', 4, '0');

SELECT ' string com espaços nas extremidades ';

select TRIM(' string com espaços nas extremidades'); 

SELECT REGEXP_SUBSTR('Tem um número 12 no meio desta string', '//d+');