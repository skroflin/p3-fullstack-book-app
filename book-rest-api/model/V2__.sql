CREATE SEQUENCE IF NOT EXISTS books_seq START WITH 1 INCREMENT BY 50;

CREATE TABLE books
(
    id             BIGINT  NOT NULL,
    book_id        UUID,
    title          VARCHAR(255),
    author         VARCHAR(255),
    isbn           VARCHAR(255),
    published_year BIGINT,
    available      BOOLEAN NOT NULL,
    CONSTRAINT pk_books PRIMARY KEY (id)
);