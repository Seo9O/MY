$(document).ready(function() {
    var track_Num = 7; //total loaded record group(s)
    var track_Count = 7;
    var loading  = false; //to prevents multipal ajax loads
    var track_Size = $("#psListSize").val();
    
    $(window).scroll(function() { //detect page scroll
    	if(track_Size > track_Num){
    		 if($(window).scrollTop() + $(window).height() == $(document).height())  //user scrolled to bottom of the page?
    	        {	
    	        	console.log("스크롤이 맨 밑까지 내려왔어요");
    	        	$(".ps_loading_image").show();
    	        	setTimeout(function(){
	    	        	$.ajax({
	    	        		type: "GET",
	    	        		url: "psListPart?track_Num="+track_Num+"&track_Count="+track_Count,
	    	        		success: function(jdata){
		    	        		$(jdata).each(function(index,objArr){
		    	        		var str = "<div class='ps_card'><div class='ps_card_title'>";
		    	        			str += "<p class='ps_card_location card_click'><a href='#'><b>"+objArr.ps_location+"</b></a></p>";
		    	        			str += "</div><div class='ps_card_body card_click'>";
		    	        			str += "<img class='card_best_image' src='resources/ps_images/postscirpt/"+objArr.ps_image+"'>";
		    	        			str += "<div class='ps_card_profile'><img src='resources/ps_images/profile/"+objArr.mb_image+"'>";
		    	        			str += "</div><div class='ps_card_content'><div class='ps_card_day'>"+objArr.ps_date +"</div>";
		    	        			str += "<div class='ps_card_title ellipsText'>"+objArr.ps_title+"</div>";
		    	        			str += "<div class='ps_card_context ellipsText'>"+objArr.ps_context+"</div>";
		    	        			str += "<div class='ps_card_etc'><span class='ps_card_likes'><img class='ps_icon' src='resources/ps_icon/like.png'>"+objArr.ps_like +"</span>";
		    	        			str += "<span class='ps_card_comments'><img class='ps_icon' src='resources/ps_icon/comment.png'>"+objArr.ps_hits +"</span></div></div></div></div>";
		    	        			
		    	        			$(".ps_show_list").append(str);
		    	        		});
		    	        		$(".ps_loading_image").hide();
		    	        		track_Num += track_Count;
		    	        		
		    	        		if(track_Num >= track_Size) track_Num= track_Size;
		    	        		}
	    	        	});
    	        	},1500);
    	            
    	        }
    	}
        
        });
    
    $(".card_detail_click").click(function(){
    	var ps_no = $(this).attr('id');
    	location.href="psListDetail?ps_no="+ps_no;
    });
});

function listPart(){
	
}