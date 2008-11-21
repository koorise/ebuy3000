// JavaScript Document
//·ÖÀà
function hit(obj)
{
	var lis=$("cats").childNodes;
	var cls=obj.className;
	for(var i=0;i<lis.length;i++)
	{
		lis[i].className="out";
	}
	obj.className=(cls=="on"?"out":"on");
}

function menuHover(obj,v)
{
	menuHiddenAll();
	menuShow(v?obj.id:defaultMenu);
}
function menuHiddenAll()
{
	$("menu_home").style.backgroundImage="none";
	$("menu_home").style.color="#FFFFFF";
	$("menu_prod").style.backgroundImage="none";
	$("menu_prod").style.color="#FFFFFF";
	$("menu_abou").style.backgroundImage="none";
	$("menu_abou").style.color="#FFFFFF";
	$("menu_cont").style.backgroundImage="none";
	$("menu_cont").style.color="#FFFFFF";
	$("menu_curr").style.backgroundImage="none";
	$("menu_curr").style.color="#FFFFFF";
}
function menuShow(v)
{
	$(v).style.backgroundImage="url(images/menu_hover.gif)";
	$(v).style.color="#000000";	
}
function $(s){return document.getElementById(s);}