package com.app.dao;

import com.app.model.Category;
import java.util.List;

public interface CategoryDao {

    Category findById(int id);

    Category findByName(String name);

    void save(Category user);

    void delete(String name);

    List<Category> findAll();
}
