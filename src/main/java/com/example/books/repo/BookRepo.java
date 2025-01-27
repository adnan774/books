package com.example.books.repo;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.books.entity.Book;

public interface BookRepo extends JpaRepository<Book, Integer> {

    List<Book> findByAuthor(String author);
    //public List<Book> findByPrice(double price);
}
