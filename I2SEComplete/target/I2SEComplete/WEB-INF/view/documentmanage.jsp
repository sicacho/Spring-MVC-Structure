<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="include/header.jsp" %>

<div class="main-content">
    <div class="widget">
        <h3 class="section-title first-title"><i class="icon-table"></i> Document</h3>
        <div class="widget-content-white glossed">
            <div class="padded">
                <table class="table table-striped table-bordered table-hover datatable">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Detail</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>Spec 1</td>
                        <td>This is spec 1</td>
                        <td>
                            <a href="/resource/Assignment1-TravelTiger.pdf" class="btn btn-default"><i class="icon-cloud-download"></i> Download</a>
                        </td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Spec 2</td>
                        <td>This is spec 2</td>
                        <td>
                            <a href="/resource/Assignment1-TravelTiger.pdf" class="btn btn-default"><i class="icon-cloud-download"></i> Download</a>
                        </td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Spec 3</td>
                        <td>This is spec 3</td>
                        <td>
                            <a href="/resource/Assignment1-TravelTiger.pdf" class="btn btn-default"><i class="icon-cloud-download"></i> Download</a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<%@include file="include/footer.jsp" %>
</body>
</html>