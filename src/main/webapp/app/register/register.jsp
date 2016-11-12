<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:wrapper>
    <section class="top">
        <div class="wrapper content_header clearfix">
            <div class="work_nav">

                <ul class="btn clearfix">
                    <li><a href="#" class="previous" data-title="Previous"></a></li>
                    <li><a href="index.html" class="grid" data-title="Portfolio"></a></li>
                    <li><a href="#" class="next" data-title="Next"></a></li>
                </ul>

            </div><!-- end work_nav -->
            <h1 class="title">Rejestracja</h1>
        </div>
    </section>
    <!-- end top -->

    <section class="wrapper">
        <div class="content ">

            <div class="col-md-6 col-md-offset-3">
            <form name="form" ng-submit="vm.register()" role="form">
                <div class="form-group" ng-class="{ 'has-error': form.firstName.$dirty && form.firstName.$error.required }">
                    <label for="username">First name</label>
                    <input type="text" name="firstName" id="firstName" class="form-control" ng-model="vm.user.firstName" required />
                    <span ng-show="form.firstName.$dirty && form.firstName.$error.required" class="help-block">First name is required</span>
                </div>
                <div class="form-group" ng-class="{ 'has-error': form.lastName.$dirty && form.lastName.$error.required }">
                    <label for="username">Last name</label>
                    <input type="text" name="lastName" id="Text1" class="form-control" ng-model="vm.user.lastName" required />
                    <span ng-show="form.lastName.$dirty && form.lastName.$error.required" class="help-block">Last name is required</span>
                </div>
                <div class="form-group" ng-class="{ 'has-error': form.username.$dirty && form.username.$error.required }">
                    <label for="username">Username</label>
                    <input type="text" name="username" id="username" class="form-control" ng-model="vm.user.username" required />
                    <span ng-show="form.username.$dirty && form.username.$error.required" class="help-block">Username is required</span>
                </div>
                <div class="form-group" ng-class="{ 'has-error': form.password.$dirty && form.password.$error.required }">
                    <label for="password">Password</label>
                    <input type="password" name="password" id="password" class="form-control" ng-model="vm.user.password" required />
                    <span ng-show="form.password.$dirty && form.password.$error.required" class="help-block">Password is required</span>
                </div>
                <div class="form-actions">
                    <button type="submit" ng-disabled="form.$invalid || vm.dataLoading" class="btn btn-primary">Register</button>
                    <img ng-if="vm.dataLoading" src="data:image/gif;base64,R0lGODlhEAAQAPIAAP///wAAAMLCwkJCQgAAAGJiYoKCgpKSkiH/C05FVFNDQVBFMi4wAwEAAAAh/hpDcmVhdGVkIHdpdGggYWpheGxvYWQuaW5mbwAh+QQJCgAAACwAAAAAEAAQAAADMwi63P4wyklrE2MIOggZnAdOmGYJRbExwroUmcG2LmDEwnHQLVsYOd2mBzkYDAdKa+dIAAAh+QQJCgAAACwAAAAAEAAQAAADNAi63P5OjCEgG4QMu7DmikRxQlFUYDEZIGBMRVsaqHwctXXf7WEYB4Ag1xjihkMZsiUkKhIAIfkECQoAAAAsAAAAABAAEAAAAzYIujIjK8pByJDMlFYvBoVjHA70GU7xSUJhmKtwHPAKzLO9HMaoKwJZ7Rf8AYPDDzKpZBqfvwQAIfkECQoAAAAsAAAAABAAEAAAAzMIumIlK8oyhpHsnFZfhYumCYUhDAQxRIdhHBGqRoKw0R8DYlJd8z0fMDgsGo/IpHI5TAAAIfkECQoAAAAsAAAAABAAEAAAAzIIunInK0rnZBTwGPNMgQwmdsNgXGJUlIWEuR5oWUIpz8pAEAMe6TwfwyYsGo/IpFKSAAAh+QQJCgAAACwAAAAAEAAQAAADMwi6IMKQORfjdOe82p4wGccc4CEuQradylesojEMBgsUc2G7sDX3lQGBMLAJibufbSlKAAAh+QQJCgAAACwAAAAAEAAQAAADMgi63P7wCRHZnFVdmgHu2nFwlWCI3WGc3TSWhUFGxTAUkGCbtgENBMJAEJsxgMLWzpEAACH5BAkKAAAALAAAAAAQABAAAAMyCLrc/jDKSatlQtScKdceCAjDII7HcQ4EMTCpyrCuUBjCYRgHVtqlAiB1YhiCnlsRkAAAOwAAAAAAAAAAAA==" />
                    <a href="#/pages/login" class="btn btn-link">Cancel</a>
                </div>
            </form>
                </div>
        </div><!-- end content -->
    </section>

</t:wrapper>

