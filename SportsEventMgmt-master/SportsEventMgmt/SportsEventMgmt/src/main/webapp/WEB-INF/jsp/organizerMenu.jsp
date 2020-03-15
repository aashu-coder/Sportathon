
<%
	Integer oid = (Integer) session.getAttribute("oid");
	if (oid == null) {
		response.sendRedirect("getLoginPage");
	}
%>

 <header>
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">Sportathon</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="addSports">Add Sports</a>
          </li>
          <li class="nav-item">
           <a href="updateSports" class="nav-link js-scroll-trigger">Update Sports</a>
          </li>
          <li class="nav-item">
           <a href="viewSports" class="nav-link js-scroll-trigger">View Sports</a>
          </li>
            <li class="nav-item">
            <a href="addEvent" class="nav-link js-scroll-trigger">Add Event</a>
          </li>
          <li class="nav-item">
           <a href="updateEvent" class="nav-link js-scroll-trigger">Update Event</a>
          </li>
          <li class="nav-item">
           <a href="viewEvent"  class="nav-link js-scroll-trigger">View Event</a>
          </li>
          <li class="nav-item">
           <a href="requestSignOut" class="nav-link js-scroll-trigger">Log out</a>
          </li>
        </ul>
      </div>
  </nav>
  </header>