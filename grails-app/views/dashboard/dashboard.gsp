<%--
  Created by IntelliJ IDEA.
  User: karan
  Date: 26/5/17
  Time: 1:24 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Dashboard</title>
</head>


<body>

<div class="row">

    <div class="col-md-5">

        <g:render template="/templates/user_detail"/>

        <br/>

        <div class="row table-bordered backgroundgrey">
            <div class="col-md-6"><h5 class="greencolor">Subscriptions</h5>
            </div>

            <div class="col-md-6"><g:link class="pull-right">View all</g:link>
            </div>
        </div>

        <g:set var="hasTopic" value="${!(allTopics == null || allTopics.size() == 0)}"/>
        <g:if test="${hasTopic}">

            <g:each in="${allTopics}" var="topic" status="i" >
                <div class="table-bordered">
                    <g:render template="/templates/subscription_item" model="[topic:topic]" >  </g:render>
                </div>
                <br>
            </g:each>
        </g:if>
        <br/>
        <br/>

        <div class="row table-bordered backgroundgrey">
            <div class="col-md-6"><h5 class="greencolor">Trending Topics</h5>
            </div>
        </div>
%{--<g:if test="${hasTopic}">--}%
        %{--<div class="row table-bordered"><g:render template="/templates/subscription_item"/></div>--}%
%{--</g:if>--}%

        %{--<g:if test="${allResources}">--}%
${allResources}
${allResources instanceof List}
            %{--<g:each in="${allResources}" var="resource">--}%
                %{--<div class="table-bordered">--}%
                    %{--<g:render template="/templates/item_resource" model="[resource:resource]" >  </g:render>--}%
                %{--</div>--}%
            %{--</g:each>--}%
        %{--</g:if>--}%
        <br/>
    </div>

    <div class="col-md-7">

    </div>

</div>

</body>
</html>
