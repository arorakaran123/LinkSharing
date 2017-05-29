<div class="row">

    <div class="col-md-3">
        <img src="${assetPath(src: 'linksharing/user.png')} " class="imgsize table-bordered"/>
    </div>

    <div class="col-md-9">

        <g:link class="default-color1" controller="resource" action="allResources" params="[topic:topic?.name]">${topic?.name}</g:link>
        <br><br/>

        <div class="row">
            <div class="col-md-4">
                @${topic.createdBy?.username}
                <br/>
                <g:if test="${!session.currentUser?.isAdmin}">
                    <g:link class="default-color1">Unsubscribe</g:link>
                </g:if>
            </div>

            <div class="col-md-4">
                Subscriptions
                <br/>
                <label class="text-primary">${topic?.subscriptions}</label>
            </div>

            <div class="col-md-4">
                Posts
                <br/>
                <label class="text-primary">${topic?.posts}</label>
            </div>
        </div>

    </div>
</div>
