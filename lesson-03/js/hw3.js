// Has the document fully loaded?

//$(document).ready(function() {
  
	// Actions to perform when button is clicked
	//$("#submit").click(function() {
		//get data from form and assign it to variables
		//pull out preferences
		//var arttype = [];
		//$('.arttype:checked').each(function(index) {
			//arttype[index] = $(this).val() ;	
		//});
		//use this one just for alert
		//var name = $("#contactname").val() ;
		//var contactdata = {contactname: $("#contactname").val() , contactemail: $("#contactemail").val() , arttype: arttype };
		
		
	// send confirmation back to user
  	//alert("Thank you, " + (name) + ", your input has been sent.");
	
	//console.log(contactdata) ;
	
	//});


//});

// wait for the page to fully load
$(document).ready(function() {
	// wait for the send button to be clicked
	$("#lrb_submit").click(function() {
		// get the data from the form 
		var name = $("#contactname").val() ;
		var email = $("#contactemail").val() ;
		var arttype = [];
		$('.arttype:checked').each(function(index) {
			arttype[index] = $(this).val();
		});
		var contactdata = {contactname: $("#contactname").val() , contactemail: $("#contactemail").val() , arttype: arttype , comments: 		$("#comments").val() };
		//check to see if it works
		//console.log(contactdata) ;
		
		$.ajax({
			type:"POST",
			url:'js/mailto.php',
			data:name
			//data:contactdata
			}).done(function() {
			  alert("SUCCESS");
			});	
	});


});

/////////////////////////
// wait for the page to fully load
//$(document).ready(function() {
	// wait for the send button to be clicked
	//$("#send-contact").click(function() {
		// get the data from the form 
		//var services = [];
		//$('.services:checked').each(function(index) {
			//services[index] = $(this).val();
//		});
	//	var contact = {customername: $("#customername").val() , customeremail: $("#customeremail").val() , services: services };
		//$.ajax({
			//type:"POST",
			//url:'send-contact.php',
			//data:contact
			//}).done(function() {
			//  alert("Your contact information has been sent, we will call you soon.");
			//});	
	//});


//});