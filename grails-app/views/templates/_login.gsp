<h2 class="greencolor">Login</h2>

<form method="post" action="${postUrl}" id='loginForm'>
    <div class="table-bordered" style="padding: 2%">

        <div class="form-group">
            <label>User Name</label>
            <input name="j_username" id="username" type="text" class="form-control" placeholder="User Name"/>
        </div>

        <div class="form-group">

            <label>Password</label>
            <input name="j_password" id="password" type="password" class="form-control" placeholder="Password"/>
        </div>
        <p class="has-error alert-danger">${flash.loginError}</p>
        <div class="form-group">
            <div class="row">

                <div class="col-md-4">
                    <input type="submit" class="btn btn-primary " value="Login"/>
                </div>

            </div>
        </div>
    </div>
</form>
