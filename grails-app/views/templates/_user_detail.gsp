<div class="row table-bordered">

    <div class="col-md-3">

        <img src="${assetPath(src: 'linksharing/user.png')} " class="imgsize table-bordered"/>
    </div>

    <div class="col-md-9">

        ${session.currentUser?.firstName + ' ' + session.currentUser?.lastName}
        <br>
        @${session.currentUser?.username}

        <br/>

        <div class="row">
            <div class="col-md-6">
                Subscriptions
                <br/>
                50
            </div>

            <div class="col-md-6">
                Topics
                <br/>
                50
            </div>
        </div>

    </div>
</div>
