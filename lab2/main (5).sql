-- Online SQL Editor to Run SQL Online.
-- Use the editor to create new tables, insert data and all other SQL operations.
  
--Клитная М8О-308Б-20 
--1. ТАБЛИЦЫ И СХЕМА ДАННЫХ
--Необходимо описать включенные в БД таблицы. При описании каждой таблицы  необходимо указывать для каждого поля тип данных, а также другие характеристики (длину поля, маску ввода, значение по умолчанию и т.п.), для некоторых полей выполнить проверку правильности ввода исходных данных. Определить первичные ключи и ключи связи.
--В отчете  обязательно приводится разработанная схема данных.
--Демонстрационных записей в каждой таблице не менее пяти. В связующей таблице - не менее десяти.
--
--2.СХЕМА в ErWin.
--Для разработанной БД дать логическую схему, физическую схему и описание сгенерированной БД 
--
--Вариант 19. Создание и заполнение отношений БД библиотеки.
--1.  	Отношение "Рубрикатор" (поля "Шифр" (ПК) и "Название рубрики").
--2.  	Отношение "Каталог книг":
--3.  	Отношение "Читатели" (поля "Идентификатор" (ПК), "Фамилия", "Имя, отчество", "Адрес" и "Паспортные данные", "E-mail").
--4.  	Отношение "Абонемент" (поля "Читатель" (ВнК), "Книга" (ВнК), "Дата выдачи" и "Дата возврата").


-- create a table
CREATE TABLE rubricator (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE book_catalog (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  author TEXT NOT NULL,
  publicion data NOT NULL,
  publicion_house TEXT NOT NULL,
  rubricator_id INTEGER NOT NULL
);

CREATE TABLE readers (
  id INTEGER PRIMARY KEY,
  subname TEXT NOT NULL,
  name TEXT NOT NULL,
  adres TEXT NOT NULL,
  pasport_data INTEGER NOT NULL,
  email TEXT NOT NULL
);

CREATE TABLE subscription (
  reader TEXT NOT NULL,
  book TEXT NOT NULL,
  extradition data NOT NULL,
  change_ data NOT NULL
  
);

-- insert some values
INSERT INTO rubricator VALUES (1, 'поэзия');
INSERT INTO rubricator VALUES (2, 'повести');
INSERT INTO rubricator VALUES (3, 'романы');
INSERT INTO rubricator VALUES (4, 'учебные пособия');
INSERT INTO rubricator VALUES (5, 'справочники');
INSERT INTO rubricator VALUES (6, 'фанфики');
INSERT INTO rubricator VALUES (7, 'детское питание');


INSERT INTO book_catalog VALUES (31, 'стихи', 'Есенин', '2021-03-09' , 'Октябрь', 1);
INSERT INTO book_catalog VALUES (32, 'капитанская дочка', 'Пушкин', '2019-03-13' , 'Солнышко', 2);
INSERT INTO book_catalog VALUES (33, 'Курс квантовой физики', 'Иродов', '2019-07-08' , 'Октябрь', 4);
INSERT INTO book_catalog VALUES (34, 'англо-русский словарь', 'Корбей', '2019-12-12' , 'Роза', 5);
INSERT INTO book_catalog VALUES (35, 'Война и мир', 'Толстой', '2018-20-20' , 'Роза', 3);
INSERT INTO book_catalog VALUES (36, 'the relational model for database management', 'Кодд', '2017-09-30' , 'Октябрь', 4);
INSERT INTO book_catalog VALUES (37, 'Cellular automata', 'Кодд', '2022-06-10' , 'Октябрь', 4);


INSERT INTO readers VALUES (11, 'Иванов', 'Иван', 'ул Ленина', 1234567891 ,'iv@mail');
INSERT INTO readers VALUES (12, 'Шанина', 'Елена', 'ул Ленина', 2345678912 ,'sh@mail');
INSERT INTO readers VALUES (13, 'Соколов', 'Алексей', 'ул Паршина', 3456789123 ,'cok@mail');
INSERT INTO readers VALUES (14, 'Сорокина', 'Анна', 'ул Ленина', 4567891234 ,'an@mail');
INSERT INTO readers VALUES (15, 'Кошков', 'Иван', 'ул Ленина', 5678912345 ,'cat@mail');

INSERT INTO subscription VALUES ('Иванов', 'капитанская дочка', '2021-09-10', '2021-09-30');
INSERT INTO subscription VALUES ('Шанина', 'англо-русский словарь', '2020-11-09', '2021-01-01');
INSERT INTO subscription VALUES ('Сорокина', 'Война и мир', '2020-01-05', '2019-08-07');
INSERT INTO subscription VALUES ('Сорокина', 'стихи', '2022-04-04', '2022-04-07');
INSERT INTO subscription VALUES ('Шанина', 'Курс квантовой физики', '2021-12-12', '2021-12-31');
INSERT INTO subscription VALUES ('Иванов', 'Курс квантовой физики', '2020-09-21', '2020-10-01');
INSERT INTO subscription VALUES ('Кошков', 'англо-русский словарь', '2018-07-12', '2018-07-13');
INSERT INTO subscription VALUES ('Соколов', 'стихи', '2022-09-01', '2022-09-04');
INSERT INTO subscription VALUES ('Кошков', 'Курс квантовой физики', '2022-06-18', '2022-06-28');
INSERT INTO subscription VALUES ('Соколов', 'капитанская дочка', '2020-11-13', '2020-11-30');
INSERT INTO subscription VALUES ('Иванов', 'Cellular automata', '2017-10-01', '2017-10-30');


-- fetch some values
SELECT * FROM subscription;
SELECT * FROM book_catalog;