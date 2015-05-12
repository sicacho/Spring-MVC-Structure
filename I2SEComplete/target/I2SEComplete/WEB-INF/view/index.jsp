<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="include/header.jsp" %>
<div class="main-content">
<div class="widget">
    <div class="alert alert-warning alert-dismissable">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <i class="icon-exclamation-sign"></i> <strong>Welcome!</strong> This is a dashboard of the Office Task
        Manage.
    </div>
</div>
<div class="widget">
    <div class="widget-controls pull-right">
        <a href="#" class="widget-link-remove"><i class="icon-minus-sign"></i></a>
        <a href="#" class="widget-link-remove"><i class="icon-remove-sign"></i></a>
    </div>
    <h3 class="section-title first-title"><i class="icon-tasks"></i> Statistics</h3>

    <div class="row">
        <div class="col-lg-3 col-md-4 col-sm-6 text-center">
            <div class="widget-content-blue-wrapper changed-up">
                <div class="widget-content-blue-inner padded">
                    <div class="pre-value-block"><i class="icon-dashboard"></i> Task close</div>
                    <div class="value-block">
                        <div class="value-self">520</div>
                        <div class="value-sub"></div>
                    </div>
                    <span class="dynamicsparkline">Loading..</span>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 text-center">
            <div class="widget-content-blue-wrapper changed-up">
                <div class="widget-content-blue-inner padded">
                    <div class="pre-value-block"><i class="icon-user"></i> New task</div>
                    <div class="value-block">
                        <div class="value-self">1,120</div>
                        <div class="value-sub"></div>
                    </div>
                    <span class="dynamicsparkline">Loading..</span>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 text-center hidden-md">
            <div class="widget-content-blue-wrapper changed-up">
                <div class="widget-content-blue-inner padded">
                    <div class="pre-value-block"><i class="icon-signin"></i> Task approval</div>
                    <div class="value-block">
                        <div class="value-self">275</div>
                        <div class="value-sub"></div>
                    </div>
                    <span class="dynamicsparkline">Loading..</span>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 text-center">
            <div class="widget-content-blue-wrapper changed-up">
                <div class="widget-content-blue-inner padded">
                    <div class="pre-value-block"><i class="icon-money"></i> Task starting</div>
                    <div class="value-block">
                        <div class="value-self">30</div>
                        <div class="value-sub"></div>
                    </div>
                    <span class="dynamicbars">Loading..</span>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="widget">
    <div class="widget-controls pull-right">
        <a href="#" class="widget-link-remove"><i class="icon-minus-sign"></i></a>
        <a href="#" class="widget-link-remove"><i class="icon-remove-sign"></i></a>
    </div>
    <h3 class="section-title bottom-margin"><i class="icon-bullseye"></i> Performance Charts</h3>

    <div class="row bottom-margin">
        <div class="col-lg-3 col-md-4 col-sm-6 text-center">
            <div class="section-title2" style="margin-bottom: 10px">Starting</div>
            <input type="text" value="75" class="knob" data-fgColor="#df6064" data-linecap="round" data-width="150">
        </div>
        <div class="col-lg-3 hidden-md col-sm-6 text-center">
            <div class="section-title2" style="margin-bottom: 10px">Close</div>
            <input type="text" value="65" class="knob" data-fgColor="#8963ac" data-linecap="round" data-width="150">
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 text-center">
            <div class="section-title2" style="margin-bottom: 10px">Rejected</div>
            <input type="text" value="85" class="knob" data-fgColor="#61a9dc" data-linecap="round" data-width="150">
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 text-center">
            <div class="section-title2" style="margin-bottom: 10px">Approval</div>
            <input type="text" value="68" class="knob" data-fgColor="#71c280" data-linecap="round" data-width="150">
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-8">
        <ul class="nav nav-tabs">
            <li class=""><a href="#tab_table" data-toggle="tab"><i class="icon-table"></i> Table</a></li>
        </ul>
        <div class="tab-content bottom-margin">
            <div class="tab-pane active" id="tab_table">
                <div class="shadowed-bottom">
                    <div class="row">
                        <div class="col-md-3 bordered">
                            <div class="value-block padded-left text-center">
                                <div class="value-self">312</div>
                                <div class="value-sub">Total Task</div>
                            </div>
                        </div>
                        <div class="col-lg-3 bordered hidden-md">
                            <div class="value-block text-center">
                                <div class="value-self">150</div>
                                <div class="value-sub">Task Resolved</div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-9">
                            <form class="form-inline form-period-selector">
                                <label class="control-label">Time Period:</label><br>
                                <input type="text" placeholder="01/12/2011" class="form-control input-sm">
                                <input type="text" placeholder="01/12/2011" class="form-control input-sm">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="padded">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>Member</th>
                            <th>Task</th>
                            <th>Time</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Floor Lamp</td>
                            <td>word1</td>
                            <td>14/4/2014</td>
                        </tr>
                        <tr>
                            <td>Floor Lamp</td>
                            <td>word1</td>
                            <td>14/4/2014</td>
                        </tr>
                        <tr>
                            <td>Floor Lamp</td>
                            <td>word1</td>
                            <td>14/4/2014</td>
                        </tr>
                        <tr>
                            <td>Floor Lamp</td>
                            <td>word1</td>
                            <td>14/4/2014</td>
                        </tr>
                        <tr>
                            <td>Floor Lamp</td>
                            <td>word1</td>
                            <td>14/4/2014</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="widget">
            <div class="widget-controls pull-right hidden-md">
                <a href="#" class="widget-link-remove"><i class="icon-minus-sign"></i></a>
                <a href="#" class="widget-link-remove"><i class="icon-remove-sign"></i></a>
            </div>
            <h3 class="section-title first-title"><i class="icon-table"></i> Top Memember</h3>

            <div class="widget-content-white padded glossed">
                <div id="topsellers_barchart"></div>
                <table class="table" id="topsellers_table">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Number Task</th>
                        <th>Number Task Resolved</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Floor Lamp</td>
                        <td>100</td>
                        <td>79</td>
                    </tr>
                    <tr>
                        <td>Coffee Mug</td>
                        <td>100</td>
                        <td>79</td>
                    </tr>
                    <tr>
                        <td>Television</td>
                        <td>100</td>
                        <td>79</td>
                    </tr>
                    <tr>
                        <td>Red Carpet</td>
                        <td>100</td>
                        <td>79</td>
                    </tr>
                    <tr>
                        <td>Laptop</td>
                        <td>100</td>
                        <td>79</td>
                    </tr>
                    </tbody>
                </table>
                <a href="#" class="btn btn-sm btn-default">view more</a>
            </div>
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
<script src='/resource/assets/js/for_pages/dashboard.js'></script>
<script>
    $(document).ready(function () {
        $('#dashboard').addClass("current");
    });
</script>

</body>

</html>