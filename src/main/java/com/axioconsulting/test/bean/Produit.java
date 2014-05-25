package com.axioconsulting.test.bean;

import java.io.Serializable;

/**
 * Created by benoit on 24/05/14.
 */
public class Produit implements Serializable{
    private String id;
    private long count;

    public Produit(String name){
        this.id=name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }
}
