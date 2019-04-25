<%@ include file="fragments/header.jspf"%> 
<div class="container">        

        <div class="login-block">
            <div class="block block-transparent">
                <div class="head">
                    <div class="user">
                        <div class="info user-change">                                                                                
                           <%--<img src="htdocs/img/logo/ironman_128x128.png" class="img-circle img-thumbnail"/>--%>
                             <c:if test = "${profile =='offshore'}">  
                            	<img id="userPic" src="htdocs/img/logo/iron_man_black_more.png" width="95px" height="95px"/>
                            </c:if>
                              <c:if test = "${profile !='offshore'}">  
                             	<img id="userPic" src="htdocs/img/logo/iron_man_black_more.png" width="95px" height="95px"/>
                             </c:if>
                        </div>     
                    </div>
                </div>
                	<div class="text-center">
                		 <img src="htdocs/img/logo/logo.png" width="150px" height="39px"/>
                	<div style="text-align:center">
                <form:form action="${pageContext.request.contextPath}/authenticateUser" id="loginForm" method="POST">  
	                <div class="content controls npt">
	                    <div class="form-row user-change-row">
	                        <div class="col-md-12">
	                            <div class="input-group">
	                                <div class="input-group-addon">
	                                    <span class="icon-user"></span>
	                                </div>
	                                <input type="text" name="username" class="form-control" placeholder="Login"/>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="form-row">
	                        <div class="col-md-12">
	                            <div class="input-group">
	                                <div class="input-group-addon">
	                                    <span class="icon-key"></span>
	                                </div>
	                                <input type="password" name="password" class="form-control" placeholder="Password"/>
	                            </div>
	                        </div>
	                    </div>                        
	                    <div class="form-row">
	                      	<div class="col-md-12">
	                            <a href="#" class="btn btn-primary btn-block" onclick="login()">Log In</a>
	                        </div>
	                    </div>
	                </div>
                </form:form>
                
            </div>
        </div>

    </div>
   </div>
  </div>
 	<script type='text/javascript' src='htdocs/js/plugins/jquery/jquery.min.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/jquery/jquery-ui.min.js'></script>   
    <script type='text/javascript' src='htdocs/js/plugins/jquery/jquery-migrate.min.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/jquery/globalize.js'></script>    
    <script type='text/javascript' src='htdocs/js/plugins/bootstrap/bootstrap.min.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/uniform/jquery.uniform.min.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins.js'></script>    
    <script type='text/javascript' src='htdocs/js/actions.js'></script>    
    <script type='text/javascript' src='htdocs/js/settings.js'></script>
    <script type='text/javascript' src='htdocs/js/commonScripts.js'></script>

</body>
</html>