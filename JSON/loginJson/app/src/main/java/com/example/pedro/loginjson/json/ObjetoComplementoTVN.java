package com.example.pedro.loginjson.json;

import java.util.List;

class ObjetoComplementoTVN {

    private String name;
    private String description;
    private int price;
    private int ex_id;
    private String speed;
    private List<String> exclude;
    private float ajuste;
    private boolean tienePromo;
    private String promo;
    private boolean actualExtra;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getEx_id() {
        return ex_id;
    }

    public void setEx_id(int ex_id) {
        this.ex_id = ex_id;
    }

    public String getSpeed() {
        return speed;
    }

    public void setSpeed(String speed) {
        this.speed = speed;
    }

    public float getAjuste() {
        return ajuste;
    }

    public void setAjuste(float ajuste) {
        this.ajuste = ajuste;
    }

    public boolean isTienePromo() {
        return tienePromo;
    }

    public void setTienePromo(boolean tienePromo) {
        this.tienePromo = tienePromo;
    }

    public String getPromo() {
        return promo;
    }

    public void setPromo(String promo) {
        this.promo = promo;
    }

    public boolean isActualExtra() {
        return actualExtra;
    }

    public void setActualExtra(boolean actualExtra) {
        this.actualExtra = actualExtra;
    }
}
