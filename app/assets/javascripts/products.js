$(document).ready(function(){
	loadDatePicker();
});

function loadDatePicker(){
  $('.datepicker').datepicker({
    orientation: "top auto",
    autoclose: true
  });
}