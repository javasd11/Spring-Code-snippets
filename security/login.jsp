
            
            <c:url value="/j_spring_security_check" var="loginUrl"/>
            
            <form action="${loginUrl}" method="post">
                <h2 class="form-signin-heading">Please sign in </h2>
                <input type="text" class="form-control" name="j_username" placeholder ="Email address" required autofocus value="colibri"/>
                <input type="password" class="form-control" name="j_password" placeholder ="Password" required value="1234"/>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Войти</button>
            </form>
       