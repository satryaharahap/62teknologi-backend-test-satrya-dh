package com.enamdua.backend.satryadh.repository;

import com.enamdua.backend.satryadh.entity.Business;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.Optional;
@Repository
public interface BusinessRepository extends JpaRepository<Business,Integer>,JpaSpecificationExecutor<Business> {
    Optional<Business> findById(int id);
    Page<Business> findAllByNameContains(String name, Pageable pageable);

}



