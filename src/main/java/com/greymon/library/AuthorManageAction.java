package com.greymon.library;

import com.opensymphony.xwork2.ActionSupport;
import org.hibernate.Session;

/**
 * Created by xieaoran on 2016/10/8.
 */
public class AuthorManageAction extends ActionSupport {
    private Long id;

    private String name;
    private Integer age;
    private String country;

    private Author resultAuthor;

    private Integer pageType;
    private String message;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Author getResultAuthor() {
        return resultAuthor;
    }

    public void setResultAuthor(Author resultAuthor) {
        this.resultAuthor = resultAuthor;
    }

    public Integer getPageType() {
        return pageType;
    }

    public void setPageType(Integer pageType) {
        this.pageType = pageType;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    @SuppressWarnings("unchecked")
    public String execute() throws Exception {
        return SUCCESS;
    }

    @SuppressWarnings("unchecked")
    public String create() throws Exception {
        Session session = SqlHelper.getSessionFactory().openSession();
        session.beginTransaction();
        Author sqlAuthor = new Author(getName(),getAge(),getCountry());
        session.save(sqlAuthor);
        setResultAuthor(sqlAuthor);
        session.getTransaction().commit();
        session.close();
        return SUCCESS;
    }
}
