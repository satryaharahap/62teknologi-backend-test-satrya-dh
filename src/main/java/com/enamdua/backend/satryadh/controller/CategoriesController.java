package com.enamdua.backend.satryadh.controller;

import com.enamdua.backend.satryadh.model.CreateCategoriesRequest;
import com.enamdua.backend.satryadh.service.CategoriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CategoriesController {

    @Autowired
    private CategoriesService service;
    @PostMapping("/business/{id}/categories")
    public CreateCategoriesRequest saveCategories(@PathVariable int id, @RequestBody CreateCategoriesRequest req) {
        return service.saveCategories(id,req);
    }


}
