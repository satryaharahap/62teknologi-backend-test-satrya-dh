package com.enamdua.backend.satryadh.repository;

import com.enamdua.backend.satryadh.model.CreateTransactionsRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface TransactionsRepository extends JpaRepository<CreateTransactionsRequest,Integer>,JpaSpecificationExecutor<CreateTransactionsRequest> {

    @Modifying
    @Transactional
    @Query(value="delete from transactions where business_id = ?1 ", nativeQuery = true)
    void deleteByBusinessId(Integer business_id);
}


