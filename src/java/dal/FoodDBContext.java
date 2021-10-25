/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import entity.Category;
import entity.Food;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author doan7
 */
public class FoodDBContext extends DBContext {

    public List<Food> getFoodList()

    {
        List<Food> foods = new ArrayList<>();
        try {
            String sql = "select * from food";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Food food = new Food();
                food.setId(rs.getInt("id"));
                food.setName(rs.getString("name"));
                Category category = new Category();
                category.setId(rs.getInt("category_id"));
                food.setCategory(category);
                food.setPrice(rs.getBigDecimal("price"));
                foods.add(food);

            }
        } catch (SQLException ex) {
            Logger.getLogger(FoodDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return foods;
    }

}
