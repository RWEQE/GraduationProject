function login(){
	if(form1.username.value==''){
		alert('用户名不能为空！');
		return false;
	}
	if(form1.password.value==''){
		alert('密码不能为空！');
		return false;
	}
	if(document.getElementById('radio_1').checked==true){
		form1.action="users.jsp";
		form1.submit();
	}
	else if((document.getElementById('radio_2').checked)==true){
		form1.action="admin.jsp";
		form1.submit();
	}
	
}
window.onload = function(){
	var i3 = document.getElementsByClassName('input_3');
	for(var i=0;i<i3.length;i++){
		i3[i].onmouseover = function(){
			this.style.backgroundColor = "#23271F";
			this.style.color = "#fff";
		}
		i3[i].onmouseout = function(){
			this.style.backgroundColor = "#fff";
			this.style.color = "#23271F";
		}
	}
	var pass = document.getElementById("password");
	pass.onfocus = function(){
		pass.type = "password";	
	}
}