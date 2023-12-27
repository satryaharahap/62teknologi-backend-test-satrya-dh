package com.enamdua.backend.satryadh.controller;

import com.enamdua.backend.satryadh.service.CoordinatesService;
import com.enamdua.backend.satryadh.model.CreateCoordinatesRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CoordinatesController {

    @Autowired
    private CoordinatesService service;
    @PostMapping("/business/{id}/coordinates")
    public CreateCoordinatesRequest saveLocation(@PathVariable int id, @RequestBody CreateCoordinatesRequest req) {
        return service.saveLocation(id,req);
    }


}
