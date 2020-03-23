<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<div id="filter-options">
	<h3>Sort By</h3>
	<span class="filter-establishment">
		<button onclick="filterByEstablishment()">Search</button>
		<label for="filter-establishment">View From A Specific Establishment</label>
		<select id="filter-establishment">
			<c:forEach items="${establishments}" var="establishment">
				<option value="${establishment}">${establishment}</option>
			</c:forEach>
		</select>
	</span>
	
	<span class="filter-industry">
		<button onclick="filterByIndustry()">Search</button>
		<label for="filter-industry">View From A Specific Industry</label>
		<select id="filter-industry">
			<c:forEach items="${industries}" var="industry">
				<option value="${industry}">${industry}</option>
			</c:forEach>
		</select>
	</span>
</div>
