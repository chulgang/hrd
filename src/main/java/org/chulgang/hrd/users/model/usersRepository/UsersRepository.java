package org.chulgang.hrd.users.model.usersRepository;

import org.chulgang.hrd.users.dto.UsersLoginResponse;
import org.chulgang.hrd.util.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class UsersRepository {

    public int signUp(String email, String username, String password, String full_name , String phone){
        Connection con = null;
        PreparedStatement pstmt = null;
        String sql = UsersSQL.signUp;
        int flag = -1;

        try {
            con = DbConnection.getConnection();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, email);
            pstmt.setString(2, username);
            pstmt.setString(3, password);
            pstmt.setString(4, full_name);
            pstmt.setString(5, phone);
            pstmt.executeUpdate();
            System.out.println("signUp 성공");
            System.out.println("signUp: "+ 1);

            return 1;
        } catch (SQLException e) {
            System.err.println(e+"Board write  insert SQLException");
            e.printStackTrace();
            flag = -1;
        }
        return flag;
    }
    public UsersLoginResponse loginByEmail(String email, String password){
        Connection con;
        PreparedStatement pstmt;
        String sql = UsersSQL.loginByEmail;
        ResultSet rs;
        UsersLoginResponse dto = new UsersLoginResponse();
        String str1;
        try {
            con = DbConnection.getConnection();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            rs.next();


            while(rs.next()){
                dto.setId(rs.getInt(1));
                dto.setEmail(rs.getString(2));
                dto.setUsername(rs.getString(3));
                dto.setPassword(rs.getString(4));
                dto.setFull_name(rs.getString(5));
                dto.setPhone(rs.getString(6));
                str1 = rs.getString(7);
                DateTimeFormatter fomatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                LocalDateTime dateTIme = LocalDateTime.parse(str1,fomatter);
                dto.setCreate_at(dateTIme);
                dto.setModified_at(dateTIme);
            }
            System.out.println("loginByEmail 성공");
            System.out.println("loginByEmail: "+ 1);

            return dto;
        } catch (SQLException e) {
            System.out.println(e+"loginByEmailSQLException");
            e.printStackTrace();
        }
        return null;
    }
    public UsersLoginResponse loginByUsername(String username, String password){
        Connection con = null;
        PreparedStatement pstmt = null;
        String sql = UsersSQL.loginByUsername;
        ResultSet rs =null;
        UsersLoginResponse dto = new UsersLoginResponse();
        String str1 ="";
        try {
            con = DbConnection.getConnection();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
           while(rs.next()){
               dto.setId(rs.getLong(1));
                dto.setEmail(rs.getString(2));
                dto.setUsername(rs.getString(3));
                dto.setPassword(rs.getString(4));
                dto.setFull_name(rs.getString(5));
                dto.setPhone(rs.getString(6));
                str1 = rs.getString(7);
                DateTimeFormatter fomatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                LocalDateTime dateTIme = LocalDateTime.parse(str1,fomatter);
                dto.setCreate_at(dateTIme);
                dto.setModified_at(dateTIme);
           }
            System.out.println("loginByUsername 성공");
            System.out.println("loginByUsername: "+ 1);

            return dto;
        } catch (SQLException e) {
            System.err.println(e+"loginByUsernameSQLException");
            e.printStackTrace();
            }
        return null;
    }
    public int modifyMyPage(String email, String username, String password, String full_name , String phone){
        Connection con = null;
        PreparedStatement pstmt = null;
        String sql = UsersSQL.modifyMyPage;
        int flag = -1;

        try {
            con = DbConnection.getConnection();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, email);
            pstmt.setString(2, full_name);
            pstmt.setString(3, phone);
            pstmt.setString(4, username);
            pstmt.executeUpdate();
            System.out.println("modifyMyPage 성공");
            System.out.println("modifyMyPage: "+ 1);

            return 1;
        } catch (SQLException e) {
            System.err.println(e+"modifyMyPageSQLException");
            e.printStackTrace();
            flag = -1;
        }
        return flag;
    }
    public String findByPassword(String username ,String password){
        Connection con = null;
        PreparedStatement pstmt = null;
        String sql = UsersSQL.findByPassword;
        int flag = -1;
        ResultSet rs = null;
        String get_username ="";
        try {
            con = DbConnection.getConnection();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            while(rs.next()){
               get_username = rs.getString(1);
            }
            if(get_username== null || get_username ==""){
                return null;
            }


            return get_username;
        } catch (SQLException e) {
            System.err.println(e+"findByPassword SQLException");
            e.printStackTrace();
            flag = -1;
        }
        return null;
    }
    public String findByEmail(String email ,String password){
        Connection con = null;
        PreparedStatement pstmt = null;
        String sql = UsersSQL.findByEmail;
        int flag = -1;
        ResultSet rs = null;
        String get_email ="";
        try {
            con = DbConnection.getConnection();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            while(rs.next()){
                get_email = rs.getString(1);
            }
            if(get_email== null || get_email ==""){
                return null;
            }


            return get_email;
        } catch (SQLException e) {
            System.err.println(e+"findByPassword SQLException");
            e.printStackTrace();
            flag = -1;
        }
        return null;
    }
    public int dupplicate(String username){
        Connection con = null;
        PreparedStatement pstmt = null;
        String sql = UsersSQL.dupplicateByUserName;
        int flag = -1;
        ResultSet rs = null;
        String get_email ="";
        try {
            con = DbConnection.getConnection();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, username);
            rs = pstmt.executeQuery();
            while(rs.next()){
                get_email = rs.getString(1);
            }
            if(get_email== null || get_email ==""){
                return -1;
            }else{
              return 1;
            }
        } catch (SQLException e) {
            System.err.println(e+"findByPassword SQLException");
            e.printStackTrace();
            flag = -1;
        }
     return 1;
    }
    public int insertUserRole(String email ,String password,String role){
        Connection con = null;
        PreparedStatement pstmt = null;
        long users_id = findByEmailAndPassword(email,password);
        String sql = UsersSQL.insertUserRole;
        int flag = -1;
        ResultSet rs = null;
        String get_email ="";
        try {
            con = DbConnection.getConnection();
            pstmt = con.prepareStatement(sql);
            pstmt.setLong(1, users_id);
            pstmt.setString(2, role);
            rs = pstmt.executeQuery();

            return 1;
        } catch (SQLException e) {
            System.err.println(e+"insertUserRole SQLException");
            e.printStackTrace();
            return -1;
        }
    }
    public long findByEmailAndPassword(String email,String password){
        Connection con = null;
        PreparedStatement pstmt = null;
        String sql = UsersSQL.findByEmailAndPassword;
        int flag = -1;
        ResultSet rs = null;
        long users_id =0L;
        try {
            con = DbConnection.getConnection();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            while(rs.next()){
                users_id = rs.getLong(1);
            }

            return users_id;
        } catch (SQLException e) {
            System.err.println(e+"findByEmailAndPassword SQLException");
            e.printStackTrace();
            flag = -1;
        }
        return 1;
    }
}

