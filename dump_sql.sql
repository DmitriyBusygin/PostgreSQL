--Дамп БД:
  --Создание пользователя "dmitry.busugin"
  CREATE USER "dmitry.busugin" WITH password ‘password’;
  
  --Создание БД и присвоение ей владельца
  CREATE DATABASE "dmitry.busugin"  WITH OWNER = "dmitry.busugin";
  
  --Создание таблицы users и присвоение владельца "dmitry.busugin"
  CREATE TABLE users (
    client_id character varying(30) NOT NULL PRIMARY KEY,
    client_name character varying(50) NOT NULL);
  ALTER TABLE messages OWNER TO "dmitry.busugin";
  
  --Создание таблицы messages и присвоение владельца "dmitry.busugin"
  CREATE TABLE messages (
    id serial NOT NULL PRIMARY KEY,
    client_id character varying(30),
    message character varying(300),
    FOREIGN KEY (client_id) REFERENCES users (client_id));
  ALTER TABLE messages OWNER TO "dmitry.busugin";
  
--Заполняем таблицу тестовыми данными
	--users:
	INSERT INTO users(client_id, client_name)
		VALUES ('Дмитрий', 'Дмитрий Владимирович'),
		VALUES ('Катя', 'Катя Чеботарева'),
		VALUES ('Марина', 'Марина Зайцева'),
		VALUES ('Саша', 'Саша Семенов');
  
	--users:
	INSERT INTO messages(client_id, message)
		VALUES ('Дмитрий', 'Привет. Сегодня все идем на выставку.'),
		VALUES ('Катя', 'Привет. Хорошо, во сколько встречаемся и где?.'),
		VALUES ('Саша', 'Привет. Сколько с собой взять денег?.'),
		VALUES ('Дмитрий', 'В 18:00 у часов на баумана.'),
		VALUES ('Дмитрий', 'Билет стоит 300р на выставку.'),
		VALUES ('Марина', 'Всем привет. Хорошо, я буду!.'),
		VALUES ('Катя', 'Хорошо, я буду у часов.'),
		VALUES ('Саша', 'Я приду, но опоздаю на 15 мин.'),
		VALUES ('Дмитрий', 'Хорошо, тогда до встречи.');