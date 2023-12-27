package com.enamdua.backend.satryadh.entity;

import com.fasterxml.jackson.annotation.JsonGetter;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "business")
public class Business {

    @Id
    @GeneratedValue
    private int id;
    private String alias;
    private String name;
    private String image_url;
    @Column(name = "is_closed")
    private boolean IsClosed;
    @JsonGetter("is_closed")
    public boolean getIsClosed() {
        return this.IsClosed;
    }
    private String url;
    private int review_count;
    @OneToMany(fetch = FetchType.LAZY,
            cascade = {
                    CascadeType.PERSIST,
                    CascadeType.MERGE
            })
    @JoinColumn(name = "business_id", referencedColumnName = "id")
    private Set<Categories> categories = new HashSet<>();
    private double rating;
    @OneToMany(fetch = FetchType.LAZY,
            cascade = {
                    CascadeType.PERSIST,
                    CascadeType.MERGE
            })
    @JoinColumn(name = "business_id", referencedColumnName = "id")
    private Set<Coordinates> coordinates = new HashSet<>();
    @OneToMany
    @JoinColumn(name = "business_id", referencedColumnName = "id")
    List<Transactions> transactions;
    private String price;
    @OneToMany
    @JoinColumn(name = "business_id", referencedColumnName = "id")
    List<Location> location;
    private String phone;
    private String display_phone;
    private double distance;


}