<div id="resourceModal" class="modal fade">
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <b>Create Resource</b>
                <button type="button" class="close pull-right" data-dismiss="modal">&times;</button>
            </div>
            <!-- dialog body -->
            <div class="modal-body">
            %{--<g:set var="visibility" value="public"/>--}%
                <g:form method="post" controller="resource" action="save">
                %{--<div>--}%

                    <div class="form-group">
                        <label>Link</label>
                        <input name="url"  type="text" class="form-control" placeholder="Link"/>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        %{--<g:textarea name="description"  rows="4" cols="70" class="form-control" placeholder="Description"></g:textarea>--}%
                        <input name="description"  type="text" class="form-control" placeholder="Link"/>
                    </div>

                    <div class="form-group">

                        <label>Topic</label>

                        <div class="dropdown">


                            <g:if test="${allTopics instanceof List}">
                            <g:select class="btn btn-default" name="topic" from="${allTopics.name}"
                                      noSelection="['':'Please select a topic']" value=""/>
                            </g:if>
                        </div>

                    </div>

                    <p class="has-error alert-danger">${flash.error}</p>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                %{--<a href="${createLink(controller: 'topic', action: 'save')}" class="btn btn-primary">Save</a>--}%
                    <button  class="btn btn-primary">Save</button>
                %{--</div>--}%
                </g:form>
            </div>
            <!-- dialog buttons -->
            <div class="modal-footer">

            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        if(${showCreateResourceDialog}) {
            $("#resourceModal").modal({                    // wire up the actual modal functionality and show the dialog
                "backdrop"  : "static",
                "keyboard"  : true,
                "show"      : true                     // ensure the modal is shown immediately
            });
        }
    });

</script>
<!-- sometime later, probably inside your on load event callback -->
