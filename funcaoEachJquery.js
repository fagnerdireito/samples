$(function() {
	//$.fn.editable.defaults.mode = 'popup';
	//$('.vinput').editable();
	$('.vinput').each(function() {
		var codigo = $(this).attr('data-id');
		var urledit = "includes/ajax_xedit_guia_audit.ajax";
		$(this).editable({
			url: urledit,
			pk:codigo,
			placement: 'right',
			success: function(response) {submitForm('grava')}
		});
	});
});
