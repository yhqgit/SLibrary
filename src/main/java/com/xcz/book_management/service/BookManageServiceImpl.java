package com.xcz.book_management.service;

import com.xcz.common.BaseService;
import com.xcz.search.domain.Book;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by yhq on 2016/10/24.
 */
public class BookManageServiceImpl extends BaseService implements BookManageService {
    public Boolean addBook(Book a) {
        String sql = "INSERT INTO BOOK(id,ISBN,book_name,lang,author,press,pub_year,call_no,state,pages,size,cover) " +
                "VALUES ('"+a.getId()+"','"+a.getISBN()+"','"+a.getBook_name()+"','"+a.getLang()+"','"+a.getAuthor()+"'," +
                "'"+a.getPress()+"',"+a.getPub_year()+",'"+a.getCall_no()+"','"+a.getState()+"',"+a.getPages()+","+a.getSize()+", '"+a.getCover()+"')";
        System.out.print(sql);
        return this.getHibernateDAO().executeBySql(sql);
    }

    public Boolean delBookByISBN(String ISBN) {
        String sql = "DELETE FROM BOOK WHERE ISBN = '"+ISBN+"'";
        return this.getHibernateDAO().updateBySql(sql)!=0;
    }

    @Override
    public Boolean delBookById(String id) {
        String sql = "DELETE FROM BOOK WHERE id = '"+id+"'";
        return this.getHibernateDAO().updateBySql(sql)!=0;
    }

    @Override
    public int getBookCount(String ISBN) {
        String sql = "SELECT COUNT(*) FROM BOOK WHERE ISBN = '" + ISBN + "'";
        int cnt;
        Connection connection = this.getHibernateDAO().getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();
            cnt = resultSet.getInt(1);
        } catch (SQLException e) {
            e.printStackTrace();
            // 出错时返回-1
            cnt = -1;
        }
        return cnt;
    }

    @Override
    public Boolean Insert(String book_name){
        String sql = "INSERT into UPRECORD (type, title, add_time)VALUE ('BOOK','"+book_name+"',sysdate())";
        return this.getHibernateDAO().executeBySql(sql);
    }

    public Boolean InsertRes(String user_id,String id){
        try {
            String sql = "INSERT INTO RESERVATION(user_id, book_id, res_date, state) VALUE ('"+user_id+"','"+id+"',sysdate(),'waiting')";
            this.getHibernateDAO().executeBySql(sql);
            sql = "UPDATE BOOK SET state = 'Reserved' WHERE id ="+id;
            this.getHibernateDAO().executeBySql(sql);
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public Book[] searchAll(String ISBN) {
        String sql = "SELECT * FROM BOOK WHERE ISBN = '"+ ISBN + "' ORDER BY pub_year DESC";
        List result = this.getHibernateDAO().findBySql(sql);
        if(result == null||result.isEmpty()) {
            return null;
        }
        else {
            ArrayList<Book> books =new ArrayList<Book>();
            for(int i = 0;i<result.size();i++) {
                Object[] row = (Object[]) result.get(i);
                Book t2 = new Book();
                t2.setId((String)row[0]);
                t2.setISBN((String)row[1]);
                t2.setBook_name((String)row[2]);
                t2.setLang((String)row[3]);
                t2.setAuthor((String)row[4]);
                t2.setPress((String)row[5]);
                Timestamp trans = (Timestamp)row[6];
                t2.setPub_year(trans.toString().substring(0,4));
                t2.setCall_no((String)row[7]);
                t2.setState((String)row[8]);
                t2.setPages((Integer)row[9]);
                t2.setSize((Integer)row[10]);
                t2.setCover((String)row[11]);
                books.add(t2);
            }
            Book[] fin = new Book[books.size()];
            fin = books.toArray(fin);
            return fin;
        }

    }
}
