package com.enamdua.backend.satryadh.service;

import com.enamdua.backend.satryadh.model.CreateCoordinatesRequest;
import com.enamdua.backend.satryadh.repository.CoordinatesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CoordinatesService {
    @Autowired
    private CoordinatesRepository repository;
    @Transactional
    public CreateCoordinatesRequest saveLocation(int business_id, CreateCoordinatesRequest req) {
        CreateCoordinatesRequest coor = new CreateCoordinatesRequest();
        coor.setBusiness_id(business_id);
        coor.setLatitude(req.getLatitude());
        coor.setLongitude(req.getLongitude());
        return repository.save(coor);
    }
}
