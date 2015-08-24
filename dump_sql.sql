-- Создаем БД и устанавливаем владельца БД
CREATE DATABASE "dmitry.busugin"
  WITH OWNER = "dmitry.busugin"
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Russian_Russia.1251'
       LC_CTYPE = 'Russian_Russia.1251';       
	   
--Создаем таблицу messages (id – порядковый номер сообщения,  client_id – идентификатор клиента, message – текст сообщения клиента.)
CREATE TABLE messages
(
  id serial PRIMARY KEY,
  client_id character varying(30) NOT NULL,
  message character varying(300) NOT NULL
)

--Устанавливаем владельца таблицы
ALTER TABLE messages
  OWNER TO "dmitry.busugin";
  
--Заполняем таблицу тестовыми данными
INSERT INTO messages(client_id, message) VALUES 
	('Дима', 'Всем привет. Завтра встречаемся в 15:00 у часов на баумана.'),
	('Алла', 'Привет, хорошо.'),
	('Сережа', 'Я приду чуть позже, надо съездить на вокзал.'),
	('Катя', 'Хорошо.'),
	('Дима', 'Ок. Возьмите с собой одежду которую не жалко, пойдем играть в пейнтбол.'),
	('Дима', 'Как раз обещают хорошую погоду.'),
	('Катя', 'Круто! А то вся неделя хмурая была, а тут солнце будет.'),
	('Сережа', 'Очень хорошо.'),
	('Алла', 'Хорошо, поняла.'),
	('Дима', 'Тогда до встречи!');