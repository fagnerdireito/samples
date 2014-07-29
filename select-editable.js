<script language="javascript">
$.fn.editable.defaults.mode = 'inline';
$('#grupo').editable({
	title: 'Grupo',
	placement: 'right',
	value: 1,
	source: [
		{value: 2, text: 'Previdência'},
		{value: 3, text: 'Assistência'}
	],
  success: function(response, newValue) {
		$.ajax({
				type:'POST',
				data:'codigo='+newValue,
				url:'teste2.asp',
				success: function(response) {
				 $('#cargo').editable('option', 'source', response);
				 $('#cargo').editable('setValue', null);
				 $('#cargo').editable('toggle');
			}
		});
	}
});

$('#cargo').editable({
  title: 'Cargo',
	placement: 'right'
});
</script>
