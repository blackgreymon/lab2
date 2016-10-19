package com.greymon.library;

import com.opensymphony.xwork2.ActionSupport;
import org.hibernate.Session;


public class BookInfoAction extends ActionSupport {
    private Long isbn;
    private Book resultBook;
    private Integer pageType;
    private String message;

    public Long getIsbn() {
        return isbn;
    }

    public void setIsbn(Long isbn) {
        this.isbn = isbn;
    }

    public Book getResultBook() {
        return resultBook;
    }

    public void setResultBook(Book resultBook) {
        this.resultBook = resultBook;
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
        Session session = SqlHelper.getSessionFactory().openSession();
        session.beginTransaction();
        Book sqlBook = (Book) session.createQuery("select book " + "from Book book " + "where book.isbn = :isbn").setParameter("isbn", getIsbn()).getSingleResult();
        setResultBook(sqlBook);
        setPageType(2);
        session.close();
        return SUCCESS;
    }


}
