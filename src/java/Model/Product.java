/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author baqua
 */
public class Product {
    private int productId;
    private String name;
    private String descrip;
    private int price;
    private int quantity;
    
    private String img;
    private Integer brandId;
    
    private Brand brand;

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public Product() {
    }

    public Product(int productId, String name, String descrip, int price, int quantity,  String img, int brandId) {
        this.productId = productId;
        this.name = name;
        this.descrip = descrip;
        this.price = price;
        this.quantity = quantity;
        
        this.img = img;
        this.brandId = brandId;
    }
    
    
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescrip() {
        return descrip;
    }

    public void setDescrip(String descrip) {
        this.descrip = descrip;
    }

    public int getPrice() {
        
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getPrice2() {
        String str = String.valueOf(price);
        int count = 0;
        String tmp = "";
        for (int i = str.length() - 1; i >= 0; i--) {
            tmp += str.charAt(i);
        }
        String s = "";
        for (int i = 0; i < tmp.length(); i++) {
            if (i % 3 == 0 && i != 0) {
                s += ".";
            }
            s += tmp.charAt(i);
        }
        str = "";
        for (int i = s.length() - 1; i >= 0; i--) {
            str += s.charAt(i);
        }
        return str;
    }

    

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }
    
    
}
