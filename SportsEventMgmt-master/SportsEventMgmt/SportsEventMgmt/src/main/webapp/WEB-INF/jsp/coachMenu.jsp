
<%
	Integer cid = (Integer) session.getAttribute("cid");
	if (cid == null) {
		response.sendRedirect("login.jsp");
	}
%>
<ul>
	<li><a href="addPlayer">Add Player</a></li>
	<li><a href="updatePlayer">Update Player</a></li>
	<li><a href="viewPlayer">View Player</a></li>
	<li style="float: right"><a href="requestSignOut">Log out</a></li>

</ul>

 <header>
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">Sportathon</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
           <a href="addPlayer" class="nav-link js-scroll-trigger">Add Player</a>
          </li>
          <li class="nav-item">
            <a href="updatePlayer" class="nav-link js-scroll-trigger">Update Player</a>
          </li>
          <li class="nav-item">
            <a href="viewPlayer" class="nav-link js-scroll-trigger">View Player</a>
          </li>
           <li class="nav-item">
           <a href="requestSignOut" class="nav-link js-scroll-trigger" >Log out</a>
          </li>
        </ul>
      </div>
  </nav>
  </header>