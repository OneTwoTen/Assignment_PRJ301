/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.List;

/**
 *
 * @author doan7
 */
public class Category {
    private int id;
    private String name;
    private List<Food> Foods;

    public Category() {
    }

    public Category(int id, String name, List<Food> Foods) {
        this.id = id;
        this.name = name;
        this.Foods = Foods;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Food> getFoods() {
        return Foods;
    }

    public void setFoods(List<Food> Foods) {
        this.Foods = Foods;
    }
    
   
    
}
