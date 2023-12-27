package com.enamdua.backend.satryadh.service;

import com.enamdua.backend.satryadh.model.CreateLocationRequest;
import com.enamdua.backend.satryadh.repository.LocationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class LocationService {
    @Autowired
    private LocationRepository repository;
    @Transactional
    public CreateLocationRequest saveLocation(int business_id, CreateLocationRequest req) {
        CreateLocationRequest location = new CreateLocationRequest();
        location.setBusiness_id(business_id);
        location.setAddress1(req.getAddress1());
        location.setAddress2(req.getAddress2());
        location.setAddress3(req.getAddress3());
        location.setCity(req.getCity());
        location.setZip_code(req.getZip_code());
        location.setCountry(req.getCountry());
        location.setState(req.getState());
        location.setCross_streets(req.getCross_streets());
        return repository.save(location);
    }
}
