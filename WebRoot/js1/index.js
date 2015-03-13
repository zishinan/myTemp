$.validator.setDefaults({
	submitHandler: function() { alert("submitted!"); }
});

$().ready(function() {
	// validate the comment form when it is submitted
	$("#commentForm").validate();
	
	// validate signup form on keyup and submit
	$("#signupForm").validate({
		rules: {
			username: {
				required: true,
				minlength: 6
			},
			password: {
				required: true,
				minlength: 6
			},
			confirm_password: {
				required: true,
				minlength: 6,
				equalTo: "#password"
			},
			email: {
				required: true,
				email: true
			},
			topic: {
				required: "#newsletter:checked",
				minlength: 2
			},
			agree: "required"
		},
		messages: {
			username: {
				required: "�û�������Ϊ�գ�",
				minlength: "�û���λ��̫�̣�"
			},
			password: {
				required: "���벻��Ϊ�գ�",
				minlength: "���볤�Ȳ���С��6λ��"
			},
			confirm_password: {
				required: "�ظ����벻��Ϊ�գ�",
				minlength: "���볤�Ȳ���С��6λ��",
				equalTo: "�������벻һ�£�"
			},
			email: "Emeil�������",
			agree: "��֤��Ϊ�գ�"
		}
	});
	
	$("#username").focus(function() {
		if(firstname && lastname && !this.value) {
			this.value = firstname + "." + lastname;
		}
	});
	
	var newsletter = $("#newsletter");
	var inital = newsletter.is(":checked");
	var topics = $("#newsletter_topics")[inital ? "removeClass" : "addClass"]("gray");
	var topicInputs = topics.find("input").attr("disabled", !inital);
	newsletter.click(function() {
		topics[this.checked ? "removeClass" : "addClass"]("gray");
		topicInputs.attr("disabled", !this.checked);
	});
});