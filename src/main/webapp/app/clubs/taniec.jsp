<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:wrapper>
    <div ng-app="app" ng-controller="AppCtrl" ng-disabled="true">
        <section class="main clearfix">
            <div id="cover" ng-show="mask">
                <div>
                    <md-progress-circular id="mask" md-mode="indeterminate" md-diameter="96"></md-progress-circular>
                </div>
            </div>
            <section class="topTaniec">
                <div class="wrapper content_header clearfix">
                    <h1 class="title_kluby_jasne">Taniec</h1>
                </div>
            </section>
            <!-- end top -->
            <section class="wrapper">
                <div class="content ">
                    <div id="mainWrapper" ng-controller="ClubListViewCtrl">
                        <div class="panel panel-default">
                            <form name="form" method="post" ng-submit="submitFilter(filter)" novalidate modelAttribute="filter">
                                <table>
                                    <tr>
                                        <td style="text-align:center; vertical-align:middle;padding-right: 10px;"><label>Kod pocztowy:  </label></td>
                                        <td style="text-align:center; vertical-align:middle;padding-right: 10px;"><input type="text" class="form-control" ng-model="filter.kod" required></td>
                                        <td style="text-align:center; vertical-align:middle;padding-right: 10px;"> <label>Odległość (w km):  </label></td>
                                        <td style="text-align:center; vertical-align:middle;padding-right: 10px;"><input type="number" class="form-control" ng-model="filter.km" required></td>
                                        <td style="text-align:center; vertical-align:middle;padding-right: 10px;"><input type="submit" value="Filtruj" class="btn btn-primary btn-sm" ng-disabled="form.$invalid"/>
                                        </td>
                                    </tr>
                                </table>
                            </form>
                            <!-- Default panel contents -->
                            <div  ng-init="categoryId = ${categoryId}">
                                <div ui-grid="gridOptions" class="table table-hover"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-md-offset-3">
                    </div>
                </div>
            </section>

        </section>
    </div>
</t:wrapper>


