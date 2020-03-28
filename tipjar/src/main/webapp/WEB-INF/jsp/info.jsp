<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  

<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="Info" />
</c:import>



  <section class="section">
    <div class="container">
      <h1 class="title">Why this exists.</h1>
      	<h2 class="subtitle">When COVID-19 put a formal end to dine-in eating at restaurants in Allegheny County, it wasn't just your stomach missing out.<br>
       	Right now, your tip dollars aren't landing in the hands of service workers across the county.</h2>
       	<h2>The total count of confirmed COVID-19 cases in the United States: <span style="font-weight:bold" id="usCovidCount"></span></h2>
       	<h3>(updated daily using data from <a href="https://github.com/CSSEGISandData/COVID-19">Johns Hopkins CSSE)</a></h3>
    </div>
  </section>
  




<c:import url="/WEB-INF/jsp/common/footer.jsp" />


  <script>
  
  function loadCovidApi() {

      fetch('https://api.covid19api.com/summary') 
        .then((response) => {
          return response.json();
        })
        .then((data) => {
          const countries = data;
          showUSFigures(countries.Countries);
        })
    }
    
    
    function showUSFigures(countries){

      let count = 0;

      countries.forEach( 
        (country) => {if(country.Slug === 'us'){
          count = country.TotalConfirmed;
        } 
      });
      
      let covidCount = document.getElementById('usCovidCount');
      
      covidCount.innerText = count;

    }
  
  document.addEventListener("DOMContentLoaded", () => {

	  loadCovidApi();

	});
  
  </script>