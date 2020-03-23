<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form"%>  

<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="Make Profile" />
</c:import>



<h3>Sorry to hear your work has been affected. Sign up here.</h3>

<div class="submission-form">
	<form:form action="form" method="post" modelAttribute="survey">

		<div class="formInputGroup">
			<form:label path="firstName">Your First Name:</form:label>
			<form:input type="text" path="firstName" id="firstName"/>
			<form:errors path="firstName" style="color:red;"/>
		</div>

		<div class="formInputGroup">
			<form:label path="lastName">Your Last Name</form:label>
			<form:input type="text" path="lastName" id="lastName"/>
			<form:errors path="lastName" style="color:red;"/>
		</div>

		<div class="formInputGroup">
			<form:label path="establishment">Establishment: Where you worked - Try to enter the name as it appears on google maps </form:label>
			<form:input type="text" path="establishment" id="establishment"/>
			<form:errors path="establishment" style="color:red;"/>
		</div>

		<div class="formInputGroup">
			<form:label path="industry">Industry</form:label>
			<form:select path="industry" id="industry">
			<form:option item="Bar" value="Bar">Bar</form:option>
			<form:option item="Beauty" value="Beauty">Beauty</form:option>
			<form:option item="Cafe" value="Cafe">Cafe</form:option>
			<form:option item="Delivery" value="Delivery">Delivery</form:option>
			<form:option item="Entertainment" value="Entertainment">Entertainment</form:option>
			<form:option item="Hospitality" value="Hospitality">Hospitality</form:option>
			<form:option item="Restaurant" value="Restaurant">Restaurant</form:option>
			<form:option item="Transportation" value="Transportation">Transportation</form:option>
			<form:option item="Other" value="Other">Other</form:option>
			</form:select>
			<form:errors path="industry" style="color:red;"/>
		</div>

		<div class="formInputGroup">
			<form:label path="status">Status: Let us know a bit about your work situation</form:label>
			<form:select path="status" id="status">
			<form:option item="Laid-off" value="Laid-off">Laid-off</form:option>
			<form:option item="Temporarily Laid-Off" value="Temporarily Laid-Off">Temporarily Laid-Off</form:option>
			<form:option item="Lost Hours" value="Lost Hours">Lost Hours</form:option>
			<form:option item="Lost Business" value="Lost Business">Lost Business</form:option>
			<form:option item="Other" value="Other">Other</form:option>
			</form:select>
			<form:errors path="status" style="color:red;"/>
		</div>

		<div class="formInputGroup">
			<form:label path="venmo">Your Venmo Name: Just enter the name, no @ sign</form:label>
			<form:input type="text" path="venmo" id="venmo"/>
			<form:errors path="venmo" style="color:red;"/>
		</div>

		<div class="formInputGroup">
			<form:label path="paypalLink">Your PayPal Link Name: Just the name. You can leave off the 'paypal.me/' part</form:label>
			<form:input type="text" path="paypalLink" id="paypalLink"/>
			<form:errors path="paypalLink" style="color:red;"/>
		</div>

		<div class="formInputGroup">
			<form:label path="personalMessage">A personal message about how you are doing: Anything you would like to say to people who are donating.</form:label>
			<form:input type="text" path="personalMessage" id="personalMessage"/>
			<form:errors path="personalMessage" style="color:red;"/>
		</div>

	</form:form>
</div>



<c:url var="scriptHref" value="/js/form.js" />
<script src="${scriptHref}"></script>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />
