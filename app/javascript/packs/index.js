console.log('Hello from index.js')

function addNewLocationForm(event) {
    console.log('add new form clicked 000')
    var locationForm = JSON.parse(event.dataset.fieldset);
    var newId = new Date().getTime();
    var regexp = new RegExp("new_" + event.dataset.association, "g");
    field = locationForm.replace(regexp, newId);
    console.log("form is ", field);
    
    var contentHolder = document.getElementById("locations-list");
    contentHolder.insertAdjacentHTML("beforeend", field);
}

window.addNewLocationForm = addNewLocationForm