package com.enamdua.backend.satryadh.controller;

import com.enamdua.backend.satryadh.entity.Business;
import com.enamdua.backend.satryadh.entity.BusinessDetail;
import com.enamdua.backend.satryadh.entity.Reviews;
import com.enamdua.backend.satryadh.model.CreatePhotosRequest;
import com.enamdua.backend.satryadh.model.CreateReviewsRequest;
import com.enamdua.backend.satryadh.model.SearchBusinessRequest;
import com.enamdua.backend.satryadh.model.SearchReviewRequest;
import com.enamdua.backend.satryadh.service.PhotosService;
import com.enamdua.backend.satryadh.service.ReviewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
public class ReviewsController {

    @Autowired
    private ReviewsService service;
    @PostMapping("/business/{id}/reviews")
    public CreateReviewsRequest saveReviews(@PathVariable int id, @RequestBody CreateReviewsRequest req) {
        return service.saveReviews(id,req);
    }

    @GetMapping("/business/{id}/reviews")
    public ResponseEntity getBusinessByReviews(@PathVariable int id, SearchReviewRequest search,
                                               Pageable pageable) {
        return ResponseEntity.ok(service.searchReview(id, search, pageable));
    }
}
