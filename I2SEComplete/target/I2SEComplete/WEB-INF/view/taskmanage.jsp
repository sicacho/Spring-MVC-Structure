<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="include/header.jsp" %>

<div class="main-content">
    <div class="widget">
        <h3 class="section-title first-title"><i class="icon-table"></i> Task Table</h3>
        <div class="widget-content-white glossed">
            <div class="padded">
                <div class="btn-group" style="margin-bottom: 20px">
                    <button class="btn btn-default btn-lg dropdown-toggle" type="button" data-toggle="dropdown">
                        Select Tasks <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="/task/all">All Task</a></li>
                        <li><a href="/task/all/${sessionScope.user.id}">Your Task</a></li>
                        <li><a href="/task/status/1">Pending</a></li>
                        <li><a href="/task/status/2">Starting</a></li>
                        <li><a href="/task/status/3">Wait Review</a></li>
                        <li><a href="/task/status/4">Reviewing</a></li>
                        <li><a href="/task/status/5">Wait Approval</a></li>
                        <li><a href="/task/status/6">Approval</a></li>
                    </ul>
                </div>
                <table class="table table-striped table-bordered table-hover datatable">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Task Name</th>
                        <th>Detail</th>
                        <th>Handler</th>
                        <th>Reviewer</th>
                        <th>Creator</th>
                        <th>Status</th>
                        <c:if test="${sessionScope.user.tblroleusersById[0].tblroleByRole.role=='Manager'}">
                            <th></th>
                        </c:if>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="task" items="${tasks}">
                        <tr>
                            <td>${task.id}</td>
                            <td><a href="/task/detail/${task.id}">${task.name}</a></td>
                            <td>${task.detail}</td>
                            <td>${task.tbluserByUserTask.username}</td>
                            <td>${task.tbluserByReviewer.username}</td>
                            <td>${task.tbluserByCreator.username}</td>
                            <td><span class="label label-success">${task.statusString}</span></td>
                            <c:if test="${sessionScope.user.tblroleusersById[0].tblroleByRole.role=='Manager'}">
                                <td class="text-right">
                                    <a href="/task/update/${task.id}" class="btn btn-default btn-xs"><i
                                            class="icon-pencil"></i> edit</a>
                                    <a href="#" class="btn btn-danger btn-xs"><i class="icon-remove"></i></a>
                                </td>
                            </c:if>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <a href="/task/insert" class="btn btn-primary btn-round btn-lg" style="margin-top: 10px"><i
                class="icon-plus-sign"></i> Add Task</a>
    </div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="color_settings_box hidden-xs">
    <h3>Color Settings</h3>
    <label for="wood-wrapper-checkbox" class="checkbox-w">
        <input type="checkbox" id="wood-wrapper-checkbox">
        <span class="wood-checkbox"></span> Wrap in Wood
    </label>

    <h3>Background</h3>

    <div class="color-settings-w" data-replace-element="body" data-leave-class="">
        <div class="color-box color-box-dark-blue color-tooltip" data-toggle="tooltip" data-placement="top"
             title="Solid Dark Blue" data-replace-with="body-dark-blue"></div>
        <div class="color-box color-box-light-blue color-tooltip" data-toggle="tooltip" data-placement="top"
             title="Solid Light Blue" data-replace-with="body-blue"></div>
        <div class="color-box color-box-grey color-tooltip" data-toggle="tooltip" data-placement="top"
             title="Solid Grey" data-replace-with="body-grey"></div>
        <div class="color-box color-box-linen-dark color-tooltip active" data-toggle="tooltip" data-placement="top"
             title="Dark Linen" data-replace-with="body-dark-linen"></div>
        <div class="color-box color-box-linen-light color-tooltip" data-toggle="tooltip" data-placement="top"
             title="Light Linen" data-replace-with="body-light-linen"></div>
    </div>
    <h3>Header</h3>

    <div class="color-settings-w" data-replace-element=".page-header" data-leave-class="page-header">
        <div class="color-box color-box-dark-blue color-tooltip" data-toggle="tooltip" data-placement="top"
             title="Dark Blue" data-replace-with="page-header-dark-blue"></div>
        <div class="color-box color-box-red active color-tooltip" data-toggle="tooltip" data-placement="top" title="Red"
             data-replace-with="page-header-red"></div>
        <div class="color-box color-box-green color-tooltip" data-toggle="tooltip" data-placement="top" title="Green"
             data-replace-with="page-header-green"></div>
        <div class="color-box color-box-green-sea color-tooltip" data-toggle="tooltip" data-placement="top"
             title="Green Sea" data-replace-with="page-header-green-sea"></div>
        <div class="color-box color-box-orange color-tooltip" data-toggle="tooltip" data-placement="top" title="Emerald"
             data-replace-with="page-header-orange"></div>
        <div class="color-box color-box-blue color-tooltip" data-toggle="tooltip" data-placement="top" title="Blue"
             data-replace-with="page-header-blue"></div>
    </div>
    <h3>Active Menu</h3>

    <div class="color-settings-w" data-replace-element=".side-menu" data-leave-class="side-menu">
        <div class="color-box color-box-dark-blue color-tooltip" data-toggle="tooltip" data-placement="top"
             title="Dark Blue" data-replace-with="side-menu-dark-blue"></div>
        <div class="color-box color-box-red active color-tooltip" data-toggle="tooltip" data-placement="top"
             title="Red (Default)" data-replace-with="side-menu-red"></div>
        <div class="color-box color-box-green color-tooltip" data-toggle="tooltip" data-placement="top" title="Green"
             data-replace-with="side-menu-green"></div>
        <div class="color-box color-box-green-sea color-tooltip" data-toggle="tooltip" data-placement="top"
             title="Green Sea" data-replace-with="side-menu-green-sea"></div>
        <div class="color-box color-box-orange color-tooltip" data-toggle="tooltip" data-placement="top" title="Orange"
             data-replace-with="side-menu-orange"></div>
        <div class="color-box color-box-blue color-tooltip" data-toggle="tooltip" data-placement="top" title="Blue"
             data-replace-with="side-menu-blue"></div>
    </div>
    <h3>Content</h3>

    <div class="color-settings-w" data-replace-element=".content-inner" data-leave-class="content-inner">
        <div class="color-box color-box-white color-tooltip" data-toggle="tooltip" data-placement="top" title="White"
             data-replace-with="content-inner-white"></div>
        <div class="color-box color-box-grey color-tooltip" data-toggle="tooltip" data-placement="top" title="Grey"
             data-replace-with="content-inner-grey"></div>
        <div class="color-box color-box-beige active color-tooltip" data-toggle="tooltip" data-placement="top"
             title="Beige" data-replace-with="content-inner-beige"></div>
    </div>
    <div class="toggle-color-settings">
        <i class="icon-cog"></i>
        <span>hide</span>
    </div>
</div>
<%@include file="include/footer.jsp" %>
</body>
</html>