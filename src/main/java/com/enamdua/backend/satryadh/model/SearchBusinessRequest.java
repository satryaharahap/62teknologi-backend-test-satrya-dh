package com.enamdua.backend.satryadh.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SearchBusinessRequest {

    private String location;

    private String latitude;

    private String longitude;
    private String term;
    private String radius;
    private String categories;
    private String locale;
    private String price;
    private String open_now;
    private String sort_by;
    private String distance;

    @NotNull
    private Integer limit;

    @NotNull
    private Integer offset;
}
