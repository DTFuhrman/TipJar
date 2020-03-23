/**
 * 
 */

function filterByEstablishment() {
    // Declare variables
    let input = document.getElementById("filter-establishment");
    let filter = input.value.toUpperCase();
    let cards = document.getElementById("workers-container");
    let card = cards.getElementsByClass("worker-card");

    card.array.forEach(element => {
        if (input.toUpperCase == "ALL") {
            element.style.display = "";
        } else if (element.getElementsByClass("establishment-name").innerText.toUpperCase == input) {
            element.style.display = "";
        } else {
            element.style.display = "none";
        }
    });

}

function filterByIndustry() {
    // Declare variables
    let input = document.getElementById("filter-industry");
    let filter = input.value.toUpperCase();
    let cards = document.getElementById("workers-container");
    let card = cards.getElementsByClass("worker-card");

    card.array.forEach(element => {
        if (input.toUpperCase == "ALL") {
            element.style.display = "";
        } else if (element.getElementsByClass("industry-name").innerText.toUpperCase == input) {
            element.style.display = "";
        } else {
            element.style.display = "none";
        }
    });

} 