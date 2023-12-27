package com.enamdua.backend.satryadh.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class BusinessResponse {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String id;

    private String alias;
    private String name;
    private String image_url;

    private String location;

    private String phone;

    private String is_claimed;

    private String url;
}
