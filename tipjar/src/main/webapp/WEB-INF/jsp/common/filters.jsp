<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<div class="level" style="padding-top: 10px;">
	<div class="level-right">
		<div class="level-item">
				<p class="heading">Filter by</p>
		</div>
	</div>
	<div class="level-right">
		<div class="level-item field" style="margin: auto;">
			<!-- <label class="label" for="filter-establishment"> By Establishment</label> -->
			<div class="control">
				<div class="select">
					<select id="filter-establishment">
						<option value="All">All</option>
						<c:forEach items="${establishments}" var="establishment">
							<option value="${establishment}">${establishment}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<button class="button is-dark" onclick="filterByEstablishment()">Establishment</button>
		</div>

		<div class="level-item field" style="margin: auto;">
			<!-- <label for="filter-industry"> By Industry</label> -->
			<div class="control">
				<div class="select">
					<select id="filter-industry">
						<option value="All">All</option>
						<c:forEach items="${industries}" var="industry">
							<option value="${industry}">${industry}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<button class="button is-dark" onclick="filterByIndustry()">Industry</button>
		</div>
	</div>
</div>


