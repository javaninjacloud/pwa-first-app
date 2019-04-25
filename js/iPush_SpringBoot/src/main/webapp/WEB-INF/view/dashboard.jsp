<%@ include file="fragments/header.jspf"%> 
    <div class="container">        
        <%@ include file="fragments/navbar.jspf"%> 
        <div class="row">
            <%@ include file="fragments/sidebar.jspf"%> 
           
            
            <div class="col-md-5">
	            <div class="block block-drop-shadow">
	            	<div class="head bg-default bg-light-ltr">
	                	<div id="chartdiv" style="height: 500px; width: 100%;"></div>
	                </div>
	            </div>
            </div>
            
            <div class="col-md-5">
                
                <div class="block block-drop-shadow">
                    <div class="head bg-default bg-light-rtl">
		                    <div class="footer footer-defaut tac">
		                        <div class="pull-left" style="width: 200px;">
		                            <div class="input-group">
		                                <div class="input-group-addon"><span class="icon-calendar"></span></div>
		                                <input type="text" class="datepicker form-control" value="10/08/2013"/>
		                                <div class="input-group-btn"><button class="btn"><span class="icon-search"></span></button></div>
		                            </div>                                                        
		                        </div>
		                        <div class="pull-right" style="width: 200px;">
		                            <div class="input-group">
		                                <div class="input-group-addon"><span class="icon-calendar"></span></div>
		                                <input type="text" class="datepicker form-control" value="10/08/2013"/>
		                                <div class="input-group-btn"><button class="btn"><span class="icon-search"></span></button></div>
		                            </div>                                                        
		                        </div>
		                    </div>
                    
                        <h2>${mapSubscriptionCount}</h2>
                        <div class="side pull-right">                            
                            <ul class="buttons">                                
                                <li><a href="index.html#"><span class="icon-plus"></span></a></li>
                                <li><a href="index.html#"><span class="icon-cogs"></span></a></li>
                            </ul>
                        </div> 
                        <div class="head-panel">
                            <a href="index.html#" class="hp-info pull-left">
                                <div class="hp-icon">
                                    <span class="icon-download-alt"></span>
                                </div>
                                <span class="hp-main">25</span>
                                <span class="hp-sm">recived</span>
                            </a>
                            <a href="index.html#" class="hp-info pull-left">
                                <div class="hp-icon">
                                    <span class="icon-upload-alt"></span>
                                </div>                                
                                <span class="hp-main">10</span>
                                <span class="hp-sm">sent</span>
                            </a>                            
                            <a href="index.html#" class="hp-info hp-one pull-right tip" title="Refresh">
                                <div class="hp-icon">
                                    <span class="icon-refresh"></span>
                                </div>                                                 
                                <span class="hp-main">9:24 am</span>                                
                            </a>                                                 
                        </div>
                    </div>
                    <div class="content list" style="width: auto;
    height: 302px;
    line-height: 2em;
    border: 1px solid #ccc;
    padding: 0;
    margin: 0;
    overflow: scroll;
    overflow-x: hidden;">
                        <div class="list-item">
						<div class="row">
							<div class="col-md-1">
								<div class="list-datetime">
									<div class="date">2018-01-01</div>
									<div class="time">9:59 pm</div>
								</div>
							</div>
							<div class="col-md-2" style="padding-right: 0px !important; margin-right: 0px !important; padding-left:30px;">
								<div class="list-info" style="vertical-align:middle !important; text-align:center !important ">
									<img src="htdocs/img/logo/ironman_512x512.png"
										class="img-circle img-thumbnail"/>
								</div>
							</div>
							<div class="col-md-9" style="padding-right: 0px !important; margin-right: 0px !important">
								<div class="list-text" style="padding: 0px !important;">
									<a href="index.html#" class="list-text-name">Angelina Jolie</a>
									<p>Morbi tincidunt, tellus ut fermentum accumsan, est justo
										pretium enim, eget. Morbi tincidunt, tellus ut fermentum
										accumsan, est justo pretium enim, eget. Morbi tincidunt,
										tellus ut fermentum accumsan, est justo pretium enim, eget.
										Morbi tincidunt, tellus ut fermentum accumsan, est justo
										pretium enim, eget.</p>
								</div>
								<div class="list-controls">
									<a href="index.html#" class="widget-icon widget-icon-circle"><span
										class="icon-rotate-right"></span></a> <a href="index.html#"
										class="widget-icon widget-icon-circle"><span
										class="icon-pushpin"></span></a> <a href="index.html#"
										class="widget-icon widget-icon-circle"><span
										class="icon-remove"></span></a>
								</div>
							</div>

						</div>
					</div>
                        
                        <div class="list-item">
						<div class="row">
							<div class="col-md-1">
								<div class="list-datetime">
									<div class="date">27.08</div>
									<div class="time">9:59 pm</div>
								</div>
							</div>
							<div class="col-md-1">
								<div class="list-info">
									<img src="htdocs/img/example/user/olga.jpg"
										class="img-circle img-thumbnail" />
								</div>
							</div>
							<div class="col-md-10">
								<div class="list-text">
									<a href="index.html#" class="list-text-name">Angelina Jolie</a>
									<p>Morbi tincidunt, tellus ut fermentum accumsan, est justo
										pretium enim, eget. Morbi tincidunt, tellus ut fermentum
										accumsan, est justo pretium enim, eget. Morbi tincidunt,
										tellus ut fermentum accumsan, est justo pretium enim, eget.
										Morbi tincidunt, tellus ut fermentum accumsan, est justo
										pretium enim, eget.</p>
								</div>
								<div class="list-controls">
									<a href="index.html#" class="widget-icon widget-icon-circle"><span
										class="icon-rotate-right"></span></a> <a href="index.html#"
										class="widget-icon widget-icon-circle"><span
										class="icon-pushpin"></span></a> <a href="index.html#"
										class="widget-icon widget-icon-circle"><span
										class="icon-remove"></span></a>
								</div>
							</div>

						</div>
					</div>
                        <div class="list-item">
						<div class="row">
							<div class="col-md-1">
								<div class="list-datetime">
									<div class="date">27.08</div>
									<div class="time">9:59 pm</div>
								</div>
							</div>
							<div class="col-md-1">
								<div class="list-info">
									<img src="htdocs/img/example/user/olga.jpg"
										class="img-circle img-thumbnail" />
								</div>
							</div>
							<div class="col-md-10">
								<div class="list-text">
									<a href="index.html#" class="list-text-name">Angelina Jolie</a>
									<p>Morbi tincidunt, tellus ut fermentum accumsan, est justo
										pretium enim, eget. Morbi tincidunt, tellus ut fermentum
										accumsan, est justo pretium enim, eget. Morbi tincidunt,
										tellus ut fermentum accumsan, est justo pretium enim, eget.
										Morbi tincidunt, tellus ut fermentum accumsan, est justo
										pretium enim, eget.</p>
								</div>
								<div class="list-controls">
									<a href="index.html#" class="widget-icon widget-icon-circle"><span
										class="icon-rotate-right"></span></a> <a href="index.html#"
										class="widget-icon widget-icon-circle"><span
										class="icon-pushpin"></span></a> <a href="index.html#"
										class="widget-icon widget-icon-circle"><span
										class="icon-remove"></span></a>
								</div>
							</div>

						</div>
					</div>
					<div class="list-item">
						<div class="row">
							<div class="col-md-1">
								<div class="list-datetime">
									<div class="date">27.08</div>
									<div class="time">9:59 pm</div>
								</div>
							</div>
							<div class="col-md-1">
								<div class="list-info">
									<img src="htdocs/img/example/user/olga.jpg"
										class="img-circle img-thumbnail" />
								</div>
							</div>
							<div class="col-md-10">
								<div class="list-text">
									<a href="index.html#" class="list-text-name">Angelina Jolie</a>
									<p>Morbi tincidunt, tellus ut fermentum accumsan, est justo
										pretium enim, eget. Morbi tincidunt, tellus ut fermentum
										accumsan, est justo pretium enim, eget. Morbi tincidunt,
										tellus ut fermentum accumsan, est justo pretium enim, eget.
										Morbi tincidunt, tellus ut fermentum accumsan, est justo
										pretium enim, eget.</p>
								</div>
								<div class="list-controls">
									<a href="index.html#" class="widget-icon widget-icon-circle"><span
										class="icon-rotate-right"></span></a> <a href="index.html#"
										class="widget-icon widget-icon-circle"><span
										class="icon-pushpin"></span></a> <a href="index.html#"
										class="widget-icon widget-icon-circle"><span
										class="icon-remove"></span></a>
								</div>
							</div>

						</div>
					</div>
					<div class="list-item">
						<div class="row">
							<div class="col-md-1">
								<div class="list-datetime">
									<div class="date">27.08</div>
									<div class="time">9:59 pm</div>
								</div>
							</div>
							<div class="col-md-1">
								<div class="list-info">
									<img src="htdocs/img/example/user/olga.jpg"
										class="img-circle img-thumbnail" height="100px !important;" width="100px !important;;"/>
								</div>
							</div>
							<div class="col-md-10">
								<div class="list-text">
									<a href="index.html#" class="list-text-name">Angelina Jolie</a>
									<p>Morbi tincidunt, tellus ut fermentum accumsan, est justo
										pretium enim, eget. Morbi tincidunt, tellus ut fermentum
										accumsan, est justo pretium enim, eget. Morbi tincidunt,
										tellus ut fermentum accumsan, est justo pretium enim, eget.
										Morbi tincidunt, tellus ut fermentum accumsan, est justo
										pretium enim, eget.</p>
								</div>
								<div class="list-controls">
									<a href="index.html#" class="widget-icon widget-icon-circle"><span
										class="icon-rotate-right"></span></a> <a href="index.html#"
										class="widget-icon widget-icon-circle"><span
										class="icon-pushpin"></span></a> <a href="index.html#"
										class="widget-icon widget-icon-circle"><span
										class="icon-remove"></span></a>
								</div>
							</div>

						</div>
					</div>
                        <div class="list-item">
						<div class="row">
							<div class="col-md-1">
								<div class="list-datetime">
									<div class="date">27.08</div>
									<div class="time">9:59 pm</div>
								</div>
							</div>
							<div class="col-md-1">
								<div class="list-info">
									<img src="htdocs/img/example/user/olga.jpg"
										class="img-circle img-thumbnail" />
								</div>
							</div>
							<div class="col-md-10">
								<div class="list-text">
									<a href="index.html#" class="list-text-name">Angelina Jolie</a>
									<p>Morbi tincidunt, tellus ut fermentum accumsan, est justo
										pretium enim, eget. Morbi tincidunt, tellus ut fermentum
										accumsan, est justo pretium enim, eget. Morbi tincidunt,
										tellus ut fermentum accumsan, est justo pretium enim, eget.
										Morbi tincidunt, tellus ut fermentum accumsan, est justo
										pretium enim, eget.</p>
								</div>
								<div class="list-controls">
									<a href="index.html#" class="widget-icon widget-icon-circle"><span
										class="icon-rotate-right"></span></a> <a href="index.html#"
										class="widget-icon widget-icon-circle"><span
										class="icon-pushpin"></span></a> <a href="index.html#"
										class="widget-icon widget-icon-circle"><span
										class="icon-remove"></span></a>
								</div>
							</div>

						</div>
					</div>              
                    </div>
                    <div class="footer tac">
                        <a href="index.html#">Load more messages...</a>
                    </div>
                </div>                
                
            </div>          
            
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
    <script type='text/javascript' src='htdocs/js/plugins/knob/jquery.knob.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/sparkline/jquery.sparkline.min.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins/flot/jquery.flot.js'></script>     
    <script type='text/javascript' src='htdocs/js/plugins/flot/jquery.flot.resize.js'></script>
    <script type='text/javascript' src='htdocs/js/plugins.js'></script>    
    <script type='text/javascript' src='htdocs/js/actions.js'></script>    
    <script type='text/javascript' src='htdocs/js/charts.js'></script>
    <script type='text/javascript' src='htdocs/js/settings.js'></script>
    <script type='text/javascript' src='htdocs/js/commonScripts.js'></script>
    <script type='text/javascript' src='htdocs/js/charts/fabric.min.js'></script>
    <script type='text/javascript' src='htdocs/js/charts/FileSaver.min.js'></script>
    <script type='text/javascript' src='htdocs/js/charts/jszip.min.js'></script>
    <script type='text/javascript' src='htdocs/js/charts/pdfmake.min.js'></script>
    <script type='text/javascript' src='htdocs/js/charts/amcharts.js'></script>
    <script type='text/javascript' src='htdocs/js/charts/serial.js'></script>
    <script type='text/javascript' src='htdocs/js/charts/export.min.js'></script>
    <script type='text/javascript' src='htdocs/js/charts/light.js'></script>
    <script type='text/javascript' src='htdocs/js/charts/dark.js'></script>



