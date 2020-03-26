/**
 * 
 */

document.addEventListener("DOMContentLoaded", () => {
	
	const menuButton = document.getElementById("menu-burger");
	const menuFull = document.getElementById('navbar');
	menuButton.addEventListener('click', () => {
		toggleMenu(menuFull ,menuButton);
	  })
})

//comment
function toggleMenu(menu, burger) {
	menu.classList.toggle('is-active');
	burger.classList.toggle('is-active');
  }