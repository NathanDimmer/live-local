package com.grizzyhacks.demo.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Business {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String name;

    private String address;

    private String description;

    private String link;

    private String yelp;

    private String image;

    //TODO: Add Post and User relations


    public Business(long id, String name, String address, String description, String link, String yelp, String image) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.description = description;
        this.link = link;
        this.yelp = yelp;
        this.image = image;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getYelp() {
        return yelp;
    }

    public void setYelp(String yelp) {
        this.yelp = yelp;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
