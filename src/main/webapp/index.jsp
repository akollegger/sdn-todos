<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

	<!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title>SDN Todos</title>
	<meta name="description" content="An SDN Demo Application">
	<meta name="author" content="Andreas Kollegger">
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- CSS
  ================================================== -->
	<link rel="stylesheet" href="stylesheets/base.css">
	<link rel="stylesheet" href="stylesheets/skeleton.css">
	<link rel="stylesheet" href="stylesheets/layout.css">
	<link rel="stylesheet" href="stylesheets/knockout.css">

	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">

</head>
<body>



	<!-- Primary Page Layout
	================================================== -->

	<!-- Delete everything in this .container and get started on your own site! -->

	<div class="container">
		<div class="sixteen columns">
			<h1 class="remove-bottom" style="margin-top: 40px">SDN Todos</h1>
			<h5>variant: knockout</h5>
			<hr />
		</div>
		<div class="row">
			<div class="one-third column">
				<h3>About SDN Todos</h3>
				<p>SDN Todos is a small Spring Data Neo4j example application. SDN is used to define a simple 'Todo' domain entity, exposed with a JSON endpoint.
				Inspired by the SproutCore (now <a href="http://www.emberjs.com/">ember.js</a>) demo application, this was originally intended as a server-side 
				companion using Neo4j. Now, it is a headless baseline implementation with a simple CLI. 
				</p>
			</div>
			<div class="one-third column">
				<h3>Three Highlights</h3>
				<p>SDN Todos is built to demonstrate the simplicity of SDN:</p>
				<ul class="square">
					<li><strong>@NodeEntity Todo</strong>: Simple annotated POJO mapped to persist in Neo4j</li>
					<li><strong>TodoRepository extends GraphRepository&lt;Todo&gt;</strong>: Full featured Repository by just extending</li>
					<li><strong>@Controller TodoController</strong>: Standard Spring MVC to expose JSON endpoints</li>
				</ul>
			</div>
			<div class="one-third column">
				<h3>Docs &amp; Support</h3>
				<p>To learn more about this project, with its many variants, visit the <a href="https://github.com/akollegger/sdn-todos">project on git</a>.
				Variants are hosted in different branches, each documented in the wiki. For questions or comments, feel free to contact me at 
				<a href="mailto:andreas@neotechnology.com">andreas@neotechnology.com</a>.</p>
			</div>
		</div>
				
		<!-- UI -->
		<div id="todos" class="row">
			<h3>Todos</h3>

      <div class="one-third column">
        <form data-bind="submit:addItem">
          Add item: <input type="text" data-bind='value:itemToAdd, valueUpdate: "afterkeydown"' />
          <button type="submit" data-bind="enable: itemToAdd().length > 0">Add</button>
        </form>
      </div>

      <div class="one-third column">
        <select multiple="multiple" height="5" data-bind="options:allItems, selectedOptions:selectedItems"> </select>
        <button data-bind="click: removeSelected, enable: selectedItems().length > 0">Remove</button>
        <button data-bind="click: sortItems, enable: allItems().length > 1">Sort</button>
      </div>

      <div class="one-third column">
        <button data-bind="click: refreshItems">Refresh</button>
			</div>
		</div>
		
		<!--  footer  -->
		<div class="row">
			<div class="eight columns">
			<a href="http://neo4j.org"><image src="images/icon_neo4j.png"/></a>
			</div>
			<div class="eight columns">
			<a href="http://spring.neo4j.org"><image style="float:right" src="images/icon_sdn.png"/></a>
			</div>
		</div>
		
	</div><!-- container -->



	<!-- JS
	================================================== -->
	<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
  <script src="javascripts/knockout-2.0.0.js"></script>
	<script src="javascripts/sdn-todos.js"></script>

<!-- End Document
================================================== -->
</body>
</html>
