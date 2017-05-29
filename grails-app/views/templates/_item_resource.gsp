<div class="row">
resource is - ${resource}
    <div class="col-md-3">
        <img src="${assetPath(src: 'linksharing/user.png')} " class="imgsize table-bordered"/>
    </div>

    <div class="col-md-9">


        <div class="row">
            <div class="col-md-4">
                %{--@${resource?.createdByUserName}--}%
                <br/>
                <g:if test="${!session.currentUser?.isAdmin}">
                    <g:link class="default-color1">Unsubscribe</g:link>
                </g:if>
            </div>

            <div class="col-md-4">
                Description
                <br/>
                %{--<label class="text-primary">${resource?.description}</label>--}%
            </div>

            <div class="col-md-4">
                Posts
                <br/>
                <label class="text-primary">${topic?.posts}</label>
            </div>
        </div>

    </div>
</div>