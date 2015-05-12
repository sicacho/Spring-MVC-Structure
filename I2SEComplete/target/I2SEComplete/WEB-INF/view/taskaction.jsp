<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="include/header.jsp" %>
<div class="main-content">
    <div class="widget">
        <h3 class="section-title first-title"><i class="icon-table"></i> Users Table</h3>
        <div class="widget-content-white glossed" style="max-width: 70%">
            <div class="padded" >
                <c:if test="${task != null}">
                    <form action="/task/update" role="form" method="post">
                        <h3 class="form-title form-title-first"><i class="icon-terminal"></i> Update Task</h3>
                        <input type="hidden" name="id" value="${task.id}">
                        <div class="form-group">
                            <label>Task Name </label>
                            <input type="text" class="form-control" placeholder="Enter username" name="name" value="${task.name}">
                        </div>
                        <div class="form-group">
                            <label>Task Detail</label>
                            <div><textarea style="width: 100%;max-width: 100%;height: 100px" placeholder="Task Detail" name="detail">${task.detail}</textarea></div>
                        </div>
                        <div class="form-group">
                            <label>Select Worker </label>
                            <select class="form-control" name="worker">
                                <c:forEach var="user" items="${users}">
                                    <option value="${user.id}">${user.username}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Select Reviewer </label>
                            <select class="form-control" name="reviewer">
                                <c:forEach var="user" items="${users}">
                                    <option value="${user.id}">${user.username}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <input type="submit" class="btn btn-primary" value="Save">
                        <button class="btn btn-default">Reset </button>
                    </form>
                </c:if>
                <c:if test="${task==null}">
                    <form action="/task/insert" role="form" method="post">
                        <h3 class="form-title form-title-first"><i class="icon-terminal"></i> Add Task</h3>
                        <div class="form-group">
                            <label>Task Name </label>
                            <input type="text" class="form-control" placeholder="Enter username" name="name">
                        </div>
                        <div class="form-group">
                            <label>Task Detail</label>
                            <div><textarea style="width: 100%;max-width: 100%;height: 100px" placeholder="Task Detail" name="detail"></textarea></div>
                        </div>
                        <input type="submit" class="btn btn-primary" value="Save">
                        <button class="btn btn-default">Reset </button>
                    </form>
                </c:if>

            </div>

        </div>
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
        <div class="color-box color-box-dark-blue color-tooltip" data-toggle="tooltip" data-placement="top" title="Solid Dark Blue" data-replace-with="body-dark-blue"></div>
        <div class="color-box color-box-light-blue color-tooltip" data-toggle="tooltip" data-placement="top" title="Solid Light Blue" data-replace-with="body-blue"></div>
        <div class="color-box color-box-grey color-tooltip" data-toggle="tooltip" data-placement="top" title="Solid Grey" data-replace-with="body-grey"></div>
        <div class="color-box color-box-linen-dark color-tooltip active" data-toggle="tooltip" data-placement="top" title="Dark Linen" data-replace-with="body-dark-linen"></div>
        <div class="color-box color-box-linen-light color-tooltip" data-toggle="tooltip" data-placement="top" title="Light Linen" data-replace-with="body-light-linen"></div>
    </div>
    <h3>Header</h3>
    <div class="color-settings-w" data-replace-element=".page-header" data-leave-class="page-header">
        <div class="color-box color-box-dark-blue color-tooltip" data-toggle="tooltip" data-placement="top" title="Dark Blue" data-replace-with="page-header-dark-blue"></div>
        <div class="color-box color-box-red active color-tooltip" data-toggle="tooltip" data-placement="top" title="Red" data-replace-with="page-header-red"></div>
        <div class="color-box color-box-green color-tooltip" data-toggle="tooltip" data-placement="top" title="Green" data-replace-with="page-header-green"></div>
        <div class="color-box color-box-green-sea color-tooltip" data-toggle="tooltip" data-placement="top" title="Green Sea" data-replace-with="page-header-green-sea"></div>
        <div class="color-box color-box-orange color-tooltip" data-toggle="tooltip" data-placement="top" title="Emerald" data-replace-with="page-header-orange"></div>
        <div class="color-box color-box-blue color-tooltip" data-toggle="tooltip" data-placement="top" title="Blue" data-replace-with="page-header-blue"></div>
    </div>
    <h3>Active Menu</h3>
    <div class="color-settings-w" data-replace-element=".side-menu" data-leave-class="side-menu">
        <div class="color-box color-box-dark-blue color-tooltip" data-toggle="tooltip" data-placement="top" title="Dark Blue" data-replace-with="side-menu-dark-blue"></div>
        <div class="color-box color-box-red active color-tooltip" data-toggle="tooltip" data-placement="top" title="Red (Default)" data-replace-with="side-menu-red"></div>
        <div class="color-box color-box-green color-tooltip" data-toggle="tooltip" data-placement="top" title="Green" data-replace-with="side-menu-green"></div>
        <div class="color-box color-box-green-sea color-tooltip" data-toggle="tooltip" data-placement="top" title="Green Sea" data-replace-with="side-menu-green-sea"></div>
        <div class="color-box color-box-orange color-tooltip" data-toggle="tooltip" data-placement="top" title="Orange" data-replace-with="side-menu-orange"></div>
        <div class="color-box color-box-blue color-tooltip" data-toggle="tooltip" data-placement="top" title="Blue" data-replace-with="side-menu-blue"></div>
    </div>
    <h3>Content</h3>
    <div class="color-settings-w" data-replace-element=".content-inner" data-leave-class="content-inner">
        <div class="color-box color-box-white color-tooltip" data-toggle="tooltip" data-placement="top" title="White" data-replace-with="content-inner-white"></div>
        <div class="color-box color-box-grey color-tooltip" data-toggle="tooltip" data-placement="top" title="Grey" data-replace-with="content-inner-grey"></div>
        <div class="color-box color-box-beige active color-tooltip" data-toggle="tooltip" data-placement="top" title="Beige" data-replace-with="content-inner-beige"></div>
    </div>
    <div class="toggle-color-settings">
        <i class="icon-cog"></i>
        <span>hide</span>
    </div>
</div>
<%@include file="include/footer.jsp" %>

</body>

</html>