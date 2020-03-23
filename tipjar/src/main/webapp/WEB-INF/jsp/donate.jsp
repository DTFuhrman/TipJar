<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="Donate" />
</c:import>



<h3>Here are the displaced industry workers who have submitted
	information about how to send them support</h3>





<div class="workers-container">
<c:forEach var="worker" items="${workers}">

	<div class="worker-card">

		<%-- I have no idea How to add images in a project this big, 
			but it would be nice if their was an option to add a portrait

		<a href="profile?workerId=${worker.workerId}"> 
			<c:set var="imageString" value="${worker.workerId}"/>
			<img src="img/parks/${fn:toLowerCase(imageString)}.jpg">
		</a> --%>

		<h2 class="worker-name">
			<a href="profile?workerId=${worker.workerId}">
				${worker.firstName} ${worker.lastName} </a>
		</h2>


		<span class="worker-description">
			<ul>
				<li>${worker.industry}</li>
				<li>${worker.establishment}</li>
				<li>${worker.status}</li>
				<c:set var="venmo" value="${worker.venmo}" />
				<c:if test="${venmo != null}">
					<li>You can send payments via the Venmo app to: <a
						href="https://venmo.com/${worker.venmo}"> ${worker.venmo} </a>
					</li>
				</c:if>
				<c:set var="paypal" value="${worker.paypalLink}" />
				<c:if test="${paypal != null}">
					<li>You can send payments via the app or the web through
						PayPal: <a href="https://${worker.paypalLink}">
							${worker.paypalLink} </a>
					</li>
				</c:if>
			</ul>
		</span>
	</div>

</c:forEach>
</div>



<c:import url="/WEB-INF/jsp/common/footer.jsp" />