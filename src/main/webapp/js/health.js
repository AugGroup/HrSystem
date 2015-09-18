/**
 * @author apiva kimkatanom
 * @date   Aug 11, 2015
 */


var dt;  	

$(function(){
	
	    $('#congenitalDisease_no').change(function() {
		//alert("no");
			
		$("#congenitalDiseaseExplain").prop('readonly',true);
		$('#congenitalDiseaseExplain2').prop('readonly',true);
		$('#congenitalDiseaseExplain3').prop('readonly',true); 		
		$('#congenitalDiseaseExplain').val('');
	    $('#congenitalDiseaseExplain2').val('');
		$('#congenitalDiseaseExplain3').val('');
			
	});
	
	
	$('#congenitalDisease_yes').change(function() {
		//alert("yes");
		if($('#congenitalDisease_yes').prop('checked')){
			
			 $("#congenitalDiseaseExplain").prop('readonly',false);
			 $('#congenitalDiseaseExplain2').prop('readonly',false);
			 $('#congenitalDiseaseExplain3').prop('readonly',false);
				
		} 
			
	});
	
	
	  if($('#congenitalDisease_no').prop('checked')==true){
			
		    $("#congenitalDiseaseExplain").prop('readonly','readonly');
			$('#congenitalDiseaseExplain2').prop('readonly','readonly');
			$('#congenitalDiseaseExplain3').prop('readonly','readonly');				  		  	    		
			$('#congenitalDiseaseExplain').val('');
		    $('#congenitalDiseaseExplain2').val('');
			$('#congenitalDiseaseExplain3').val('');    
			
	   }
	  
	 
	 $('#geneticDisease_no').change(function() {
			//alert("no");
				
			$("#geneticDiseaseExplain").prop('readonly','readonly');
			$('#geneticDiseaseExplain2').prop('readonly','readonly');
			$('#geneticDiseaseExplain3').prop('readonly','readonly');
			$('#geneticDiseaseExplain').val('');
			$('#geneticDiseaseExplain2').val('');
			$('#geneticDiseaseExplain3').val('');		
	
	 });
		
	 
	 
	 $('#geneticDisease_yes').change(function() {
			//alert("yes");
		   if($('#geneticDisease_yes').prop('checked')){
				
				$("#geneticDiseaseExplain").prop('readonly',false);
				$('#geneticDiseaseExplain2').prop('readonly',false);
				$('#geneticDiseaseExplain3').prop('readonly',false);
					
			} 
				
	 });
	 
		
	   if($('#geneticDisease_no').prop('checked')==true){
			
			$("#geneticDiseaseExplain").prop('readonly','readonly');
			$('#geneticDiseaseExplain2').prop('readonly','readonly');
			$('#geneticDiseaseExplain3').prop('readonly','readonly');
			$('#geneticDiseaseExplain').val('');
			$('#geneticDiseaseExplain2').val('');
			$('#geneticDiseaseExplain3').val('');
		} 
	   
	   
	   
	   
	   
	   $('#takeMedicine_no').change(function() {
			//alert("no");
			
			$("#takeMedicineExplain").prop('readonly','readonly');
		    $('#takeMedicineExplain').val('');
					
	   });
		
	 
	 
	  $('#takeMedicine_yes').change(function() {
			//alert("yes");
		   if($('#takeMedicine_yes').prop('checked')){
				
			   $("#takeMedicineExplain").prop('readonly',false);
					
			} 
				
	   });
	 
		
	   if($('#takeMedicine_no').prop('checked')==true){
			
		   $("#takeMedicineExplain").prop('readonly','readonly');
		   $('#takeMedicineExplain').val('');			
		} 
	 

	   
	   
	   $('#intolerance_no').change(function() {
			//alert("no");
			
			$("#intoleranceExplain").prop('readonly','readonly');
			$('#intoleranceExplain').val('');
	   });
		
	 
	 
	   $('#intolerance_yes').change(function() {
			//alert("yes");
		   if($('#intolerance_yes').prop('checked')){
				
			   $("#intoleranceExplain").prop('readonly',false);
					
			} 
				
	   });
	 
		
	   if($('#intolerance_no').prop('checked')==true){
			
		   $("#intoleranceExplain").prop('readonly','readonly');
		   $('#intoleranceExplain').val('');
	   }  	 
	 
	
	  //alert($('#idHealth').val());
	  var idHealth2;
	  
	  if($('#idHealth').val()===''||$('#idHealth').val()===''){
		  //alert('null');
		  $('#deleteBtn').hide();	     
	  }
	  
	  
	  if($('#idHealth').val()!=null&&$('#idHealth').val()!==''){
		  //alert('aaa');
		  $('#saveBtn').text($msgUpdate);
		
	  }
	  
	  
	  $(this).find("#saveBtn").off("click").on("click", function(){
		  
	      $("#createModal").on("show.bs.modal", function(event){
	    	  
	      $(this).find("#create").off("click").on("click", function(){
		
 	      $("#createModal").modal('hide');

		  
		  if($('#idHealth').val()==null||$('#idHealth').val()===''){
			  addHealth(function(d) {
		          //processing the data
		          console.log(d);
		          idHealth2 = d;
		          if(idHealth2!=null&&idHealth2!==''){
			    	  doInitEdit(idHealth2);
			    	  $('#saveBtn').text($msgUpdate);
			    	  $('#deleteBtn').show();
			      }
		      });
			
			
		  }else if($('#idHealth').val()!=null&&$('#idHealth').val()!==''){
			  $('#saveBtn').text($msgUpdate);
	    	  $('#deleteBtn').show();
			  doEdit($('#idHealth').val());			  
		  }
	    });
	  });
  }); 
	   
	  
	  
	  $( "#renew" ).on( "click", function() {
		  if($('#idHealth').val()===''||$('#idHealth').val()===''){
		 	  clear();
		  }
		  if($('#idHealth').val()!=null&&$('#idHealth').val()!==''){
			  doFindData();
		  }
	  });
	  
	  
	  
	  function doFindData() {  
	   	   
 	     var id = $("#empId").val();
	  	     $.ajax({  
	  	      type : "POST",   
	  	      url : $getContextPath+"/health/list/"+id,   
	  	      dataType : 'json', 
	  	      contentType :"application/json; charset=utf-8",
	  	     
	  	      success : function(data) {  	  	    	
	  	    
	  	    	clearDataForList();
	  	        for(var i=0;i<data.length;i++){
	  	        	

					if(data[i].congenitalDisease == "Yes"){
			  			
			  			$('#congenitalDisease_yes').prop('checked', 'checked');
			  			
			  		}else if(data[i].abilitySpeaking == "No"){
			  			
			  			$('#congenitalDisease_no').prop('checked','checked');
			  			
			  		}
					
					
					if($('#congenitalDisease_yes').prop('checked')){
						
						 $("#congenitalDiseaseExplain").prop('readonly',false);
						 $('#congenitalDiseaseExplain2').prop('readonly',false);
						 $('#congenitalDiseaseExplain3').prop('readonly',false);
							
					}else  if($('#congenitalDisease_no').prop('checked')){
						
						 $("#congenitalDiseaseExplain").prop('readonly','readonly');
						 $('#congenitalDiseaseExplain2').prop('readonly','readonly');
						 $('#congenitalDiseaseExplain3').prop('readonly','readonly');
					}
					
					

					
					if(data[i].geneticDisease=="Yes"){
						
						$('#geneticDisease_yes').prop('checked', 'checked');
			  			
			  		}else if(data[i].abilitySpeaking == "No"){
			  			
			  			$('#geneticDisease_no').prop('checked','checked');
			  			
			  		}
					
					  if($('#geneticDisease_yes').prop('checked')){
							
							$("#geneticDiseaseExplain").prop('readonly',false);
							$('#geneticDiseaseExplain2').prop('readonly',false);
							$('#geneticDiseaseExplain3').prop('readonly',false);
								
						}else if($('#geneticDisease_no').prop('checked')){
							
							$("#geneticDiseaseExplain").prop('readonly','readonly');
							$('#geneticDiseaseExplain2').prop('readonly','readonly');
							$('#geneticDiseaseExplain3').prop('readonly','readonly');
								
						} 
							
					
					
					if(data[i].takeMedicine=="Yes"){
						
						$('#takeMedicine_yes').prop('checked', 'checked');
			  			
			  		}else if(data[i].abilitySpeaking == "No"){
			  			
			  			$('#takeMedicine_no').prop('checked','checked');
			  			
			  		}
					
					
					 if($('#takeMedicine_yes').prop('checked')){				
						 $("#takeMedicineExplain").prop('readonly',false);						
					}else if($('#takeMedicine_no').prop('checked')){
						$("#takeMedicineExplain").prop('readonly','readonly');		
					} 
			  		
					
					
					if(data[i].intolerance=="Yes"){
						
						$('#intolerance_yes').prop('checked', 'checked');
			  			
			  		}else if(data[i].abilitySpeaking == "No"){
			  			
			  			$('#intolerance_no').prop('checked','checked');
			  			
			  		}
					
					
					if($('#intolerance_yes').prop('checked')){							
						$("#intoleranceExplain").prop('readonly',false);
					}else if($('#intolerance_no').prop('checked')){
						$("#intoleranceExplain").prop('readonly',false);

					} 
							
	    		
					
					$('#congenitalDiseaseExplain').val(data[i].congenitalDiseaseExplain);
					$('#congenitalDiseaseExplain2').val(data[i].congenitalDiseaseExplain2);
					$('#congenitalDiseaseExplain3').val(data[i].congenitalDiseaseExplain3);
					$('#geneticDiseaseExplain').val(data[i].geneticDiseaseExplain);
					$('#geneticDiseaseExplain2').val(data[i].geneticDiseaseExplain2);
					$('#geneticDiseaseExplain3').val(data[i].geneticDiseaseExplain3);
					$('#takeMedicineExplain').val(data[i].takeMedicineExplain);
					$('#intoleranceExplain').val(data[i].intoleranceExplain);
					
	  	 

		  	     }
	  	        		  	        
	  	     }
	  	  }); 
	  	   
	    }
	  
	  
	  
	  
	  
	 
	 function addHealth(callback){
		 
// 		    var id = getUrlParameter('Id');
		    var id = $("#empId").val();
		    //id=2;
		    var congenitalDisease;
		    var geneticDisease;
		    var takeMedicine;
		    var intolerance;
		    var idHealth;
		    
		    if($('#congenitalDisease_no').is(':checked')){
			
		    	congenitalDisease = $('#congenitalDisease_no').val();	
	  			
	  		}else if($('#congenitalDisease_yes').is(':checked')){
	  			
	  			congenitalDisease = $('#congenitalDisease_yes').val();	
	  			
	  		}
		    
		    
		    
		    if($('#geneticDisease_no').is(':checked')){
			
		    	geneticDisease = $('#geneticDisease_no').val();	
	  			
	  		}else if($('#geneticDisease_yes').is(':checked')){
	  			
	  			geneticDisease = $('#geneticDisease_yes').val();	
	  			
	  		}
		    
		    
		    if($('#takeMedicine_no').is(':checked')){
				
		    	takeMedicine = $('#takeMedicine_no').val();	
	  			
	  		}else if($('#takeMedicine_yes').is(':checked')){
	  			
	  			takeMedicine = $('#takeMedicine_yes').val();	
	  			
	  		}
		    
		    
		    
			if($('#intolerance_no').is(':checked')){
				
				intolerance = $('#intolerance_no').val();	
	  			
	  		}else if($('#intolerance_yes').is(':checked')){
	  			
	  			intolerance = $('#intolerance_yes').val();	
	  			
	  		}
		    
		    
	  	    
	  	    $.ajax({  
	  	      type : "POST",   
	  	      url : $getContextPath+"/health/add",   
	  	      dataType : 'json', 
	  	      data : JSON.stringify(
	  	    		{"congenitalDisease":congenitalDisease,
	    			"congenitalDiseaseExplain" : $('#congenitalDiseaseExplain').val(),
  	    			"congenitalDiseaseExplain2": $('#congenitalDiseaseExplain2').val(),
  	    			"congenitalDiseaseExplain3":$('#congenitalDiseaseExplain3').val(),
  	    			"projectOwnerContact":$('#projectOwnerContact').val(),
  	    			"geneticDisease":geneticDisease,
  	    			"geneticDiseaseExplain":$('#geneticDiseaseExplain').val(),
  	    			"geneticDiseaseExplain2":$('#geneticDiseaseExplain2').val(),
  	    			"geneticDiseaseExplain3":$('#geneticDiseaseExplain3').val(),
  	    			"takeMedicine":takeMedicine,
  	    			"takeMedicineExplain":$('#takeMedicineExplain').val(),
  	    			"intolerance":intolerance,
  	    			"intoleranceExplain":$('#intoleranceExplain').val(),
  	    			"employeeId":id}
	  	    		),  
	  	      contentType :"application/json; charset=utf-8",
	  	     
	  	      success : function(data) { 
	  	    	  
	  	    	   /* $("#createModal").modal('hide'); */
	  	    	   $('#idHealth').val(data.id);			  	    	   
	  	    	   idHealth = data.id;
	  	    	   callback(idHealth);
	  	    	   $(function(){ new PNotify({
						 title: 'Success',
						 type: 'success',
						 animation: {
							effect_in: 'show',
							effect_out: 'slide'
						}
				  	});
  	       		   });
	  	     }
	  	    }); 
	  	 
	  	return idHealth;
	 }
	
	
	
	 
	 
	
	 function doInitEdit(idUpdate){
		 
		 
		 $.ajax({  
	  	      type : "POST",   
	  	      url : $getContextPath+"/health/initedit",   
	  	      dataType : 'json', 
	  	      data : JSON.stringify({"id":idUpdate}),  
	  	      contentType :"application/json; charset=utf-8",
	  	     
	  	      success : function(data) {  

	  	    	  
					if(data.congenitalDisease == "Yes"){
			  			
			  			$('#congenitalDisease_yes').prop('checked', 'checked');
			  			
			  		}else if(data.abilitySpeaking == "No"){
			  			
			  			$('#congenitalDisease_no').prop('checked','checked');
			  			
			  		}
					
					

					
					if(data.geneticDisease=="Yes"){
						
						$('#geneticDisease_yes').prop('checked', 'checked');
			  			
			  		}else if(data.abilitySpeaking == "No"){
			  			
			  			$('#geneticDisease_no').prop('checked','checked');
			  			
			  		}
					
					
					
					if(data.takeMedicine=="Yes"){
						
						$('#takeMedicine_yes').prop('checked', 'checked');
			  			
			  		}else if(data.abilitySpeaking == "No"){
			  			
			  			$('#takeMedicine_no').prop('checked','checked');
			  			
			  		}
			  		
					
					
					if(data.intolerance=="Yes"){
						
						$('#intolerance_yes').prop('checked', 'checked');
			  			
			  		}else if(data.abilitySpeaking == "No"){
			  			
			  			$('#intolerance_no').prop('checked','checked');
			  			
			  		}
	    		
					
					$('#congenitalDiseaseExplain').val(data.congenitalDiseaseExplain);
					$('#congenitalDiseaseExplain2').val(data.congenitalDiseaseExplain2);
					$('#congenitalDiseaseExplain3').val(data.congenitalDiseaseExplain3);
					$('#geneticDiseaseExplain').val(data.geneticDiseaseExplain);
					$('#geneticDiseaseExplain2').val(data.geneticDiseaseExplain2);
					$('#geneticDiseaseExplain3').val(data.geneticDiseaseExplain3);
					$('#takeMedicineExplain').val(data.takeMedicineExplain);
					$('#intoleranceExplain').val(data.intoleranceExplain);
					
	  	 
	  	    	
	  	     }
	  	    }); 
	  	   
		 
	 }
	
	
	 
	  function doEdit(idUpdate){
		  
		  var idemp =  $("#empId").val();
		  //var idemp=2;
		  var congenitalDisease;
		  var geneticDisease;
		  var takeMedicine;
		  var intolerance;
		    
		    
		    if($('#congenitalDisease_no').is(':checked')){
			
		    	congenitalDisease = $('#congenitalDisease_no').val();	
	  			
	  		}else if($('#congenitalDisease_yes').is(':checked')){
	  			
	  			congenitalDisease = $('#congenitalDisease_yes').val();	
	  			
	  		}
		    
		    
		    
		    if($('#geneticDisease_no').is(':checked')){
			
		    	geneticDisease = $('#geneticDisease_no').val();	
	  			
	  		}else if($('#geneticDisease_yes').is(':checked')){
	  			
	  			geneticDisease = $('#geneticDisease_yes').val();	
	  			
	  		}
		    
		    
		    if($('#takeMedicine_no').is(':checked')){
				
		    	takeMedicine = $('#takeMedicine_no').val();	
	  			
	  		}else if($('#takeMedicine_yes').is(':checked')){
	  			
	  			takeMedicine = $('#takeMedicine_yes').val();	
	  			
	  		}
		    
		    
		    
			if($('#intolerance_no').is(':checked')){
				
				intolerance = $('#intolerance_no').val();	
	  			
	  		}else if($('#intolerance_yes').is(':checked')){
	  			
	  			intolerance = $('#intolerance_yes').val();	
	  			
	  		}
		    
		    
	    	 
	  	    $.ajax({  
	  	      type : "POST",   
	  	      url : $getContextPath+"/health/edit",   
	  	      dataType : 'json', 
	  	      data :  JSON.stringify(
		  	    		{	"id":idUpdate,
		  	    			"congenitalDisease":congenitalDisease,
			    			"congenitalDiseaseExplain" : $('#congenitalDiseaseExplain').val(),
		  	    			"congenitalDiseaseExplain2": $('#congenitalDiseaseExplain2').val(),
		  	    			"congenitalDiseaseExplain3":$('#congenitalDiseaseExplain3').val(),
		  	    			"geneticDisease":geneticDisease,
		  	    			"geneticDiseaseExplain":$('#geneticDiseaseExplain').val(),
		  	    			"geneticDiseaseExplain2":$('#geneticDiseaseExplain2').val(),
		  	    			"geneticDiseaseExplain3":$('#geneticDiseaseExplain3').val(),
		  	    			"takeMedicine":takeMedicine,
		  	    			"takeMedicineExplain":$('#takeMedicineExplain').val(),
		  	    			"intolerance":intolerance,
		  	    			"intoleranceExplain":$('#intoleranceExplain').val(),
		  	    			"employeeId":idemp}
			  	    		),  
	  	      contentType :"application/json; charset=utf-8",
	  	     
	  	      success : function(data) {  
	  	    	
	  	    	/* $("#createModal").modal('hide'); */
	  	    	doInitEdit($('#idHealth').val());
	  	    	$(function(){ new PNotify({
					 title: 'Success',
					 type: 'success',
					 animation: {
						effect_in: 'show',
						effect_out: 'slide'
					}
				  });
 	       		});
	  	        
	  	     }
	  	    }); 	  	    
		 
	 }
	 
	
	$("#deleteModal").on("show.bs.modal", function(event){
		 			
					
 					var idDelete = $('#idHealth').val();
 					//alert('iddel: '+idDelete)
		 			$(this).find("#delete").off("click").on("click", function(){
		 			
		 			
			     			$.ajax({  
				  		  	      type : "POST",   
				  		  	      url : $getContextPath+"/health/delete",   
				  		  	      dataType : 'json', 
				  		  	      data : JSON.stringify({"id":idDelete}),  
				  		  	      contentType :"application/json; charset=utf-8",
			  		  	     
				  		  	      success : function(data) {  
				  		    		
				  		  	    	 if(data=='successs'){
				  		  	    		 $("#deleteModal").modal('hide');
				  		  	    		 $('#deleteBtn').hide();
				  				    	 $('#saveBtn').text($msgSave);
				  				    	 clear();
					  	    		     $("#idHealth").val('');
					  	    		  	 $(function(){ new PNotify({
											 title: 'Success',
											 type: 'success',
											 animation: {
												effect_in: 'show',
												effect_out: 'slide'
											}
										  });
						  	       		 });
				  		  	    	 }	  	      
				  		  	    	 
				  		  	     }
			  		  	    }); 
			 
			    });
		 
	 });
	
	
	
	function clear(){
			 $('#congenitalDisease_no').prop('checked', 'checked');
	   		 $('#geneticDisease_no').prop('checked', 'checked');				  		  	    		
	   		 $('#takeMedicine_no').prop('checked', 'checked');
	   	     $('#intolerance_no').prop('checked', 'checked');
	   	     
			 $('#congenitalDiseaseExplain').val('');
		     $('#congenitalDiseaseExplain2').val('');
			 $('#congenitalDiseaseExplain3').val('');	
			 
			 //read only congenitalDiseaseExplain
			 $("#congenitalDiseaseExplain").prop('readonly','readonly');
			 $('#congenitalDiseaseExplain2').prop('readonly','readonly');
			 $('#congenitalDiseaseExplain3').prop('readonly','readonly');	
			 
			 
		 	 $('#geneticDiseaseExplain').val('');
			 $('#geneticDiseaseExplain2').val('');
			 $('#geneticDiseaseExplain3').val('');	
			 
			 //read only geneticDiseaseExplain
			 $("#geneticDiseaseExplain").prop('readonly','readonly');
			 $('#geneticDiseaseExplain2').prop('readonly','readonly');
			 $('#geneticDiseaseExplain3').prop('readonly','readonly');
			 
		     $('#takeMedicineExplain').val('');
		     
			 //read only takeMedicineExplain
		     $("#takeMedicineExplain").prop('readonly','readonly');
		     
		     $('#intoleranceExplain').val('');
		     
		     //read only intoleranceExplain
			 $("#intoleranceExplain").prop('readonly','readonly');

	}
	
	
	
	function clearDataForList(){
		 $('#congenitalDisease_no').prop('checked', 'checked');
  		 $('#geneticDisease_no').prop('checked', 'checked');				  		  	    		
  		 $('#takeMedicine_no').prop('checked', 'checked');
  	     $('#intolerance_no').prop('checked', 'checked');
  	     
		 $('#congenitalDiseaseExplain').val('');
	     $('#congenitalDiseaseExplain2').val('');
		 $('#congenitalDiseaseExplain3').val('');	
		 
		 
	 	 $('#geneticDiseaseExplain').val('');
		 $('#geneticDiseaseExplain2').val('');
		 $('#geneticDiseaseExplain3').val('');	
		 
		
	     $('#takeMedicineExplain').val('');
	     
		 
	     $('#intoleranceExplain').val('');
	     
    }
	
});
