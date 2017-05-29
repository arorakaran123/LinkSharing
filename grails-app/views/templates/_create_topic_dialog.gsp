<div id="myModal" class="modal fade">
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <b>Create Topic</b>
                <button type="button" class="close pull-right" data-dismiss="modal">&times;</button>
            </div>
            <!-- dialog body -->
            <div class="modal-body">
            %{--<g:set var="visibility" value="public"/>--}%
                <g:form method="post">
                %{--<div>--}%

                    <div class="form-group">
                        <label>Name</label>
                        <input name="name" id="username" type="text" class="form-control" placeholder="Topic Name"/>
                    </div>

                    <div class="form-group">

                        <label>Visibility</label>

                        <div class="dropdown">

                            <g:select class="btn btn-default" name="visibility" from="${['Public', 'Private']}"
                                      noSelection="['': '-visibility-']"/>
                        </div>

                    </div>

                    <p id="errormsgtemp" class="has-error alert-danger">${flash.error}</p>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                </g:form>
                <button id="savetopic" class="btn btn-primary" onclick="onSaveTopic()">Save</button>
            </div>

            <div class="modal-footer">

            </div>
        </div>
    </div>
</div>
<g:set var="savepath" value="${createLink(controller: 'topic', action: 'save2')}"></g:set>
${savepath}
<script type="text/javascript">
    $(document).ready(function () {
        <g:if test="${!showCreateTopicDialog}">
        <g:set var="showCreateTopicDialog" value="false"/>
        </g:if>
        if(${showCreateTopicDialog}) {
        $("#myModal").modal({                    // wire up the actual modal functionality and show the dialog
        "backdrop"  : "static",
        "keyboard"  : true,
        "show"      : true                     // ensure the modal is shown immediately
        });
        }
    });

    function onSaveTopic() {
        console.log('onsavetopic called in create_topic_dialog');
        $.ajax({
            url: "${createLink(controller: 'topic', action: 'save2')}",

            success: function () {
//                $('#errormsgtemp').text('saved successfully... value returned is - ' + data)
                console.log('onsuccess')
            },
            error: function () {
                console.log('error occurred during ajax call')
            }
        });
    }

</script>
