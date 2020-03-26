/**
 * 
 */

document.addEventListener("DOMContentLoaded", () => {
	
	const menuButton = document.getElementById("menu-burger");
	const menuFull = document.getElementById('navbar');
	menuButton.addEventListener('click', (menuFull ,menuButton) => {
		toggleMenu(menuFull ,menuButton);
	  })
})


function toggleMenu(menu, burger) {
	menu.classList.toggle('is-active');
	burger.classList.toggle('is-active');
  }