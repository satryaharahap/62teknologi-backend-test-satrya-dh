package com.enamdua.backend.satryadh.repository;

import com.enamdua.backend.satryadh.entity.Reviews;
import com.enamdua.backend.satryadh.model.CreateReviewsRequest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface ReviewsRepository extends JpaRepository<CreateReviewsRequest,Integer>,JpaSpecificationExecutor<CreateReviewsRequest> {
    @Modifying
    @Transactional
    @Query(value="delete from reviews where business_id = ?1 ", nativeQuery = true)
    void deleteByBusinessId(Integer business_id);

    @Transactional
    @Query(value="select * from reviews where business_id = ?1 ", nativeQuery = true)
    List<CreateReviewsRequest> findByBusiness_id(Integer business_id);
    @Transactional
    @Query(value="select * from reviews where business_id = ?1 ", nativeQuery = true)
    Page<CreateReviewsRequest> findAll(Integer business_id, Specification<CreateReviewsRequest> specification, Pageable pageable);
}


