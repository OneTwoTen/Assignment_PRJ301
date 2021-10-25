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
public class Staff {
    private int id;
    private String name;
    private String acc_userName;
    private int age;
    private String displayname;
    private List<Order> tables ;

    public List<Order> getTables() {
        return tables;
    }

    public void setTables(List<Order> tables) {
        this.tables = tables;
    }
    

    public Staff() {
    }

    public Staff(int id, String name, String acc_userName, int age, String displayname, List<Order> tables) {
        this.id = id;
        this.name = name;
        this.acc_userName = acc_userName;
        this.age = age;
        this.displayname = displayname;
        this.tables = tables;
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

    public String getAcc_userName() {
        return acc_userName;
    }

    public void setAcc_userName(String acc_userName) {
        this.acc_userName = acc_userName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getDisplayname() {
        return displayname;
    }

    public void setDisplayname(String displayname) {
        this.displayname = displayname;
    }
    
    
}
