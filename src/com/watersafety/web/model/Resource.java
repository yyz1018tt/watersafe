package com.watersafety.web.model;

public class Resource {
    private int id;
    private String typeOfResource;
    private String typeOfWaterway;
    private String language;
    private String nameOfResource;
    private String organisation;
    private String fullURL;
    private String shortURL;
    private String forPrintVersion;
    //Constructor with id
    public Resource(int id, String typeOfResource, String typeOfWaterway, String language, String nameOfResource,
                    String organisation, String fullURL, String shortURL, String forPrintVersion) {
        this.id = id;
        this.typeOfResource = typeOfResource;
        this.typeOfWaterway = typeOfWaterway;
        this.language = language;
        this.nameOfResource = nameOfResource;
        this.organisation = organisation;
        this.fullURL = fullURL;
        this.shortURL = shortURL;
        this.forPrintVersion = forPrintVersion;
    }
    //Constructor without id
    public Resource(String typeOfResource, String typeOfWaterway, String language, String nameOfResource,
                    String organisation, String fullURL, String shortURL, String forPrintVersion) {
        this.typeOfResource = typeOfResource;
        this.typeOfWaterway = typeOfWaterway;
        this.language = language;
        this.nameOfResource = nameOfResource;
        this.organisation = organisation;
        this.fullURL = fullURL;
        this.shortURL = shortURL;
        this.forPrintVersion = forPrintVersion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTypeOfResource() {
        return typeOfResource;
    }

    public void setTypeOfResource(String typeOfResource) {
        this.typeOfResource = typeOfResource;
    }

    public String getTypeOfWaterway() {
        return typeOfWaterway;
    }

    public void setTypeOfWaterway(String typeOfWaterway) {
        this.typeOfWaterway = typeOfWaterway;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getNameOfResource() {
        return nameOfResource;
    }

    public void setNameOfResource(String nameOfResource) {
        this.nameOfResource = nameOfResource;
    }

    public String getOrganisation() {
        return organisation;
    }

    public void setOrganisation(String organisation) {
        this.organisation = organisation;
    }

    public String getFullURL() {
        return fullURL;
    }

    public void setFullURL(String fullURL) {
        this.fullURL = fullURL;
    }

    public String getShortURL() {
        return shortURL;
    }

    public void setShortURL(String shortURL) {
        this.shortURL = shortURL;
    }

    public String getForPrintVersion() {
        return forPrintVersion;
    }

    public void setForPrintVersion(String forPrintVersion) {
        this.forPrintVersion = forPrintVersion;
    }

    @Override
    public String toString() {
        return "Resource{" +
                "id=" + id +
                ", typeOfResource='" + typeOfResource + '\'' +
                ", typeOfWaterway='" + typeOfWaterway + '\'' +
                ", language='" + language + '\'' +
                ", nameOfResource='" + nameOfResource + '\'' +
                ", organisation='" + organisation + '\'' +
                ", fullURL='" + fullURL + '\'' +
                ", shortURL='" + shortURL + '\'' +
                ", forPrintVersion='" + forPrintVersion + '\'' +
                '}';
    }
}
