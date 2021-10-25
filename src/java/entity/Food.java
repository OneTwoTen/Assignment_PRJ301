/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.math.BigDecimal;
import java.util.List;

/**
 *
 * @author doan7
 */
public class Food {
    private int id;
    private String name;
    private Category category;
    private BigDecimal price;
    private List<FoodOrder> foodOrders ;

    public List<FoodOrder> getFoodOrders() {
        return foodOrders;
    }

    public void setFoodOrders(List<FoodOrder> foodOrders) {
        this.foodOrders = foodOrders;
    }
    
    public Food() {
    }

    public Food(int id, String name, Category category, BigDecimal price, List<FoodOrder> foodOrders) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.price = price;
        this.foodOrders = foodOrders;
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

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

   
    
    
}
