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
  rubr INTEGER NOT NULL
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
  extradition TEXT NOT NULL,
  change_ TEXT NOT NULL
  
);

-- insert some values
INSERT INTO rubricator VALUES (1, 'поэзия');
INSERT INTO rubricator VALUES (2, 'повести');
INSERT INTO rubricator VALUES (3, 'романы');
INSERT INTO rubricator VALUES (4, 'учебные пособия');
INSERT INTO rubricator VALUES (5, 'справочники');

INSERT INTO book_catalog VALUES (31, 'стихи', 'Есенин', 1);
INSERT INTO book_catalog VALUES (32, 'капитанская дочка', 'Пушкин', 3);
INSERT INTO book_catalog VALUES (33, 'Курс квантовой физики', 'Иродов', 4);
INSERT INTO book_catalog VALUES (34, 'англо-русский словарь', 'Корбей', 5);
INSERT INTO book_catalog VALUES (35, 'Война и мир', 'Толстой', 2);

INSERT INTO readers VALUES (11, 'Иванов', 'Иван', 'ул Ленина', 1234567891 ,'iv@mail');
INSERT INTO readers VALUES (12, 'Шанина', 'Елена', 'ул Ленина', 2345678912 ,'sh@mail');
INSERT INTO readers VALUES (13, 'Соколов', 'Алексей', 'ул Паршина', 3456789123 ,'cok@mail');
INSERT INTO readers VALUES (14, 'Сорокина', 'Анна', 'ул Ленина', 4567891234 ,'an@mail');
INSERT INTO readers VALUES (15, 'Кошков', 'Иван', 'ул Ленина', 5678912345 ,'cat@mail');

INSERT INTO subscription VALUES ('Иванов', 'капитанская дочка', '10 июня', '10 августа');
INSERT INTO subscription VALUES ('Шанина', 'англо-русский словарь', '9 октября', '8 ноября');
INSERT INTO subscription VALUES ('Сорокина', 'Война и мир', '5 ноября', '7 августа');
INSERT INTO subscription VALUES ('Сорокина', 'стихи', '4 мая', '7 июля');
INSERT INTO subscription VALUES ('Шанина', 'Курс квантовой физики', '12 июня', '1 сентября');
INSERT INTO subscription VALUES ('Иванов', 'Курс квантовой физики', '21 июня', '23 сентября');
INSERT INTO subscription VALUES ('Кошков', 'англо-русский словарь', '12 декабря', '23 декабря');
INSERT INTO subscription VALUES ('Соколов', 'стихи', '1 октября', '4 января');
INSERT INTO subscription VALUES ('Кошков', 'Курс квантовой физики', '1 сентября', '8 мая');
INSERT INTO subscription VALUES ('Соколов', 'капитанская дочка', '1 декабря', '5 января');

-- fetch some values
SELECT * FROM subscription;
SELECT * FROM book_catalog;