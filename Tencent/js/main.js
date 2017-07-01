function mOver () {										//街道信息的触碰
	var myDiv = document.getElementById("vista_title");

	myDiv.style.display = "block";
}

function mOut () {
	var myDiv = document.getElementById("vista_title");

	myDiv.style.display = "none";
}


function wOver () {													//微信图片的触碰显示
	var myDiv = document.getElementById("weichat");

	myDiv.style.display = "block";
}

function wOut () {
	var myDiv = document.getElementById("weichat");

	myDiv.style.display = "none";
}

function show_1() {													//新闻的三个切换过程
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

function show_video_1() {												//顶端的图片和视频切换
	var myDiv = document.getElementById("image");
	var myDiv2 = document.getElementById("video");

	myDiv.style.display = "block";
	myDiv2.style.display = "none";
}

function show_video_2() {
	var myDiv = document.getElementById("image");
	var myDiv2 = document.getElementById("video");

	myDiv.style.display = "none";
	myDiv2.style.display = "block";
}

window.onscroll=function() {								//判断是否为网页的顶部
	console.info(window.scrollY);							//将距离顶部的高度显示在控制台上面
	var myDiv=document.getElementById("menu");
	if(window.scrollY != 0){
		myDiv.style.top = "-20px";
		myDiv.style.height = "75px";
        myDiv.style.background = "#005ab5";
        myDiv.style.filter = "alpha(opacity:30)";				//设置透明度为0.9
        myDiv.style.opacity = "0.9";
    }  
    else{
    	myDiv.style.background = "none";							//去除背景颜色
    	myDiv.style.top = "0px";
    	myDiv.style.height = "100px";
    	myDiv.style.filter = "alpha(opacity:30)";
        myDiv.style.opacity = "1";
    }
}