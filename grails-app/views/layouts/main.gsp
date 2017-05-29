<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">

    <asset:stylesheet href="custom.css"/>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:javascript src="jquery-3.2.1.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="header.js"/>

    <g:layoutHead/>
</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <h1 class="headers-region greencolor">Welcome to Link Sharing</h1>
        </div>

        <div class="col-md-6 ">
            <sec:ifLoggedIn>
                <div class="row">

                    <div class="col-md-5">

                        <form id="custom-search-form" class="form-search form-horizontal pull-right">
                            <div class="input-append span12">
                                <input type="text" class="search-query" placeholder="Search">
                                <button type="submit" class="btn">
                                    %{--<i class="glyphicon-search"></i>--}%
                                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                            </div>
                        </form>

                    </div>

                    <div class="col-md-4">
                        <p>
                            <a href="javascript:createTopicDialog()" id="create_topic" data-toggle="tooltip"
                               title="Create topic">
                                <span class="glyphicon glyphicon-comment default-color1"/>
                            </a>
                            &nbsp;&nbsp;
                            <a href="javascript:createResourceDialog()" id="create_resource" data-toggle="tooltip" title="Create Resource">
                            <span class="glyphicon glyphicon glyphicon-send"/>
                            </a>

                            &nbsp;&nbsp;
                            <img src="${assetPath(src: 'linksharing/user.png')} " class="iconsize table-bordered"/>
                            &nbsp;&nbsp;
                        </p>
                    </div>

                    <div class="col-md-3">
                        <div class="dropdown">
                            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                ${session.currentUser?.username}
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                <li><a href="${createLink(controller: 'user', action: 'showProfile')}"
                                       id="profile_drop_down">Profile</a></li>
                                <li><a href="${createLink(controller: 'user', action: 'showUsers')}">Users</a></li>
                                <li><a href="${createLink(controller: 'topic', action: 'showTopics')}">Topics</a></li>
                                <li><a href="${createLink(controller: 'topic', action: 'showPosts')}">Posts</a></li>
                                <li>
                                    <form name="logout" method="POST"
                                          action="${createLink(controller: 'logout')}">
                                        <input type="submit" value="Logout" class="list-group-item">
                                    </form>
                                </li>
                                %{--<li><a  href="${createLink(controller: 'logout')}" id="logout" >Logout</a></li>--}%

                            </ul>
                        </div>
                    </div>
                </div>
                <g:render template="/templates/create_topic_dialog"/>
                ${allTopics}
                <g:render template="/templates/create_resource_dialog"/>
            </sec:ifLoggedIn>
        </div>
    </div>

    <div class="alert-success center-block">${flash.success}</div>

    <script>

        function createTopicDialog() {
            console.log('create topic dialog called');
            $("#myModal").modal({
                "backdrop": "static",
                "keyboard": true,
                "show": true
            });
        }
        function createResourceDialog() {
         console.log('create resource dialog called');
         $("#resourceModal").modal({                    // wire up the actual modal functionality and show the dialog
         "backdrop"  : "static",
         "keyboard"  : true,
         "show"      : true                     // ensure the modal is shown immediately
         });
         }

    </script>

    <g:layoutBody/>
</div>

</body>
</html>
