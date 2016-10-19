package com.greymon.library;

import com.opensymphony.xwork2.ActionSupport;
import org.hibernate.Session;

import java.util.Date;
import java.util.List;

public class BookManageAction extends ActionSupport {
    private Long isbn;
    private String title;
    private Long authorId;
    private String publisher;
    private Date publishDate;
    private Double price;

    private List<Author> allAuthors;
    private Book resultBook;

    private Integer pageType;
    private String message;

    public Long getIsbn() {
        return isbn;
    }

    public void setIsbn(Long isbn) {
        this.isbn = isbn;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Long getAuthorId() {
        return authorId;
    }

    public void setAuthorId(Long authorId) {
        this.authorId = authorId;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public Date getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public List<Author> getAllAuthors() {
        return allAuthors;
    }

    public void setAllAuthors(List<Author> allAuthors) {
        this.allAuthors = allAuthors;
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
            List sqlAuthors = (List<Author>) session.createQuery("select author " + "from Author author").getResultList();
            setAllAuthors(sqlAuthors);
            if (null != getIsbn()) {
                Book sqlBook = (Book) session.createQuery("select book " + "from Book book " + "where book.isbn = :isbn").setParameter("isbn", getIsbn()).getSingleResult();
                setResultBook(sqlBook);
            }
            session.close();
            setPageType(0);
            return SUCCESS;
        }
    }



