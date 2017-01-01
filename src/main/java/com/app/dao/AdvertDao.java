/*
 * Copyright (c) Krakfin
 * All rights reserved
 */
package com.app.dao;

import com.app.model.Advert;
import java.util.List;

public interface AdvertDao {

    Advert findById(int id);

    Advert findByTitle(String title);

    void save(Advert user);

    void delete(int id);

    List<Advert> findAll();
}
