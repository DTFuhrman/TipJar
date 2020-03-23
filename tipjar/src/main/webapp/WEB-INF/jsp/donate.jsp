<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="Donate" />
</c:import>

<c:import url="/WEB-INF/jsp/common/filters.jsp">
		<%-- Modify the baseRoute to apply filters to the current route. --%>
		<c:param name="baseRoute" value="/products"/>
	</c:import>

<h4>Here are the displaced industry workers who have submitted
	information about how to send them support</h4>

<div id="workers-container">
<c:forEach var="worker" items="${workers}">

	<div class="worker-card">

		<h2 class="worker-name">
			<a href="profile?workerId=${worker.workerId}">
				${worker.firstName} ${worker.lastName} </a>
		</h2>


		<div class="worker-description">
			<ul>
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
					<li>You can send payments via the app or the web through
						PayPal: <a href="https://paypal.me/${worker.paypalLink}">
							${worker.paypalLink} </a>
					</li>
				</c:if>
			</ul>
		</div>
	</div>

</c:forEach>
</div>



<c:url var="scriptHref" value="/js/filter.js" />
<script src="${scriptHref}"></script>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />