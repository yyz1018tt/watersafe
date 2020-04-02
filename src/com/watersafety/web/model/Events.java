package com.watersafety.web.model;

public class Events
{
    private int id;
    private String eventsName;
    private String description;
    private String organisation;
    private String region;
    private String location;
    private String targetGroup;
    private String time;
    private String cost;
    private String contact;
    private String phone;
    private String email;
    private String website;

    public Events()
    {
        super();
    }

    public Events(String eventsName, String description, String organisation, String region, String location, String targetGroup, String time, String cost, String contact, String phone, String email, String website)
    {
        this.eventsName = eventsName;
        this.description = description;
        this.organisation = organisation;
        this.region = region;
        this.location = location;
        this.targetGroup = targetGroup;
        this.time = time;
        this.cost = cost;
        this.contact = contact;
        this.phone = phone;
        this.email = email;
        this.website = website;
    }

    public Events(int id, String eventsName, String description, String organisation, String region, String location, String targetGroup, String time, String cost, String contact, String phone, String email, String website)
    {
        this.id = id;
        this.eventsName = eventsName;
        this.description = description;
        this.organisation = organisation;
        this.region = region;
        this.location = location;
        this.targetGroup = targetGroup;
        this.time = time;
        this.cost = cost;
        this.contact = contact;
        this.phone = phone;
        this.email = email;
        this.website = website;
    }

    public int getId(){return id;}

    public String getEventsName() {
        return eventsName;
    }

    public void setEventsName(String eventsName) {
        this.eventsName = eventsName;
    }


    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    public String getOrganisation() {
        return organisation;
    }

    public void setOrganisation(String organisation) {
        this.organisation = organisation;
    }


    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }


    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }


    public String getTargetGroup() {
        return targetGroup;
    }

    public void setTargetGroup(String targetGroup) {
        this.targetGroup = targetGroup;
    }


    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }


    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }


    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
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

}
