/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package projectjava;

public class TableData {

    Integer id;
    String name;
    Integer amount;
    double price;

    public TableData(Integer Id, String Name, int Amount, double Price) {

        this.id = Id;
        this.name = Name;
        this.amount = Amount;
        this.price = Price;

    }

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Integer getAmount() {
        return amount;
    }

    public double getPrice() {
        return price;
    }

}
