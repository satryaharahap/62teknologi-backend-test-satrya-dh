package com.enamdua.backend.satryadh.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "location")
public class CreateLocationRequest {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int business_id;
    private String address1;
    private String address2;
    private String address3;
    private String city;
    private String zip_code;
    private String country;
    private String state;
    private String cross_streets;


}
