
<% 	
	String message= (String)session.getAttribute("MessageAfterRegis"); 
												//MessageAfterRegis is key used in RegisterWithServlet
	
	if(message!=null){
		
	
	%>											
			<div class="alert alert-primary text-white alert-dismissible fade show" role="alert">
		  <strong><%= message %> </strong> 
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
	    <span aria-hidden="true">&times;</span>
 		 </button>
		</div>
	
<% 		
		
		session.removeAttribute("MessageAterRegis");
	
	}

%>