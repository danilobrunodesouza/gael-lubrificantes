$('.botaoDeExclusao').on("click", function(){
	var idDoObjeto = $(this).attr("data-id-selecionado");
	$('#idDoClienteModal').val(idDoObjeto);
	$('#idDoClienteModal').html(idDoObjeto);
});