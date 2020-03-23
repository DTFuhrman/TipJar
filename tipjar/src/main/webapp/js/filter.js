/**
 * 
 */

function filterByEstablishment() {
    // Declare variables
    let input = document.getElementById("filter-establishment");
    let filter = input.value.toUpperCase();
    let cards = document.getElementById("workers-container");
    let card = cards.getElementsByClassName("worker-card");
    
    for(let i = 0; i < card.length; i++){

        let establishElems = card[i].getElementsByClassName("establishment-name");
        let estab = establishElems[0].innerText.toUpperCase();

        if (input.value == "All") {
            card[i].style.display = "";
        } else if (estab == input.value.toUpperCase()) {
            card[i].style.display = "";
        } else {
            card[i].style.display = "none";
        }
    }
}
 
function filterByIndustry() {
    // Declare variables
    let input = document.getElementById("filter-industry");
    let filter = input.value.toUpperCase();
    let cards = document.getElementById("workers-container");
    let card = cards.getElementsByClassName("worker-card");

    for(let i = 0; i < card.length; i++){

        let indElems = card[i].getElementsByClassName("industry-name");
        let ind = indElems[0].innerText.toUpperCase();
    
        if (input == "All") {
            card[i].style.display = "";
        } else if (ind == input.value.toUpperCase()) {
            card[i].style.display = "";
        } else {
            card[i].style.display = "none";
        }
    }

} 