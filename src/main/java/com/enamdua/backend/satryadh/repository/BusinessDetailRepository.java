package com.enamdua.backend.satryadh.repository;

import com.enamdua.backend.satryadh.entity.BusinessDetail;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface BusinessDetailRepository extends JpaRepository<BusinessDetail,String> {
    Optional<BusinessDetail> findById(int id);
}

