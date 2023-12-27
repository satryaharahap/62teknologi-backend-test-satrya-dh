package com.enamdua.backend.satryadh.model;

import com.enamdua.backend.satryadh.entity.Business;
import com.enamdua.backend.satryadh.entity.Reviews;
import lombok.Builder;
import lombok.Data;

import java.util.List;

@Data
@Builder
public class PaginatedReviewsResponse {
    private List<CreateReviewsRequest> reviews;
    private Long total;
}
