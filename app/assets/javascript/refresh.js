$("#ref_next").bind("ajax:success",
    function(xhr, data, status) {
    next()
})

function next(){
    text = document.getElementById("educ_tab")
	text.innerHTML = "Новый текст"
}

console.log("hi")