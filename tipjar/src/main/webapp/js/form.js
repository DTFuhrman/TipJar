/**
 * 
 */




 /**
 * Save the new worker profile as JSON for some reason
 * I hope promises reveal how to toss this in the database
 */
function saveWorker() {
    const firstName = document.getElementById('firstName');
    const lastName = document.getElementById('lastName');
    const establishment = document.getElementById('establishment');
    const industry = document.getElementById('industry');
    const venmo = document.getElementById('venmo');
    const paypalLink = document.getElementById('paypalLink');
    const personalMessage = document.getElementById('personalMessage');
  
    const newWorker = {
      firstName: firstName.value,
      lastName: lastName.value,
      establishment: establishment.value,
      industry: industry.value,
      venmo: venmo.value,
      paypalLink: paypalLink.value,
      personalMessage: personalMessage.value
    };

  }