package com.kiwi.app.models;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

/**
 * Created by yue on 17/6/30.
 */
@Entity
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(name="name", length=1024)
    private String name;

    @Column(name="img_url", length=1024)
    private String img_url;

    @Column(name="img_url1", length=1024)
    private String img_url1;

    @Column(name="img_url2", length=1024)
    private String img_url2;

    @Column(name="img_url3", length=1024)
    private String img_url3;

    @Column(name="img_url4", length=1024)
    private String img_url4;

    @Lob
    private String description;

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

    public String getImg_url() {
        return img_url;
    }

    public void setImg_url(String img_url) {
        this.img_url = img_url;
    }

    public String getImg_url1() {
        return img_url1;
    }

    public void setImg_url1(String img_url1) {
        this.img_url1 = img_url1;
    }

    public String getImg_url2() {
        return img_url2;
    }

    public void setImg_url2(String img_url2) {
        this.img_url2 = img_url2;
    }

    public String getImg_url3() {
        return img_url3;
    }

    public void setImg_url3(String img_url3) {
        this.img_url3 = img_url3;
    }

    public String getImg_url4() {
        return img_url4;
    }

    public void setImg_url4(String img_url4) {
        this.img_url4 = img_url4;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
