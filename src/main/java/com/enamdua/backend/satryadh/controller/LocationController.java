package com.enamdua.backend.satryadh.controller;

import com.enamdua.backend.satryadh.model.CreateLocationRequest;
import com.enamdua.backend.satryadh.service.LocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class LocationController {

    @Autowired
    private LocationService service;
    @PostMapping("/business/{id}/location")
    public CreateLocationRequest saveLocation(@PathVariable int id, @RequestBody CreateLocationRequest req) {
        return service.saveLocation(id,req);
    }


}
