

<%@page import="model.feedback.Feedback"%>

<%
    Feedback feedback = (Feedback)request.getAttribute("feedback");
%>







<link rel="stylesheet" href="${pageContext.request.contextPath}/css/user/update-user.css"/>

<section>
    <h1 class="main-title">Update Your Feedback</h1>

        <div class="container">
       
         <!-- Display Old details of feedback -->
        <form class="update_form" action="${pageContext.request.contextPath}/update-feedback?fid=${feedback.getId()}" method="post">
                <div class="input-field">
                <label>First Name</label>
                <input required value="${feedback.getFname()}" type="text" name="fname">
                </div>
                <div class="input-field">
                <label>Last Name</label>
                <input required value="${feedback.getLname()}" type="text" name="lname">
                </div>
                <div class="input-field">
                <label>Feedback</label>
                <input required value="${feedback.getDescription()}" type="text" name="description">
                </div>
                
                <input type='hidden' id='rating' name='rating' value='5'>
                
                <div class="btn">
                <button type="submit" name="update">Update</button>
                </div>
            </form>
    
        </div>

</section>


