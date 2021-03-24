PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL
);

DROP TABLE IF EXISTS questions;

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    associate_author INTEGER NOT NULL,

    FOREIGN KEY(associate_author) REFERENCES users(id)
);

DROP TABLE IF EXISTS question_follows;

CREATE TABLE question_follows (
    id INTEGER PRIMARY KEY,
    question_id INTEGER NOT NULL,
    follower_id INTEGER NOT NULL,

    FOREIGN KEY(question_id) REFERENCES questions(id)
    FOREIGN KEY(follower_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS replies;

CREATE TABLE replies (
    id INTEGER NOT NULL,

);

INSERT INTO 
    users(fname, lname)
VALUES
    ('Abir', 'AlMahamud'),
    ('Hazm', 'AlAndalusi'),
    ('Abdullah', 'AlSuhaymee'),
    ('Mahmood', 'AlKufi'),
    ('Salman', 'AlDamasci');
    

INSERT INTO
    questions(title, body, associate_author)
VALUES
    ('SQL', 'What is SQL?', 123),
    ('RUBY', 'What is ruby?', 456),
    ('JAVA', 'What is java?', 789),
    ('HTML', 'What is HTML?', 951);


