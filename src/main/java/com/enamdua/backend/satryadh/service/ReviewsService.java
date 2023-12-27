package com.enamdua.backend.satryadh.service;

import com.enamdua.backend.satryadh.model.*;
import com.enamdua.backend.satryadh.repository.ReviewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Service
public class ReviewsService {
    @Autowired
    private ReviewsRepository repository;
    @Transactional
    public CreateReviewsRequest saveReviews(int business_id, CreateReviewsRequest req) {
        CreateReviewsRequest rev = new CreateReviewsRequest();
        rev.setBusiness_id(business_id);
        rev.setUrl(req.getUrl());
        rev.setText(req.getText());
        rev.setRating(req.getRating());
        rev.setTime_created(req.getTime_created());
        rev.setUser_id(req.getUser_id());
        rev.setProfile_url(req.getProfile_url());
        rev.setImage_url(req.getImage_url());
        rev.setName(req.getName());
        return repository.save(rev);
    }


    @Transactional(readOnly = true)
    public PaginatedReviewsResponse searchReview(int business_id, SearchReviewRequest request, Pageable pageable) {
        Specification<CreateReviewsRequest> specification = (root, query, builder) -> {
            List<Predicate> predicates = new ArrayList<>();
            if (Objects.nonNull(request.getName())) {
                predicates.add(builder.or(
                        builder.like(root.get("name"), "%" + request.getName() + "%")
                ));
            }

            return query.where(predicates.toArray(new Predicate[]{})).getRestriction();
        };
        Page<CreateReviewsRequest> business = repository.findAll(business_id, specification, pageable);
        return PaginatedReviewsResponse.builder()
                .total(business.getTotalElements())
                .reviews(business.getContent())
                .build();

    }
}
