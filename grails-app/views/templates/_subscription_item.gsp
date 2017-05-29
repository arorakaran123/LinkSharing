<g:render template="/templates/topic_item_post_login" model="[topic:topic]" />
<div class="row">
    <div class="col-md-2"></div>

    <div class="col-md-3">
            <g:select class="btn btn-default" name="seriousness" from="${['Serious', 'Very Serious', 'Casual']}"
                      noSelection="['':'Seriousness']" value="${topic?.seriousness}"/>
    </div>


    <div class="col-md-4">
        <img src="${assetPath(src: 'linksharing/message.png')} " class="iconsize"/>&nbsp;&nbsp;
        <img src="${assetPath(src: 'linksharing/edit.png')} " class="iconsize"/>&nbsp;
        <img src="${assetPath(src: 'linksharing/delete.png')} " class="iconsize"/>

    </div>
</div>
