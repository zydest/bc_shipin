package com.kiwi.app.dao;

import com.kiwi.app.models.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by yue on 17/7/1.
 */
public interface ProductDao extends JpaRepository<Product, Long> {

    public Product findByName(String name);

    @Query(value = "SELECT * FROM Product LIMIT ?1, ?2 ",
            nativeQuery = true)
    List<Product> findTop10(int start, int limit);
}
