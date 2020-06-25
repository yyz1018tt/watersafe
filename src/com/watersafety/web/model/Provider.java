package com.watersafety.web.model;


public class Provider
{
    private int id;
    private String region;
    private String type;
    private String resName;
    private String note;
    private String address;
    private String suburb;
    private String postcode;
    private String contactPerson;
    private String phone;
    private String email;
    private String website;
    private String map;

    public Provider(int id, String region, String type, String resName, String note, String address, String suburb, String postcode, String contactPerson, String phone, String email, String website, String map) {
        this.id = id;
        this.region = region;
        this.type = type;
        this.resName = resName;
        this.note = note;
        this.address = address;
        this.suburb = suburb;
        this.postcode = postcode;
        this.contactPerson = contactPerson;
        this.phone = phone;
        this.email = email;
        this.website = website;
        this.map= map;
    }

    public Provider(String region, String type, String resName, String note, String address, String suburb, String postcode, String contactPerson, String phone, String email, String website) {
        this.region = region;
        this.type = type;
        this.resName = resName;
        this.note = note;
        this.address = address;
        this.suburb = suburb;
        this.postcode = postcode;
        this.contactPerson = contactPerson;
        this.phone = phone;
        this.email = email;
        this.website = website;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getresName() {
        return resName;
    }

    public void setresName(String resName) {
        this.resName = resName;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSuburb() {
        return suburb;
    }

    public void setSuburb(String suburb) {
        this.suburb = suburb;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getContactPerson() {
        return contactPerson;
    }

    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getMap() {return map;}

    public void setMap(String map) {this.map=map;}
}
