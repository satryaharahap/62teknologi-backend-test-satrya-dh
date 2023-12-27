package com.enamdua.backend.satryadh.service;

import com.enamdua.backend.satryadh.model.CreatePhotosRequest;
import com.enamdua.backend.satryadh.repository.PhotosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PhotosService {
    @Autowired
    private PhotosRepository repository;
    @Transactional
    public CreatePhotosRequest savePhotos(int business_id, CreatePhotosRequest req) {
        CreatePhotosRequest photo = new CreatePhotosRequest();
        photo.setBusiness_id(business_id);
        photo.setPhotos(req.getPhotos());
        return repository.save(photo);
    }
}
