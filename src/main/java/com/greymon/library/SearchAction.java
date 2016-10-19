package com.greymon.library;

import com.opensymphony.xwork2.ActionSupport;
import org.hibernate.Session;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by xieaoran on 2016/10/7.
 */
public class SearchAction extends ActionSupport {
    private String keyword;
    private List<Book> resultBooks;

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public List<Book> getResultBooks() {
        return resultBooks;
    }

    public void setResultBooks(List<Book> resultBooks) {
        this.resultBooks = resultBooks;
    }

    @Override
    @SuppressWarnings("unchecked")
    public String execute() throws Exception {
        if (keyword != null) {
            Session session = SqlHelper.getSessionFactory().openSession();
            try{
                session.beginTransaction();
                List<Book> sqlBooks = session.createQuery("select book " + "from Book book " + "where book.author.name like :keyword").setParameter("keyword", "%" + getKeyword() + "%").getResultList();
                session.close();
                setResultBooks(sqlBooks);
                return SUCCESS;
            }
            catch (Exception e){
                session.close();
                throw e;
            }
        } else {
            setResultBooks(new ArrayList<Book>());
            return SUCCESS;
        }
    }
}
