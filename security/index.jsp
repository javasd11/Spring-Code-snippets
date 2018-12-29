
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>


                <sec:authorize access="!isAuthenticated()">
                    <p> 
                        <a href="<c:url value="/login" />" role="button">Войти</a>
                    </p>
                </sec:authorize>

                <sec:authorize access="isAuthenticated()">
                   
                    <p>Ваш логин: <sec:authentication property="principal.username" /></p>
                    <p>
                        <a href="<c:url value="/logout" />" role="button">Выйти</a> 
                    </p>
                </sec:authorize>