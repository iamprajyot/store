$(document).ready(function(){
	loadDatePicker();
});

function loadDatePicker(){
  $('.datepicker').datepicker({
    dateFormat: "mm-dd-yy",
    orientation: "top auto",
    autoclose: true
  });
}