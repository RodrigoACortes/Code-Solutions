var model = document.getElementsByClassName('model')[0]
var x = document.getElementById('x')

function unhide()
{
	model.style.display = 'block'
}

setTimeout (unhide, 4000)
x.addEventListener('click', function()
{
	model.style.display = 'none'
})