var buttonIndex = 0;
$(document).ready(function() {
	$.post(remoteUrl + "/favorite/menus", function(data) {
		callback(data);
	});
     $("#password").keydown(function(event) {  
         if (event.keyCode == 13) {
        	 submit();
         }  
     });
     $(".login").click(function() {
        alert("此功能暂未实现，敬请期待");
     });
     $(".regist").click(function() {
         alert("此功能暂未实现，敬请期待");
      });
});
function callback(data) {
	var row_begin_tag = '<div class="row rowcenter">';
	var row_end_tag = '</div>';
	var col_begin_tag = '<div class="col-md-3"><ul class="line">';
	var col_end_tag = '</ul></div>';
	var appendRow = '';
	var parentList = data.parentList;
	var subListMap = data.subListMap;
	var ulNum = 0;
	$.each(parentList, function(index, parentNode) {
		if (ulNum % 4 == 0) {
			appendRow = appendRow + row_begin_tag
		}
		var h4 = '<h4>' + parentNode.remark + '</h4>';
		appendRow = appendRow + col_begin_tag + h4;
		var subList = subListMap[parentNode.id];
		$.each(subList, function(subIndex, subNode) {
			var li = '<li class=""><a href="' + subNode.url + '"  target="_blank">'
					+ subNode.remark + '</a></li>';
			appendRow = appendRow + li;
		});
		appendRow = appendRow + col_end_tag;
		if (ulNum % 4 == 3) {
			appendRow = appendRow + row_end_tag;
		}
		ulNum++;
	});
	if (ulNum % 4 != 0) {
		appendRow = appendRow + row_end_tag;
	}
	// alert(appendRow);
	$(".features").html(appendRow);
}
function setButtonIndex(index) {
	buttonIndex = index;
}
function submit() {
	if ($("#password").val() != 'admin') {
		alert("密码错误！");
		return;
	}
	$("#password").val("");
	$("#closeButton").click();
	if (buttonIndex == 1) {
		$.post(remoteUrl + "/favorite/init", function(data) {
			window.location.href = "/";
		});
	}
	if (buttonIndex == 2) {
		window.open(remoteUrl + "/favorite/menusDownload", '_blank');
	}
	if (buttonIndex == 3) {
		window.location.href = "upload";
	}
}