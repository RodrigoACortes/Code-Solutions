var buy_now = document.getElementsByClassName('buy_now')

for (var i = buy_now.length - 1; i >= 0; i--) {
	buy_now[i].addEventListener('click', function () {
		alert('Purchased')
	})
}