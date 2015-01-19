<!DOCTYPE html>

<html>
	<% include DocumentationHead %>	
	
	<div id="masthead" <% if Versions %>class="has_versions"<% end_if %>>
		<div class="wrapper">
			<% if Breadcrumbs.count > 1 %>			
				<% include DocumentationBreadcrumbs %>
			<% else_if Page.Title %>
				<h1>$Page.Title</h1>
			<% end_if %>
			<% if Page.Introduction %>
				<div class="introduction">
					<p>$Page.Introduction</p>
				</div>
			<% end_if %>

			<% include DocumentationVersions %>
		</div>
	</div>	
	
	<div class="wrapper">
		<div id="layout" class="clearfix">

		<div id="Beta" class="info">
			<p>You are currently viewing the new beta version of the SilverStripe documentation. 
			<a href="http://doc.silverstripe.com/?utm_source=beta&utm_medium=banner&utm_campaign=docs-beta"> 
			Access the original version of docs.</a></p>
			<a href="#" class="close" title="Close notification">close</a>
		</div>

			<% include DocumentationSidebar %>

			<div id="content">
				$Layout
				
				<% include DocumentationFooter %>
			</div>
		</div>
	</div>
	

	<% if GoogleAnalyticsCode %>
		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

			ga('create', '$GoogleAnalyticsCode', 'auto');
			ga('send', 'pageview');
		</script>
	<% end_if %>

	<% include DocumentationEnd %>
</html>
