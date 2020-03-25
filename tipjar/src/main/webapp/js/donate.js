/**
 * 
 */

function activateModal(num) {
	let containerName = "modal" + num;
	const modalContainer = document.getElementById(containerName);
	modalContainer.class += "is-active";
}