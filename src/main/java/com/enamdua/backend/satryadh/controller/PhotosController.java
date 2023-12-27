package com.enamdua.backend.satryadh.controller;

import com.enamdua.backend.satryadh.model.CreatePhotosRequest;
import com.enamdua.backend.satryadh.service.PhotosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PhotosController {

    @Autowired
    private PhotosService service;
    @PostMapping("/business/{id}/photos")
    public CreatePhotosRequest savePhotos(@PathVariable int id, @RequestBody CreatePhotosRequest req) {
        return service.savePhotos(id,req);
    }


}
