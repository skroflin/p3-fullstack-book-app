package com.skroflin.bookrestapi.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.*;

import java.util.UUID;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "books")
public class BookEntity extends BaseEntity{

    @Column(name = "book_id", nullable = false, unique = true)
    private String bookId = UUID.randomUUID().toString();

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String author;

    @Column(nullable = false)
    private String isbn;

    @Column(name = "published_year", nullable = false)
    private Long publishedYear;

    private boolean available;
}
