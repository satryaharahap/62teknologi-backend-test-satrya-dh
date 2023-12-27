package com.enamdua.backend.satryadh.service;

import com.enamdua.backend.satryadh.entity.Business;
import com.enamdua.backend.satryadh.entity.BusinessDetail;
import com.enamdua.backend.satryadh.model.BusinessResponse;
import com.enamdua.backend.satryadh.model.SearchBusinessRequest;
import com.enamdua.backend.satryadh.repository.*;
import com.enamdua.backend.satryadh.model.PaginatedBusinessResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.Predicate;
import java.util.*;

@Service
public class BusinessService {
    @Autowired
    private BusinessRepository repository;
    @Autowired
    private LocationRepository repositoryLocation;
    @Autowired
    private TransactionsRepository repositoryTransactions;
    @Autowired
    private PhotosRepository repositoryPhotos;
    @Autowired
    private CoordinatesRepository repositoryCoordinates;
    @Autowired
    private CategoriesRepository repositoryCategories;
    @Autowired
    private BusinessDetailRepository rd;
    @Transactional
    public Business saveBusiness(Business req) {
        Business bis = new Business();
        bis.setAlias(req.getAlias());
        bis.setName(req.getName());
        bis.setImage_url(req.getImage_url());
        bis.setIsClosed(req.getIsClosed());
        bis.setUrl(req.getUrl());
        bis.setReview_count(req.getReview_count());
        bis.setRating(req.getRating());
        bis.setPrice(req.getPrice());
        bis.setPhone(req.getPhone());
        bis.setDisplay_phone(req.getDisplay_phone());
        bis.setDistance(req.getDistance());
        return repository.save(bis);
    }
    public Business updateBusiness(int business_id, Business req) {
        Business business = repository.findById(business_id).orElse(null);
        business.setAlias(req.getAlias());
        business.setName(req.getName());
        business.setImage_url(req.getImage_url());
        business.setUrl(req.getUrl());
        business.setReview_count(req.getReview_count());
        business.setRating(req.getRating());
        business.setPrice(req.getPrice());
        business.setPhone(req.getDisplay_phone());
        business.setDisplay_phone(req.getDisplay_phone());
        business.setDistance(req.getDistance());
        return repository.save(business);
    }
    public String deleteBusiness(int id) {
        deleteTransactions(id);
        deletePhotos(id);
        deleteCoordinates(id);
        deleteCategories(id);
        deleteLocation(id);
        deleteReviews(id);
        repository.deleteById(id);
        return "product removed !! " +  id;
    }
    public String deleteTransactions(int id) {
        repositoryTransactions.deleteByBusinessId(id);
        return "Transactions removed !! " +  id;
    }
    public String deletePhotos(int id) {
        repositoryPhotos.deleteByBusinessId(id);
        return "Photos removed !! " +  id;
    }
    public String deleteCoordinates(int id) {
        repositoryCoordinates.deleteByBusinessId(id);
        return "Coordinates removed !! " +  id;
    }
    public String deleteCategories(int id) {
        repositoryCategories.deleteByBusinessId(id);
        return "Categories removed !! " +  id;
    }
    public String deleteLocation(int id) {
        repositoryLocation.deleteByBusinessId(id);
        return "location removed !! " +  id;
    }

    public String deleteReviews(int id) {
        repositoryLocation.deleteByBusinessId(id);
        return "reviews removed !! " +  id;
    }

    public List<Business> getBusiness() {
        return repository.findAll();
    }
    public Optional<BusinessDetail> getBusinessById(int id) {
        return rd.findById(id);
    }

    @Transactional(readOnly = true)
    public PaginatedBusinessResponse search(SearchBusinessRequest request,Pageable pageable) {
        Specification<Business> specification = (root, query, builder) -> {
            List<Predicate> predicates = new ArrayList<>();
            if (Objects.nonNull(request.getLocation())) {
                predicates.add(builder.or(
                        builder.like(root.get("city"), "%" + request.getLocation() + "%"),
                        builder.like(root.get("state"), "%" + request.getLocation() + "%"),
                        builder.like(root.get("address1"), "%" + request.getLocation() + "%")
                ));
            }
            if (Objects.nonNull(request.getTerm())) {
                predicates.add(builder.or(
                        builder.like(root.get("name"), "%" + request.getTerm() + "%")
                ));
            }
            if (Objects.nonNull(request.getPrice())) {
                predicates.add(builder.or(
                        builder.like(root.get("price"), "%" + request.getPrice() + "%")
                ));
            }

            if (Objects.nonNull(request.getDistance())) {
                predicates.add(builder.or(
                        builder.lessThanOrEqualTo(root.get("distance"), request.getDistance())
                ));
            }
            if (Objects.nonNull(request.getSort_by())) {
                if(request.getSort_by().equals("rating")){
                    query.orderBy(builder.desc(root.get("rating")));
                }else if(request.getSort_by().equals("review_count")){
                    query.orderBy(builder.desc(root.get("review_count")));;
                }else if(request.getSort_by().equals("distance")){
                    query.orderBy(builder.desc(root.get("distance")));;
                }

            }


            return query.where(predicates.toArray(new Predicate[]{})).getRestriction();
        };
        Page<Business> business = repository.findAll(specification, pageable);
        return PaginatedBusinessResponse.builder()
                .total(business.getTotalElements())
                .businesses(business.getContent())
                .build();

    }

}
