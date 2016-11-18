package ru.spb.rus.model;

/**
 * Created by gleb on 19.11.16.
 */
public class Project {

    public String id;
    public String name;

    public Project(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
