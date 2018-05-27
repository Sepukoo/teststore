function selectTab(element){
	var id = element.getAttribute('data-tab');
	document.querySelector('.tab.active').classList.remove('active');
    document.querySelector('li.active').classList.remove('active');
    document.querySelector('#' + id).classList.add('active');
    element.classList.add('active');
}

function openModal(element, task){
	var id = element.getAttribute('element-id')
	document.querySelector()
}
