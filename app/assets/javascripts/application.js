// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
var cartip=document.createElement("div") //Dynamically create tooltip element
cartip.setAttribute("id", "cartooltip")
document.body.appendChild(cartip)
var cartooltipobj=document.getElementById("cartooltip")
var projectbodyobj=document.getElementById("projectbody")

function ietruebody(){
return (document.compatMode && document.compatMode!="BackCompat")? document.documentElement : document.body

}

document.getElementById("projectbody").onmouseover=function(){ //show tooltip
var titletext=document.getElementById("cartitle")? document.getElementById("cartitle").innerHTML : "DD Forums Archive"
cartooltipobj.innerHTML=titletext
cartooltipobj.style.left=projectbodyobj.offsetLeft+projectbodyobj.offsetWidth-180+"px"
cartooltipobj.style.top=projectbodyobj.offsetTop+projectbodyobj.offsetHeight-40+"px"
cartooltipobj.style.visibility="invisible"
}

document.getElementById("projectbody").onmouseout=function(){ //hide tooltip
document.getElementById("cartooltip").style.visibility="hidden"
}
 //image

 
