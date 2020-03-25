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
	<div id="workers-container" class="tile is-ancestor" style="flex-flow:wrap;">
		<c:forEach var="worker" items="${workers}">
			<div class="worker-card card-content tile is-4">
				<div class="media">
					<div class="media-left">
						<div class="field">
							<!-- <button class="button is-dark" onclick=="activateModal(${worker.workerId})">
								Show Info</button> -->
						</div>
					</div>
					<div class="media-content">
						<p class="title">
							<a href="profile?profile=${worker.workerId}">${worker.firstName}
								${worker.lastName}</a>
						</p>
						<p class="establishment-name subtitle is-6">${worker.establishment}</p>
						<p class="industry-name subtitle is-6">${worker.industry}</p>
						<c:set var="venmo" value="${worker.venmo}" />
						<c:set var="paypal" value="${worker.paypalLink}" />
						<ul>
							<li class="subtitle is-6">${worker.status}</li>
							<li class="subtitle is-6">Venmo: <c:if
									test="${venmo != null}">
									<a href="https://venmo.com/${worker.venmo}">
										${worker.venmo} </a>
								</c:if>
							</li>
							<li class="subtitle is-6">PayPal: <c:if
									test="${paypal != null}">
									<a href="https://paypal.me/${worker.paypalLink}">${worker.paypalLink}
									</a>
								</c:if>
							</li>
						</ul>
						<div class="content">
							${worker.personalMessage}
							<time datetime="2016-1-1">${worker.entered}</time>
						</div>
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