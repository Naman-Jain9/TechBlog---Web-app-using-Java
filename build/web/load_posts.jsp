
<%@page import="java.util.List"%>
<%@page import="com.tech.blog.entities.Post"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.PostDao"%>    

<div class="row">
    <%
       PostDao d =new PostDao(ConnectionProvider.getConnection());

       int cid=Integer.parseInt(request.getParameter("cid"));
       List<Post> posts=null;
       if(cid==0)
       {
         posts = d.getAllPosts();
       }
       else{
            posts=d.getPostByCatId(cid);
       }
       if(posts.size()==0)
       {
           out.println("No post in this category");
           return;
       }
       for(Post p:posts)
        {
            
    %> 
    <div class="col-md-6 mt-3 mb-3">
      <div class="card">
        <img class="card-img-top" src="blog_pics/<%=p.getpPic() %>" alt="Card image cap">
        <div class="card-body">
            <b><%=p.getpTitle() %></b>
            <p><%=p.getpContent() %></p
            <pre><%=p.getpCode() %></pre>
        </div>
        <div class="card-footer bg-primary">
            <a href="show_blog_page.jsp?post_id=<%= p.getPid()%> " class="btn btn-outline-light btn-sm">Read More</a>
            <a href="#" class="btn btn-outline-light btn-sm"><i class="fa fa-thumbs-o-up"></i><span>50</span></a>
            <a href="#" class="btn btn-outline-light btn-sm"><i class="fa fa-commenting-o"></i><span>20</span></a>
 
            
        </div>
      </div>
    </div>  
   
    <%
        }
    %>
</div>
