function mOver () {
	var myDiv = document.getElementById("vista_title");

	myDiv.style.display = "block";
}

function mOut () {
	var myDiv = document.getElementById("vista_title");

	myDiv.style.display = "none";
}


function wOver () {
	var myDiv = document.getElementById("weichat");

	myDiv.style.display = "block";
}

function wOut () {
	var myDiv = document.getElementById("weichat");

	myDiv.style.display = "none";
}

function show_1() {
	var myDiv = document.getElementById("news_list1");
	var myDiv2 = document.getElementById("news_list2");
	var myDiv3 = document.getElementById("news_list3");

	myDiv.style.display = "block";
	myDiv2.style.display = "none";
	myDiv3.style.display = "none";
}

function show_2() {
	var myDiv = document.getElementById("news_list1");
	var myDiv2 = document.getElementById("news_list2");
	var myDiv3 = document.getElementById("news_list3");

	myDiv.style.display = "none";
	myDiv2.style.display = "block";
	myDiv3.style.display = "none";
}

function show_3() {
	var myDiv = document.getElementById("news_list1");
	var myDiv2 = document.getElementById("news_list2");
	var myDiv3 = document.getElementById("news_list3");

	myDiv.style.display = "none";
	myDiv2.style.display = "none";
	myDiv3.style.display = "block";
}

function show_video_1() {
	var myDiv = document.getElementById("text1");
	var myDiv2 = document.getElementById("text2");

	myDiv.style.display = "block";
	myDiv2.style.display = "none";
}

function show_video_2() {
	var myDiv = document.getElementById("text1");
	var myDiv2 = document.getElementById("text2");

	myDiv.style.display = "none";
	myDiv2.style.display = "block";
}