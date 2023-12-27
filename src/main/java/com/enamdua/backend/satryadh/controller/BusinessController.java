package com.enamdua.backend.satryadh.controller;

import com.enamdua.backend.satryadh.entity.Business;
import com.enamdua.backend.satryadh.entity.BusinessDetail;
import com.enamdua.backend.satryadh.model.SearchBusinessRequest;
import com.enamdua.backend.satryadh.service.BusinessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
public class BusinessController {

    @Autowired
    private BusinessService service;
    @PostMapping("/business")
    public Business saveBusiness(@RequestBody Business req) {
        return service.saveBusiness(req);
    }

    @PutMapping("/business/{id}")
    public Business updateBusiness(@PathVariable int id, @RequestBody Business req) {
        return service.updateBusiness(id, req);
    }
    @DeleteMapping("/business/{id}")
    public String deleteBusiness(@PathVariable int id) {
        return service.deleteBusiness(id);
    }

    @GetMapping("/business/{id}")
    public Optional<BusinessDetail> getBusinessById(@PathVariable int id) {
        return service.getBusinessById(id);
    }

    @GetMapping("/business/search")
    public ResponseEntity readBusinessWithFilter (SearchBusinessRequest search,
                                                  Pageable pageable) {
        return ResponseEntity.ok(service.search(search, pageable));

    }


}
