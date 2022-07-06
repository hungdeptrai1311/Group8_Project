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
    private String price;
    private int quantity;
    private String status;
    private String img;
    private int brandId;

    public Product() {
    }

    public Product(int productId, String name, String descrip, String price, int quantity, String status, String img, int brandId) {
        this.productId = productId;
        this.name = name;
        this.descrip = descrip;
        this.price = price;
        this.quantity = quantity;
        this.status = status;
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

    public String getPrice() {
        int count = 0;
        String tmp = "";
        for(int i = price.length() - 1; i >= 0; i--){
            tmp += price.charAt(i);
        }
        String s = "";
        for(int i = 0; i < tmp.length(); i++){
            if(i % 3 == 0 && i != 0){
                s += ".";
            }
            s += tmp.charAt(i);
        }
        price = "";
        for(int i = s.length() - 1; i >= 0; i--){
            price += s.charAt(i);
        }
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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
