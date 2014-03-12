DROP TABLE IF EXISTS voice;
CREATE TABLE voice(
	id SERIAL,
	user_id INTEGER,
	who VARCHAR(50),
	place VARCHAR(50),
	title TEXT,
	text TEXT NOT NULL,
	melancholy INTEGER,
	sad INTEGER,
	worry INTEGER,
	angry INTEGER,
	think TEXT,
	unbalance_1 BOOLEAN,
	unbalance_2 BOOLEAN,
	unbalance_3 BOOLEAN,
	unbalance_4 BOOLEAN,
	unbalance_5 BOOLEAN,
	unbalance_6 BOOLEAN,
	unbalance_7 BOOLEAN,
	unbalance_8 BOOLEAN,
	unbalance_9 BOOLEAN,
	unbalance_10 BOOLEAN,
	monster VARCHAR(30),
	max_hp INTEGER,
	hp INTEGER,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(id)
);

DROP TABLE IF EXISTS user_info;
CREATE TABLE user_info(
	id SERIAL,
	email VARCHAR(200),
	name VARCHAR(50) UNIQUE,
	pass VARCHAR(15),
	sex CHAR(1),
	birth DATE,
	img VARCHAR(100),
	level INTEGER DEFAULT 1,
	ex INTEGER DEFAULT 0,
	attack INTEGER DEFAULT 100,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(id)
);

DROP TABLE IF EXISTS levels;
CREATE TABLE levels(
	num INTEGER NOT NULL,
	ex INTEGER NOT NULL,
	PRIMARY KEY(num)
);

DROP TABLE IF EXISTS monster;
CREATE TABLE monster(
	name VARCHAR(30),
	melancholy INTEGER,
	sad INTEGER,
	worry INTEGER,
	angry INTEGER,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(name)
);

DROP TABLE IF EXISTS answer;
CREATE TABLE answer(
	id SERIAL,
	voice_id INTEGER NOT NULL,
	text TEXT NOT NULL,
	user_id INTEGER,
	attack INTEGER,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(id)
);

DROP TABLE IF EXISTS answer_value;
CREATE TABLE answer_value(
	id SERIAL,
	answer_id INTEGER NOT NULL,
	user_id INTEGER NOT NULL,
	good INTEGER,
	bad INTEGER,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(id)
);