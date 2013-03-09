<%@ page import="org.isima.sof.Tag" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title><g:layoutTitle default="Our Stack Overflow"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

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
