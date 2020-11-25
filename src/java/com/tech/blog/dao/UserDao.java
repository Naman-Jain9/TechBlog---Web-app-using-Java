
package com.tech.blog.dao;

import com.tech.blog.entities.User;
import  java.sql.*;

public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    
    //method to insert user into db
     public boolean saveUser(User user){
        
            boolean f=false;
        try{
            //code to insert User Obj into db
            
            String query = "insert into user(name,email,password,gender)values(?,?,?,?)";
            PreparedStatement pstmt =this.con.prepareStatement(query);
            pstmt.setString(1,user.getName());
            pstmt.setString(2,user.getEmail());
            pstmt.setString(3,user.getPassword());
            pstmt.setString(4,user.getGender());
            
            pstmt.executeUpdate();
            
            f=true;
            
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    //get User by email and userpassword
     public User getUserByEmailAndPassword(String email, String password)
     {
         User user =null;
         try{
             
             String query ="select * from user where email=? and password=?";
             PreparedStatement pstmt = con.prepareStatement(query);
             pstmt.setString(1,email);
             pstmt.setString(2,password);
             
             pstmt.executeQuery();
             
             ResultSet set=pstmt.executeQuery();
             
             if(set.next())
             {
                 user=new User();
                 //data frm db
                 String name =set.getString("name");
                 //set to user obj
                 user.setName("name");                 
                 user.setId(set.getInt("id"));                 
                 user.setEmail(set.getString("email"));    
                 user.setPassword(set.getString("password"));
                 user.setGender(set.getString("gender"));
                 user.setDateTime(set.getTimestamp("rdate"));
                 user.setProfile(set.getString("profile"));  
             }
         }catch(Exception e)
         {
             e.printStackTrace();
         }   
         return user;
     }
     
     
     public User getUserByPostId(int userId) throws SQLException
     {
            
             User user = null;
         try{
             
           
         String q="select * from user where id=?";
         
         PreparedStatement ps = this.con.prepareStatement(q);
         ps.setInt(1,userId);
         ResultSet set=ps.executeQuery();
         if(set.next())
         {
                 user=new User();
                 //data frm db
                 String name =set.getString("name");
                 //set to user obj
                 user.setName("name");                 
                 user.setId(set.getInt("id"));                 
                 user.setEmail(set.getString("email"));    
                 user.setPassword(set.getString("password"));
                 user.setGender(set.getString("gender"));
                 user.setDateTime(set.getTimestamp("rdate"));
                 user.setProfile(set.getString("profile"));  
             
         }
         
             
         }
         catch(Exception e)
         {
             e.printStackTrace();
         }
         return user;
     }
             
}