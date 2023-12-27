package com.enamdua.backend.satryadh.repository;

import com.enamdua.backend.satryadh.entity.Address;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface AddressRepository extends JpaRepository<Address,Integer>,JpaSpecificationExecutor<Address> {
    Optional<Address> findById(int id);
    @Modifying
    @Query(value = "delete from address u where u.business_id =:id", nativeQuery = true)
    void deleteAddressByBusiness_id(@Param("id") int id);
}


