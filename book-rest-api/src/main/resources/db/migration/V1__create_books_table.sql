DROP TABLE IF EXISTS books CASCADE;
DROP SEQUENCE IF EXISTS books_seq;

CREATE SEQUENCE IF NOT EXISTS books_seq START WITH 1 INCREMENT BY 50;

CREATE TABLE books
(
    id             BIGINT       NOT NULL,
    created_at     TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    modified_at    TIMESTAMP WITHOUT TIME ZONE,
    book_id        VARCHAR(255) NOT NULL,
    title          VARCHAR(255) NOT NULL,
    author         VARCHAR(255) NOT NULL,
    isbn           VARCHAR(255) NOT NULL,
    published_year BIGINT       NOT NULL,
    available      BOOLEAN      NOT NULL,
    CONSTRAINT pk_books PRIMARY KEY (id)
);

ALTER TABLE books
    ADD CONSTRAINT uc_books_book UNIQUE (book_id);