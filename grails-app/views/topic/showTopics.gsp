<%--
  Created by IntelliJ IDEA.
  User: karan
  Date: 28/5/17
  Time: 2:35 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>
<div class="row">

    <div class="col-md-6">
        <g:each in="${allTopics}" var="topic" status="i" >
            <div class="table-bordered">
            <g:render template="/templates/subscription_item" model="[topic:topic]" >  </g:render>
            </div>
            <br>
        </g:each>
    </div>

    <div class="col-md-6">

    </div>

</div>

</body>
</html>
