$(function(){
	var upload_profile = $('#member_image')[0];
	upload_profile.onchange = function(e) {
		e.preventDefault();
	
		var file_profile = upload_profile.files[0], reader_profile = new FileReader();
		reader_profile.onload = function(event) {
			var img_profile = new Image();
			img_profile.src = event.target.result;
			// note: no onload required since we've got the dataurl...I think! :)
			$('#image_profile').css('opacity','1');
			$('#image_profile').attr('src', event.target.result);
		};
		reader_profile.readAsDataURL(file_profile);
		
		$('#file_profile').val("change");
	
		return false;
	};
	$('#check_onclick').click(function() {
		if ($('#real_member_image').val() == "" || $('#real_member_category').val() == "" || $('#real_member_category').val() == "선택하세요" || $('#real_member_name').val() == "" 
			|| $('#real_member_cell').val() == "" || $('#real_member_age').val() == "" || $('#autocomplete').val() == ""
			|| $('#member_about').val() == "" ){
			if ($('#real_member_image').val() == "") {
				swal("프로필 사진이 비어있습니다. 확인해주세요.")
				return false;
			} else if ($('#real_member_category').val() == "" || $('#real_member_category').val() == "선택하세요") {
				swal("카테고리가 비어있습니다. 확인해주세요.")
				return false;
			} else if ($('#real_member_name').val() == "") {
				swal("이름이 비어있습니다. 확인해주세요.")
				return false;
			} else if ($('#real_member_cell').val() == "") {
				swal("연락처가 비어있습니다. 확인해주세요.")
				return false;
			} else if ($('#real_member_age').val() == "") {
				swal("나이가 비어있습니다. 확인해주세요.")
				return false;
			} else if ($('#autocomplete').val() == "") {
				swal("활동지역이 비어있습니다. 확인해주세요.")
				return false;
			} else if ($('#member_about').val() == "") {
				swal("자기 소개가 비어있습니다. 확인해주세요.")
				return false;
			} 
		} else {
			$('#multiform').submit();
		}
	});
});
	