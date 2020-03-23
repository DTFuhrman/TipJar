<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="Profile" />
</c:import>

<h3>${worker.firstName} ${worker.lastName}</h3>


<li class="industry-name">${worker.industry}</li>
<li class="establishment-name">${worker.establishment}</li>
<li>${worker.status}</li>
<c:set var="venmo" value="${worker.venmo}" />
<c:if test="${venmo != null}">
	<li>You can send payments via the Venmo app to: <a
		href="https://venmo.com/${worker.venmo}"> ${worker.venmo} </a>
	</li>
</c:if>
<c:set var="paypal" value="${worker.paypalLink}" />
<c:if test="${paypal != null}">
	<li>You can send payments via the app or the web through PayPal: <a
		href="https://paypal.me/${worker.paypalLink}">
			${worker.paypalLink} </a>
	</li>
</c:if>




	<c:import url="/WEB-INF/jsp/common/footer.jsp" />