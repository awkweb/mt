$(document).on("click", ".open-dialog", function () {
	var row = document.getElementById('a1');
	var title = row.getAttribute('data-title');
	var symbol = row.getAttribute('data-symbol');

	$(".modal-header #modalTitle").text(title);
	$(".modal-body #inputSymbol").val(symbol);
});

$(function () {
	$('[data-toggle="popover"]').popover()
})
