/**
 * @author apiva kimkatanom
 * @date   Aug 11, 2015
 */


var dt;  	

$(function(){
	
	
	
	var $congenitaldiv = $('#congenitaldiv');
	var $congenital2div = $('#congenital2div');
	var $congenital3div = $('#congenital3div');
	var $geneticDiseaseExplainDiv = $('#geneticDiseaseExplainDiv');
	var $geneticDiseaseExplainDiv2 = $('#geneticDiseaseExplainDiv2');
	var $geneticDiseaseExplainDiv3 = $('#geneticDiseaseExplainDiv3');
	
	
	
	var $congenitalDisease = $('#congenitalDisease');
	var $congenitalDiseaseExplain  = $('#congenitalDiseaseExplain');
	var $congenitalDiseaseExplain2 = $('#congenitalDiseaseExplain2');
	var $congenitalDiseaseExplain3 = $('#congenitalDiseaseExplain3');
	
	
	var $geneticDisease = $('#geneticDisease');
	var $geneticDiseaseExplain = $('#geneticDiseaseExplain');
	var $geneticDiseaseExplain2 = $('#geneticDiseaseExplain2');
	var $geneticDiseaseExplain3 = $('#geneticDiseaseExplain3');
	
	var $takeMedicine = $("#takeMedicine");
	var $takeMedicineExplain = $("#takeMedicineExplain");
	var $takeMedicineDiv = $("#takeMedicineDiv");
	var $takeMedicineOk = $('#takeMedicineOk');
	
	
	var $intolerance = $("#intolerance");
	var $intoleranceExplain = $("#intoleranceExplain");
	var $intoleranceDiv = $("#intoleranceDiv");
	var $intoOk = $('#intoOk');
	
	
	var $btnOkCongenital = $('#btnOkCongenital');
	var $geneticDiseaseBtnOk = $('#geneticDiseaseBtnOk');
	
	
	readonly();
	
	function  readonly(){
			$congenitalDisease.prop('readonly','readonly');
			$geneticDisease.prop('readonly','readonly');		
			$takeMedicine.prop('readonly','readonly');
			$intolerance.prop('readonly','readonly');
	}
		

	event();
	
	function event(){

	/*Event of CongenitalDiseaseExplain*/

	if($congenitalDisease.val()==null||$congenitalDisease.val()===''){
		
		$congenitalDiseaseExplain.val('');
		$congenitalDiseaseExplain2.val('');
		$congenitalDiseaseExplain2.prop("readonly",true);
		$congenitalDiseaseExplain3.val('');
		$congenitalDiseaseExplain3.prop("readonly",true);
		 
		$congenitaldiv.hide();
		$congenital2div.hide();
		$congenital3div.hide();
	}
	
	
	if($congenitalDisease.val()=='Yes'){
		
		if($congenitalDiseaseExplain.val()!=null&&$congenitalDiseaseExplain.val()!==''){
			
			$congenitaldiv.show();
			
		}
		
		
		if($congenitalDiseaseExplain2.val()!=null&&$congenitalDiseaseExplain2.val()!==''){
			
			$congenital2div.show();
			
		}
		
		if($congenitalDiseaseExplain3.val()!=null&&$congenitalDiseaseExplain.val()!==''){
			
			$congenital3div.show();
			
		}
		
		
	}else{
		 $congenitaldiv.hide();
		 $congenital2div.hide();
		 $congenital3div.hide();
		 
		 $('#congenitalDiseaseExplain').val('');
	     $('#congenitalDiseaseExplain2').val('');
		 $('#congenitalDiseaseExplain3').val('');	
		 
		
		 $('#congenitalDiseaseExplain2').prop('readonly','readonly');
		 $('#congenitalDiseaseExplain3').prop('readonly','readonly');	
		 
	}
	
	
	
	
	 $btnOkCongenital.click(function(){
		 
		 $congenitalDisease.val('Yes');
		 $congenitaldiv.show();
		 $congenital2div.show();
		 $congenital3div.show();
		
	});
	 
	 $('#btnNoCongenital').click(function(){
		 
		 $congenitalDisease.val('No');
		 $congenitaldiv.hide();
		 $congenital2div.hide();
		 $congenital3div.hide();
		 $congenitalDiseaseExplain.val('');
		 $congenitalDiseaseExplain2.val('');
		 $congenitalDiseaseExplain2.prop("readonly",true)
	     $congenitalDiseaseExplain3.val('');	
		 $congenitalDiseaseExplain3.prop("readonly",true)
		
	});
	 
	 
	 
	  $($congenitalDiseaseExplain).keyup(function() {
						 
			 if($congenitalDiseaseExplain.val()!=null&&$congenitalDiseaseExplain.val()!==''){
				 
				 $congenitalDiseaseExplain2.prop("readonly",false);
				 
			 }else{
				 
				 $congenitalDisease.val('');
				 
				 $congenitalDiseaseExplain.val('');
				 $congenitalDiseaseExplain2.val('');
				 $congenitalDiseaseExplain2.prop("readonly",true);
				 $congenitalDiseaseExplain3.val('');
				 $congenitalDiseaseExplain3.prop("readonly",true);
				 
				 $congenitaldiv.hide();
				 $congenital2div.hide();
				 $congenital3div.hide();
			 }
			 
		});
		
		 
		 $($congenitalDiseaseExplain2).keyup(function() {
			 
			 
			 if($congenitalDiseaseExplain2.val()!=null&&$congenitalDiseaseExplain2.val()!==''){
				
				 $congenitalDiseaseExplain3.prop("readonly",false);
			 }else{
				 $congenitalDiseaseExplain3.val('');
				 $congenitalDiseaseExplain3.prop("readonly",true);
			 }
			 
		 });
		 
	 
	 
	 
	 
	 
	 
	 /*Event of GeneticDiseaseExplain*/

		if($geneticDisease.val()==null||$geneticDisease.val()===''){
			
			$geneticDiseaseExplain.val('');
			$geneticDiseaseExplain2.val('');
			$geneticDiseaseExplain2.prop("readonly",true);
			$geneticDiseaseExplain3.val('');
			$geneticDiseaseExplain3.prop("readonly",true);
			 
			$geneticDiseaseExplainDiv.hide();
			$geneticDiseaseExplainDiv2.hide();
			$geneticDiseaseExplainDiv3.hide();
		}
		
		
		if($geneticDisease.val()=='Yes'){
			
			if($geneticDiseaseExplain.val()!=null&&$geneticDiseaseExplain.val()!==''){
				
				$geneticDiseaseExplainDiv.show();
				
			}
			
			
			if($geneticDiseaseExplain2.val()!=null&&$geneticDiseaseExplain2.val()!==''){
				
				$geneticDiseaseExplainDiv2.show();
				
			}
			
			if($geneticDiseaseExplain3.val()!=null&&$geneticDiseaseExplain.val()!==''){
				
				$geneticDiseaseExplainDiv3.show();
				
			}
			
			
		}else{
			
			
			 $geneticDiseaseExplainDiv.hide();
			 $geneticDiseaseExplainDiv2.hide();
			 $geneticDiseaseExplainDiv3.hide();
			
			
			 
			 $('#geneticDiseaseExplain').val('');
		     $('#geneticDiseaseExplain2').val('');
			 $('#geneticDiseaseExplain3').val('');	
			 
			
			 $('#geneticDiseaseExplain2').prop('readonly','readonly');
			 $('#geneticDiseaseExplain3').prop('readonly','readonly');	
			 
		}
		
		
		
		
		
		$geneticDiseaseBtnOk.click(function(){
			 
			 $geneticDisease.val('Yes');
			 $geneticDiseaseExplainDiv.show();
			 $geneticDiseaseExplainDiv2.show();
			 $geneticDiseaseExplainDiv3.show();
			
		});
		
		
		$('#geneticDiseaseBtnNo').click(function(){
			 
			 $geneticDisease.val('No');
			 $geneticDiseaseExplainDiv.hide();
			 $geneticDiseaseExplainDiv2.hide();
			 $geneticDiseaseExplainDiv3.hide();
			
		});
		
		
		
		
		
		$($geneticDiseaseExplain).keyup(function() {
			 
			 if($geneticDiseaseExplain.val()!=null&&$geneticDiseaseExplain.val()!==''){
				 
				 $geneticDiseaseExplain2.prop("readonly",false);
				 
			 }else{
				 
				 $geneticDisease.val('');
				 
				 $geneticDiseaseExplain.val('');
				 $geneticDiseaseExplain2.val('');
				 $geneticDiseaseExplain2.prop("readonly",true);
				 $geneticDiseaseExplain3.val('');
				 $geneticDiseaseExplain3.prop("readonly",true);
				 
				 $geneticDiseaseExplainDiv.hide();
				 $geneticDiseaseExplainDiv2.hide();
				 $geneticDiseaseExplainDiv3.hide();
			 }
			 
		});
		
		 
		 $($geneticDiseaseExplain2).keyup(function() {
			 
			 
			 if($geneticDiseaseExplain2.val()!=null&&$geneticDiseaseExplain2.val()!==''){
				
				 $geneticDiseaseExplain3.prop("readonly",false);
			 }else{
				 $geneticDiseaseExplain3.val('');
				 $geneticDiseaseExplain3.prop("readonly",true);
			 }
			 
		 });
		 
		
		
		
		
		
		
		
		
		
		
		
		
		/*Event of TakeMedicineExplain*/

		if($takeMedicine.val()==null||$takeMedicine.val()===''){
			
			$takeMedicineExplain.val('');
			$takeMedicineDiv.hide();

		}
		
		
		if($takeMedicine.val()=='Yes'){
			
			if($takeMedicineExplain.val()!=null&& $takeMedicineExplain.val()!==''){
				
				$takeMedicineDiv.show();
				
			}
			
		}else{
			
			$takeMedicineDiv.hide();
			$takeMedicineExplain.val('');			
		}
		
		
		
		
		$takeMedicineOk.click(function(){
			 
			 $takeMedicine.val('Yes');
			 $takeMedicineDiv.show();		
			
		});
		
		
		$('#takeMedicineNo').click(function(){
			 
			 $takeMedicine.val('No');
			 $takeMedicineDiv.hide();		
			
		});
		 
		 
		 
		$($takeMedicineExplain).keyup(function() {
			 
			 if($takeMedicineExplain.val()!=null&&$takeMedicineExplain.val()!==''){
				 
				 $takeMedicineExplain.prop("readonly",false);
				 
			 }else{
				 
				 $takeMedicine.val('');					 
				 $takeMedicineExplain.val('');
				 $takeMedicineDiv.hide();

			 }
			 
		});			
	 
		
		 
		 
		 /*Event of IntoleranceExplain*/

			if($intolerance.val()==null||$intolerance.val()===''){
				
				$intoleranceExplain.val('');			
				$intoleranceDiv.hide();

			}
			
			
			if($intolerance.val()=='Yes'){
				
				if($intoleranceExplain.val()!=null&& $intoleranceExplain.val()!==''){
					
					$intoleranceDiv.show();
					
				}
				
			}else{
				
				$intoleranceExplain.val('');			
				$intoleranceDiv.hide();
			}
			
			
			
			
			 $intoOk.click(function(){
				 
				 $intolerance.val('Yes');
				 $intoleranceDiv.show();
				
				
			 });
			 
			 
			 $('#intoNo').click(function(){
				 
				 $intolerance.val('No');
				 $intoleranceDiv.hide();
				
				
			 });
			 
			 
			 
			$($intoleranceExplain).keyup(function() {
								 
					 if($intoleranceExplain.val()!=null&&$intoleranceExplain.val()!==''){
						 
						 $intoleranceExplain.prop("readonly",false);
						 
					 }else{
						 
						 $intolerance.val('');					 
						 $intoleranceExplain.val('');
						 $intoleranceDiv.hide();

					 }
			 });
				
	
	 
	}
	
	
	  var idHealth2;
	  var $idHealth = $('#idHealth');
	  
	  if($idHealth.val()===''||$idHealth.val()===''){
		  $('#deleteBtn').hide();	     
	  }
	  
	  
	  if($idHealth.val()!=null&&$idHealth.val()!==''){
		  $('#saveBtn').text($msgUpdate);
		
	  }
	  
	  
	  $(this).find("#saveBtn").off("click").on("click", function(){
		  
	      $("#createModal").on("show.bs.modal", function(event){
	    	  
	      $(this).find("#create").off("click").on("click", function(){
		
 	      $("#createModal").modal('hide');

		  
		  if($idHealth.val()==null||$idHealth.val()===''){
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
			
			
		  }else if($idHealth.val()!=null&&$idHealth.val()!==''){
			  $('#saveBtn').text($msgUpdate);
	    	  $('#deleteBtn').show();
			  doEdit($idHealth.val());			  
		  }
	    });
	  });
  }); 
	   
	  
	  
	  $( "#renew" ).on( "click", function() {
		  if($idHealth.val()===''||$idHealth.val()===''){
		 	  clear();
		  }
		  if($idHealth.val()!=null&&$idHealth.val()!==''){
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
	  	    
	  	    	
	  	    	  
	  	        for(var i=0;i<data.length;i++){
		  	        	
	  	        	$congenitalDisease.val(data[i].congenitalDisease);
					$congenitalDiseaseExplain.val(data[i].congenitalDiseaseExplain);
					$congenitalDiseaseExplain2.val(data[i].congenitalDiseaseExplain2);
					$congenitalDiseaseExplain3.val(data[i].congenitalDiseaseExplain3);
					$geneticDisease.val(data[i].geneticDisease);
					$geneticDiseaseExplain.val(data[i].geneticDiseaseExplain);
					$geneticDiseaseExplain2.val(data[i].geneticDiseaseExplain2);
					$geneticDiseaseExplain3.val(data[i].geneticDiseaseExplain3);
					$takeMedicine.val(data[i].takeMedicine);
					$takeMedicineExplain.val(data[i].takeMedicineExplain);
					$intolerance.val(data[i].intolerance);
					$intoleranceExplain.val(data[i].intoleranceExplain);
					
					
					if(data[i].congenitalDisease=='Yes'){
						
						$congenitaldiv.show();
						$congenital2div.show();
						$congenital3div.show();
						
						if(data[i].congenitalDiseaseExplain!=null&&data[i].congenitalDiseaseExplain!==''){
							
							 $congenitalDiseaseExplain2.prop("readonly",false);
						}
						
					    if(data[i].congenitalDiseaseExplain2!=null&&data[i].congenitalDiseaseExplain2!==''){
					    	 $congenitalDiseaseExplain3.prop("readonly",false);
					    }
					}else{
						
						$congenitaldiv.hide();
						$congenital2div.hide();
						$congenital3div.hide();
						
						$congenitalDiseaseExplain.val('');
					    $congenitalDiseaseExplain2.val('');
					    $congenitalDiseaseExplain2.prop("readonly",true)
						$congenitalDiseaseExplain3.val('');	
					    $congenitalDiseaseExplain3.prop("readonly",true)
					}
					
					

		  	     }
	  	        
	  	        
	  	          
	  	     }
	  	  }); 
	  	   
	    }
	  
	  
	  
	  
	  
	 
	 function addHealth(callback){
		 
		    var id = $("#empId").val();
		    var idHealth;
		    
	  	    $.ajax({  
	  	      type : "POST",   
	  	      url : $getContextPath+"/health/add",   
	  	      dataType : 'json', 
	  	      data : JSON.stringify(
	  	    		{"congenitalDisease":$congenitalDisease.val(),
	    			"congenitalDiseaseExplain" : $congenitalDiseaseExplain.val(),
  	    			"congenitalDiseaseExplain2": $congenitalDiseaseExplain2.val(),
  	    			"congenitalDiseaseExplain3":$congenitalDiseaseExplain3.val(),
  	    			"geneticDisease":$geneticDisease.val(),
  	    			"geneticDiseaseExplain":$geneticDiseaseExplain.val(),
  	    			"geneticDiseaseExplain2":$geneticDiseaseExplain2.val(),
  	    			"geneticDiseaseExplain3":$geneticDiseaseExplain3.val(),
  	    			"takeMedicine":$takeMedicine.val(),
  	    			"takeMedicineExplain":$takeMedicineExplain.val(),
  	    			"intolerance":$intolerance.val(),
  	    			"intoleranceExplain":$intoleranceExplain.val(),
  	    			"employeeId":id}
	  	    		),  
	  	      contentType :"application/json; charset=utf-8",
	  	     
	  	      success : function(data) { 
	  	    	  
	  	    	   $('#idHealth').val(data.id);			  	    	   
	  	    	   idHealth = data.id;
	  	    	   callback(idHealth);
	  	    	   $(function(){ new PNotify({
						 title:$notifySuccess,
						 text: $notifyAdd,
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
	  	    	  
	  	    	    alert('bbb');
	  	    	    $('#congenitalDisease').val(data.congenitalDisease);
					$('#congenitalDiseaseExplain').val(data.congenitalDiseaseExplain);
					$('#congenitalDiseaseExplain2').val(data.congenitalDiseaseExplain2);
					$('#congenitalDiseaseExplain3').val(data.congenitalDiseaseExplain3);
					$('#geneticDisease').val(data.geneticDisease);
					$('#geneticDiseaseExplain').val(data.geneticDiseaseExplain);
					$('#geneticDiseaseExplain2').val(data.geneticDiseaseExplain2);
					$('#geneticDiseaseExplain3').val(data.geneticDiseaseExplain3);
					$('#takeMedicine').val(data.takeMedicine);
					$('#takeMedicineExplain').val(data.takeMedicineExplain);
					$('#intolerance').val(data.intolerance);
					$('#intoleranceExplain').val(data.intoleranceExplain);
					
					
	  	      }
	  	    }); 
	  	   
		 
	 }
	
	
	 
	  function doEdit(idUpdate){
		  
		  var idemp =  $("#empId").val();
		 
		  
	  	    $.ajax({  
	  	      type : "POST",   
	  	      url : $getContextPath+"/health/edit",   
	  	      dataType : 'json', 
	  	      data :  JSON.stringify(
		  	    		{	"id":idUpdate,
		  	    			"congenitalDisease":$congenitalDisease.val(),
			    			"congenitalDiseaseExplain" : $congenitalDiseaseExplain.val(),
		  	    			"congenitalDiseaseExplain2": $congenitalDiseaseExplain2.val(),
		  	    			"congenitalDiseaseExplain3":$congenitalDiseaseExplain3.val(),
		  	    			"geneticDisease":$geneticDisease.val(),
		  	    			"geneticDiseaseExplain":$geneticDiseaseExplain.val(),
		  	    			"geneticDiseaseExplain2":$geneticDiseaseExplain2.val(),
		  	    			"geneticDiseaseExplain3":$geneticDiseaseExplain3.val(),
		  	    			"takeMedicine":$takeMedicine.val(),
		  	    			"takeMedicineExplain":$takeMedicineExplain.val(),
		  	    			"intolerance":$intolerance.val(),
		  	    			"intoleranceExplain":$intoleranceExplain.val(),
		  	    			"employeeId":idemp}
			  	    		),  
	  	      contentType :"application/json; charset=utf-8",
	  	     
	  	      success : function(data) {  
	  	    	
	  	    	/* $("#createModal").modal('hide'); */
	  	    	doInitEdit($('#idHealth').val());
	  	    	$(function(){ new PNotify({
					 title: $notifySuccess,
					 text: $notifyUpdate,
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
											 title:$notifySuccess,
											 text: $notifyDelete,
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
			 
		     $('#congenitalDisease').val('');
			 $('#congenitalDiseaseExplain').val('');
		     $('#congenitalDiseaseExplain2').val('');
			 $('#congenitalDiseaseExplain3').val('');	
			 
			 //read only congenitalDisease
			 $("#congenitalDisease").prop('readonly','readonly');
			 //$("#congenitalDiseaseExplain").prop('readonly','readonly');
			 $('#congenitalDiseaseExplain2').prop('readonly','readonly');
			 $('#congenitalDiseaseExplain3').prop('readonly','readonly');	
			 
			 $('#geneticDisease').val('');
		 	 $('#geneticDiseaseExplain').val('');
			 $('#geneticDiseaseExplain2').val('');
			 $('#geneticDiseaseExplain3').val('');	
			 
			 //read only geneticDisease
			 $("#geneticDisease").prop('readonly','readonly');
			 //$("#geneticDiseaseExplain").prop('readonly','readonly');
			 $('#geneticDiseaseExplain2').prop('readonly','readonly');
			 $('#geneticDiseaseExplain3').prop('readonly','readonly');
			 
			 
			 $('#takeMedicine').val('');
		     $('#takeMedicineExplain').val('');
		     
			 //read only takeMedicine
		     $("#takeMedicine").prop('readonly','readonly');
		     //$("#takeMedicineExplain").prop('readonly','readonly');
		     
		     $('#intolerance').val('');
		     $('#intoleranceExplain').val('');
		     
		     //read only intolerance
			 $("#intolerance").prop('readonly','readonly');
			 //$("#intoleranceExplain").prop('readonly','readonly');
			 
			  $congenitaldiv.hide();
			  $congenital2div.hide();
			  $congenital3div.hide();
			  $geneticDiseaseExplainDiv.hide();
			  $geneticDiseaseExplainDiv2.hide();
			  $geneticDiseaseExplainDiv3.hide();
			  $takeMedicineDiv.hide();
			  $intoleranceDiv.hide();

	}
	
	
	
	
	function clearDataForList(){
		 
		
		 
		 
	 	 $geneticDiseaseExplain.val('');
		 $geneticDiseaseExplain2.val('');
		 $geneticDiseaseExplain3.val('');	
		 
		
	     $takeMedicineExplain.val('');
		 
	     $intoleranceExplain.val('');
	     
   }
	 
	
});
