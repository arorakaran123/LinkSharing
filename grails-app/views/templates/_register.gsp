
<h2 style="color: green">Register</h2>

<g:form method="post" controller="login" action="register">
    <div class="table-bordered" style="padding: 2%">

        <div class="form-group">
            <label>First Name *</label>
            <input name="fName" type="text" class="form-control" placeholder="First Name"/>
        </div>

        <div class="form-group">
            <label>Last Name *</label>
            <input name="lName" type="text" class="form-control" placeholder="Last Name"/>
        </div>

        <div class="form-group">
            <label>Email *</label>
            <input name="email" type="text" class="form-control" placeholder="Email"/>
        </div>
        <div class="form-group">
            <label>User Name *</label>
            <input name="userName" type="text" class="form-control" placeholder="User Name"/>
        </div>
        <div class="form-group">
            <label>Password *</label>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
        </div>
        <div class="form-group">
            <label>Confirm Password *</label>
            <input name="confirmPassword" type="password" class="form-control" placeholder="Confirm Password"/>
        </div>
        <div class="form-group">
            <label>Photo</label>
            <div class="row" >
               <div class="col-md-8">
                   <input name="imagePath" type="text" class="form-control" placeholder="Photo"/>
               </div>
                <div class="col-md-4">
                    <button class="btn btn-default" onclick="return false">Browse</button>
                </div>
            </div>
        </div>
        <p class="has-error alert-warning">${flash.registrationError}</p>
        <div class="form-group">
            <div class="row">

                <div class="col-md-4">
                    <button class="btn btn-primary ">Register</button>
                </div>

            </div>
        </div>
    </div>
</g:form>