<script type="text/javascript">
$(document).ready(function() {
		var startUp='${applicationScope["startup"]}';
		var mapSubscriptionCount = jQuery.parseJSON('${mapSubscriptionCount}' );
		var lineChartData = [];
		//window.CLIPPY_CDN = '/iPush/htdocs/assets/agents/'
		window.CLIPPY_CDN = 'htdocs/assets/agents/'
		clippy.load('F1', function(agent){
		    // Do anything with the loaded agent
		    agent.moveTo(1200,150);
		    agent.show();
		    if(startUp!=null && startUp!==""){
		    	agent.speak(startUp);
			}
			//console.log(agent.animations());
		});
		
		$.each(mapSubscriptionCount, function(key, value){
			lineChartData.push({date: (new Date(key)),value: value});
		});
		
		var chart = AmCharts.makeChart("chartdiv", {
		    "type": "serial",
		    "theme": "none",
		    "marginRight": 40,
		    "marginLeft": 40,
		    "autoMarginOffset": 20,
		    "mouseWheelZoomEnabled":true,
		    "dataDateFormat": "YYYY-MM-DD",
		    "valueAxes": [{
		        "id": "v1",
		        "axisAlpha": 0,
		        "position": "left",
		        "ignoreAxisWidth":true,
		        "title": "Subscriptions"
		    }],
		    "balloon": {
		        "borderThickness": 1,
		        "shadowAlpha": 0
		    },
		    "graphs": [{
		        "id": "g1",
		        "balloon":{
		          "drop":true,
		          "adjustBorderColor":false,
		          "color":"#ffffff"
		        },
		        "bullet": "round",
		        "bulletBorderAlpha": 1,
		        "bulletColor": "#FFFFFF",
		        "bulletSize": 5,
		        "hideBulletsCount": 50,
		        "lineThickness": 2,
		        "title": "red line",
		        "useLineColorForBulletBorder": true,
		        "valueField": "value",
		        "balloonText": "<span style='font-size:18px;'>[[value]]</span>"
		    }],
		    "chartScrollbar": {
		        "graph": "g1",
		        "oppositeAxis":false,
		        "offset":30,
		        "scrollbarHeight": 80,
		        "backgroundAlpha": 0,
		        "selectedBackgroundAlpha": 0.3,
		        "selectedBackgroundColor": "#4286f4",
		        "graphFillAlpha": 0,
		        "graphLineAlpha": 0.5,
		        "selectedGraphFillAlpha": 0,
		        "selectedGraphLineAlpha": 1,
		        "autoGridCount":true,
		        "color":"#ffffff"
		    },
		    "chartCursor": {
		        "pan": true,
		        "valueLineEnabled": true,
		        "valueLineBalloonEnabled": true,
		        "cursorAlpha":1,
		        "cursorColor":"#258cbb",
		        "limitToGraph":"g1",
		        "valueLineAlpha":0.2,
		        "valueZoomable":true
		    },
		    "valueScrollbar":{
		      "oppositeAxis":false,
		      "offset":50,
		      "scrollbarHeight":10
		    },
		    "categoryField": "date",
		    "categoryAxis": {
		        "parseDates": true,
		        "dashLength": 1,
		        "minorGridEnabled": true
		    },
		    "export": {
		        "enabled": true
		    },
		    "dataProvider":lineChartData
		});

		chart.addListener("rendered", zoomChart);

		zoomChart();

		function zoomChart() {
		    chart.zoomToIndexes(chart.dataProvider.length - 40, chart.dataProvider.length - 1);
		}
});

</script>


</body>
</html>