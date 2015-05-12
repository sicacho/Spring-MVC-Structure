<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="include/header.jsp" %>

<div class="main-content">
    <div class="widget">
        <h3 class="section-title first-title"><i class="icon-table"></i> Users Table</h3>
        <div class="widget-content-white glossed" style="max-width: 70%">
            <div class="padded" >
                <form action="/user/insert" role="form" method="post">

                    <h3 class="form-title form-title-first"><i class="icon-terminal"></i> Add User</h3>
                    <div class="form-group">
                        <label>Username </label>
                        <input type="" class="form-control" name="username" placeholder="Enter username">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" name="email" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <label>Phone Number</label>
                        <input class="form-control" type="text" name="phone" placeholder="Phone Number">
                    </div>
                    <div class="form-group">
                        <label>Select Box</label>
                        <select class="form-control" name="role">
                            <option value="3">Staff</option>
                            <option value="2">Leader</option>
                        </select>
                    </div>
                    <input class="btn btn-primary" type="submit" value="Save"> </input>
                    <button class="btn btn-default">Reset </button>
                </form>
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

</body>

</html>