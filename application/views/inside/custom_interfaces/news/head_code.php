		<link rel="stylesheet" href="/files/inside/css/jquery-ui-smoothness/jquery-ui-1.10.1.custom.css">
		<script src="/files/inside/js/jquery-ui-1.10.1.custom.min.js"></script>
		<script src="/files/inside/js/jquery.dialog.extra.js"></script>
		<script>
		// Swith off async AJAX
			$.ajaxSetup({async:false});
			var pdg_timer = new Array(); // Timers Array
			var dialog_id = 1;
			var pdg_dialog_width = 300; 
			var pdg_dialog_height = 100;

		$(document).ready( function() {

			ajax_send_request();	
			
			// Send Button Click
			$("#pdg_send").on('click', ajax_send_request);

			// Fast Search
			$("#pdg_fsearch").on("keydown", function(){				
				if (pdg_timer[this.id] !== undefined) clearTimeout(pdg_timer[this.id]);
				pdg_timer[this.id]=setTimeout("ajax_send_request()",700);
				});		

			// Select Limit
			$("#pdg_limit").on("keydown", function(){				
				if (pdg_timer[this.id] !== undefined) clearTimeout(pdg_timer[this.id]);
				pdg_timer[this.id]=setTimeout("ajax_send_request()",700);
				});	

			// Page Prev
			$("#pdg_page_prev").on("click", function(){				
				if ($('#pdg_page').val() > 1)
					{
					var tmp_page = parseInt ($('#pdg_page').val()) - 1;
					$('#pdg_page').val(tmp_page); 
					$('#pdg_page_text').html(tmp_page); 
					ajax_send_request();
					}
				});	
				
			// Page Next
			$("#pdg_page_next").on("click", function(){				
				if (1)
					{
					var tmp_page = parseInt ($('#pdg_page').val()) + 1;
					$('#pdg_page').val(tmp_page); 
					$('#pdg_page_text').html(tmp_page);
					ajax_send_request();
					}
				});	

			$("body").on('click', '.add_comment', function() {
				var comment = $(this).parent().children("textarea").val();	
				var newid = $(this).attr('new_id');			
				var array = { comment: comment, new_id: newid};
				var holder = $(this).parent().parent().children('.comments_holder');
				$.post('/inside/custom_model/news/main_model/news_comments_add/', array, function(data) {
						holder.prepend(data);
						// alert (data);
					});
			});

		});

			function news_comments_dialog(tmp_line_id)
			{
			
			
				if ($('.dialog_edit[edit_id='+tmp_line_id+']').attr('edit_id') > 0) {	
					alert ('Dialog already Opened!');
				}
				
				
				else {	
					$("<div class='dialog_edit' edit_id='"+tmp_line_id+"' dialog_id='"+dialog_id+"'></div>").dialog({
								autoOpen: true,
								title: 'Comments of New № '+tmp_line_id,
								width: 500,
								height: 400,
								canMinimize:true,
								canMaximize:true,
								position: [pdg_dialog_width,pdg_dialog_height],
								close: function(event, ui){$(this).remove();}
								});	
							
					// AJAX load information
					var array = { new_id: tmp_line_id, dialog_id: dialog_id };
					$.post('/inside/custom_model/news/main_model/news_comments/', array, function(data) {
						// Add new AJAX Data
						// alert (data);
						$('.dialog_edit[dialog_id='+dialog_id+']').html(data);
					});
					// Dialog Shift
					pdg_dialog_width = pdg_dialog_width + 10; pdg_dialog_height = pdg_dialog_height + 10;dialog_id++;
				}
			
			}	
			function ajax_send_request()
			{
				$('#inside_terminal').animate(
				{
				opacity: 0.1,
				},200, function() {
					var options = {
					target: "#inside_terminal",
					url: "/inside/custom_model/news/",
					success: function() {}
				};
				$("#control_form").ajaxSubmit(options);
				$('#inside_terminal').animate({opacity: 1},500);		
			});
			}

		</script>