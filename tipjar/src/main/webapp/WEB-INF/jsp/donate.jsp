<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="Donate" />
</c:import>

<c:import url="/WEB-INF/jsp/common/filters.jsp">
	<c:param name="baseRoute" value="/donate" />
</c:import>

<article class="message is-dark is-medium">
	<div class="message-body">Here are the displaced industry workers
		who have submitted information about how to send them support. You can
		find their names and the places they worked below along with either
		their Venmo or PayPal information. You can also filter the list by
		establishment or industry above to find the neighbors you know more
		quickly. Please look for establishments you frequented and names you
		recognize or select any name you like to help support a stranger. Our
		whole community could use support, so please give generously within
		your means. As a caution: Giving to strangers is generous, but this
		information is self-reported and have not been verified by us. You may
		make efforts to independently verify that it is accurate and the
		recipient is as listed. If you notice someone missing from the list
		let them know they can sign up here whenever they like.</div>
</article>
<div class="container">
	<div id="workers-container" class="tile is-ancestor"
		style="flex-flow: wrap;">
		<c:forEach var="worker" items="${workers}">
			<div class="worker-card card-content tile is-3">
				<div class="media">
					<div class="box">
						<p class="title is-3">${worker.firstName} ${worker.lastName}</p>
						<p class="subtitle is-5 establishment-name">${worker.establishment}</p>
						<span class="industry-name tag is-medium is-dark">${worker.industry}</span>
						<span class="current-status tag is-medium is-dark">${worker.status}</span>
						<time class="date-submitted" style="display:block;">${worker.entered}</time>
						<footer>
							<div class="tags are-normal has-addons is-dark"></div>
							<span class="tag"><a href="profile?profile=${worker.workerId}" class="card-footer-item">Info</a></span>
							<c:set var="venmo" value="${worker.venmo}" />
							<c:set var="paypal" value="${worker.paypalLink}" />

							<c:choose>
								<c:when test="${venmo != null}">
									<span class="tag"><a href="https://venmo.com/${worker.venmo}" class="card-footer-item">Venmo</a></span>
								</c:when>
								<c:otherwise>
									<span class="tag is-danger card-footer-item">Venmo</span>
								</c:otherwise>
							</c:choose>

							<c:choose>
								<c:when test="${paypal != null}">
									<span class="tag"><a href="https://paypal.me/${worker.paypalLink}" class="card-footer-item">Paypal</a></span>
								</c:when>
								<c:otherwise>
									<span class="tag card-footer-item is-danger">PayPal</span>
								</c:otherwise>
							</c:choose>
						</footer>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>




<c:url var="scriptHref" value="/js/donate.js" />
<script src="${scriptHref}"></script>
<c:url var="scriptHref2" value="/js/filter.js" />
<script src="${scriptHref2}"></script>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />