<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Link Sharing</title>
</head>

<body>

<div class="row">

    <div class="col-md-8">

        <h2 class="greencolor">Recent Shares</h2>
        <g:render template="/templates/recent_shares"/>

    </div>

    <div class="col-md-4">
        <div class="row">

            <div class="col-md-12">
                <g:render template="/templates/login" model="postUrl:'${postUrl}'" />
            </div>
            <div class="col-md-12">
                <g:render template="/templates/register" />
            </div>
        </div>
    </div>
</div>


</body>
</html>
