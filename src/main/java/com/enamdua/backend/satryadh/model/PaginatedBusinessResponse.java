package com.enamdua.backend.satryadh.model;

import com.enamdua.backend.satryadh.entity.Business;
import lombok.Builder;
import lombok.Data;

import java.util.List;
@Data
@Builder
public class PaginatedBusinessResponse {
    private List<Business> businesses;
    private Long total;
}
