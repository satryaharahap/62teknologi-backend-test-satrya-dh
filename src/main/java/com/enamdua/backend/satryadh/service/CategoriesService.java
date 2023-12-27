package com.enamdua.backend.satryadh.service;

import com.enamdua.backend.satryadh.repository.CategoriesRepository;
import com.enamdua.backend.satryadh.model.CreateCategoriesRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CategoriesService {
    @Autowired
    private CategoriesRepository repository;
    @Transactional
    public CreateCategoriesRequest saveCategories(int business_id, CreateCategoriesRequest req) {
        CreateCategoriesRequest cat = new CreateCategoriesRequest();
        cat.setBusiness_id(business_id);
        cat.setAlias(req.getAlias());
        cat.setTitle(req.getTitle());
        return repository.save(cat);
    }
}
