package com.mum.task.Models;

import java.time.LocalDate;
import java.util.Date;

public class Task {

    private int id;
    private String title;
    private LocalDate duedate;
    private String priority;

    public Task(int id, String title, LocalDate duedate, String priority, String category) {
        this.id = id;
        this.title = title;
        this.duedate = duedate;
        this.priority = priority;
        this.category = category;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public LocalDate getDuedate() {
        return duedate;
    }

    public void setDuedate(LocalDate duedate) {
        this.duedate = duedate;
    }

    public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    private String category;

    public Task() {
    }





}
