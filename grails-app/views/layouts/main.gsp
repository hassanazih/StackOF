<%@ page import="org.isima.sof.Tag" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <resource:tabView />
    <title><g:layoutTitle default="Our Stack Overflow"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	<script type="text/javascript">
    var Fichier = function Fichier(fichier)
    {
        if(window.XMLHttpRequest) obj = new XMLHttpRequest(); //Pour Firefox, Opera,...

        else if(window.ActiveXObject) obj = new ActiveXObject("Microsoft.XMLHTTP"); //Pour Internet Explorer 

        else return(false);
        

        if (obj.overrideMimeType) obj.overrideMimeType("text/xml"); //Évite un bug de Safari

       
        obj.open("GET", fichier, false);
        obj.send(null);
       
        if(obj.readyState == 4) return(obj.responseText);
        else return(false);
    }
    
	function refresh(tabID, templateRender){
		
		var Rcontent = Fichier('_'+templateRender);

		document.getElementById(tabID).innerHTML = "<div id='" + tabID + "'>" + Rcontent + "</div>";
	}
    </script>
	<!-- Begin jQuery tabs -->
	 <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="/resources/demos/style.css" />
	<script type="text/javascript" >
	$(function() {
		$( "#tabs" ).tabs();
	});
	</script>
	<!-- End jQuery tabs -->
    <!-- Les styles -->
   	<link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'bootstrap.css')}" type="text/css">
   	<link rel="stylesheet" href="${resource(dir: 'css', file: 'app.css')}" type="text/css">

    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
      #navcontainer ul li { 
      	display: inline;
      	border-right: solid 1px #e1e1e1;
      	padding-left: 20px;
      	padding-right: 20px;
      }
       #navcontainer a {
      	color: #646464; 
      }
      #ask a{ 
      	color:#ff9900
      }
      #tabs{
		width:60%;
		margin-left: 10%; 
		border:none;
	  }
      #ulTabView{
	
		background:none;
		border-top:none;
		border-left:none;
		border-right:none;
		border-bottom-style:inset;
		border-bottom-width:thin;
		float:right;
	  }
	
	  #ulTabView li{
		background:none;
	  }
      
    </style>
    
   

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="shortcut icon"  href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
	<link rel="icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">My StackOverflow</a>
          <div class="nav-collapse collapse">
			<sec:ifLoggedIn>
            <p class="navbar-text pull-right">
				<sec:username/> (<g:link controller="logout"> logout </g:link>)
            </p>
            </sec:ifLoggedIn>
            <ul class="nav">
              <li><a href="/SOF/">Home</a></li>
              <li><a href="#">About</a></li>
              <sec:ifNotLoggedIn>
              <li><%= link(action:'index',controller:'login') { 'Log in' }%></li>
              <li><%= link(action:'create',controller:'user') { 'Register' }%></li>
              </sec:ifNotLoggedIn>
              <li><a href="#contact">Contact</a></li>
              
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    <div class="row-fluid" id="navcontainer" >
		<div class="span5 offset1">
			<ul>
	
				<li><g:link controller="question" action="list"><g:message code="Questions" /></g:link></li>
				<li><g:link controller="tag" action="list"><g:message code="Tag" /></g:link></li>
				<li><g:link controller="user" action="list"><g:message code="User" /></g:link></li>
				<li><g:link controller="badge" action="list"><g:message code="Badge" /></g:link></li>
				<li id="ask"><g:link controller="question" action="create"><g:message code="ask.question"  /></g:link></li>
				
				<!--  <sec:ifAllGranted roles="ROLE_USER">		
					<li><g:link controller="tag" action="list"><g:message code="Tag" /></g:link></li>
					<li><g:link controller="user" action="list"><g:message code="User" /></g:link></li>
					<li><g:link controller="badge" action="list"><g:message code="Badge" /></g:link></li>
				</sec:ifAllGranted>-->		
			</ul>
		</div>
	</div>
	
    <div class=" container-fluid">
		<!-- <div class="span9">-->
     		<g:layoutBody />
		<!--  </div>-->
    </div><!--/.fluid-container-->
    
    
        <!-- Footer
    ================================================== -->
    <div class="modal-footer" id="footer">
      <div class="container">
       	<p>&copy; Our Stack Overflow 2013</p>
      </div>
    </div>
    
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster
    <g:javascript src="bootstrap/js/bootstrap.js"/> -->

  </body>
</html>
