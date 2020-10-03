function buttonClose(level){
	document.getElementById(level+"_rect").style.display="block";
	document.getElementById("btn_close_"+level).style.display="none";
	document.getElementById("testset_"+level).style.display="none";
}

function addData() {
	alert("Please make sure you are logged in at GitHub and you have access right to the repository!");
	var tab = window.open("https://github.com/Klabischnig/swquality/tree/master/data/testquality", 
	'_blank');
	tab.focus(); 
}

