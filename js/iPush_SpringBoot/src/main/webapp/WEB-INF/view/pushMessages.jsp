<%@ include file="fragments/header.jspf"%> 
    <div class="container">        
		<%@ include file="fragments/navbar.jspf"%> 
        <div class="row">
             <%@ include file="fragments/sidebar.jspf"%> 
            
            <div class="col-md-2"></div>
            <div class="col-md-6">
                <h3>Create a Message</h3>
                <div class="block">
                    <div class="header">
                       <!--  <h2>Create Message</h2> -->
                    </div>
                    <form:form action="saveMessage" modelAttribute="message" method="POST">
	                    <div class="content controls">
	                        <div class="form-row">
	                            <div class="col-md-3">Title: </div>
	                            <div class="col-md-9"><form:input type="text" class="form-control" path="strTitle"/></div>
	                        </div>
	                        <div class="form-row">
	                            <div class="col-md-3">Content: </div>
	                            <div class="col-md-9"><form:input type="text" class="form-control" path="strContent"/></div>
	                        </div>
	                        <div class="form-row">
	                            <div class="col-md-3">URL: </div>
	                            <div class="col-md-9"><form:input type="text" class="form-control" path="strURL"/></div>
	                        </div>
	                        <div class="form-row">
	                            <div class="col-md-3">Vibrate: </div>
	                            <div class="col-md-9"><form:input type="text" class="form-control" path="strVibrate"/></div>
	                        </div>
	                        <div class="form-row">
	                            <div class="col-md-3">Icon Path: </div>
	                            <div class="col-md-9"><form:input type="text" class="form-control" path="strIcon"/></div>
	                        </div>
	                        <div class="form-row">
	                            <div class="col-md-3">Badge Path: </div>
	                            <div class="col-md-9"><form:input type="text" class="form-control" path="strBadge"/></div>
	                        </div>                                        
	                        <div class="form-row">
	                            <div class="col-md-3">Image Path: </div>
	                            <div class="col-md-9"><form:input type="text" class="form-control" path="strImage"/></div>
	                        </div>                        
	                        
	                        <div class="form-row">
	                            <div class="col-md-3"></div>
	                            <div class="col-md-6">
	                                <input type="submit" value="Submit" class="btn btn-primary btn-block">
	                            </div>
	                            <div class="col-md-3"></div>
	                        </div>                            
	                    </div>
                    </form:form>
                </div>                
                
            </div>
            
            <div class="col-md-2"></div>

            
              
            
        </div>
        <%@ include file="fragments/footer.jspf"%> 
    </div>
    <script type='text/javascript' src='htdocs/js/plugins/jquery/jquery.min-3.2.1.js'></script>
    <script type='text/javascript' src='htdocs/js/clippy.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/jquery/jquery.min.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/jquery/jquery-ui.min.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/jquery/jquery-migrate.min.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/jquery/globalize.js'></script>    
    <script type='text/javascript' src='htdocs/js/plugins/bootstrap/bootstrap.min.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/uniform/jquery.uniform.min.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/select2/select2.min.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/tagsinput/jquery.tagsinput.min.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/jquery/jquery-ui-timepicker-addon.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/bootstrap/bootstrap-file-input.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/knob/jquery.knob.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/sparkline/jquery.sparkline.min.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/flot/jquery.flot.js'></script>     
    <script type='text/javascript' src='htdocs/js/plugins/flot/jquery.flot.resize.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins.js'></script>    
    <script type='text/javascript' src='htdocs/js/actions.js'></script>    
    <script type='text/javascript' src='htdocs/js/charts.js'></script>
    <script type='text/javascript' src='htdocs/js/settings.js'></script>
    <script type='text/javascript' src='htdocs/js/commonScripts.js'></script>
<script type="text/javascript">
$(document).ready(function() {
		var pushed='${applicationScope["pushed"]}';
		var msg='${applicationScope["msg"]}';
		//window.CLIPPY_CDN = '/iPush/htdocs/assets/agents/'
		window.CLIPPY_CDN = 'htdocs/assets/agents/'
		clippy.load('F1', function(agent){
		    // Do anything with the loaded agent
		    agent.moveTo(1200,100);
		    agent.show();
		    if(pushed==="success"){
		    	agent.speak("Message Pushed:- "+msg);
		    }
			//console.log(agent.animations());
		});
});

</script>


</body>
</html>