﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="display.aspx.cs" Inherits="trial.WebForm1" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title>Be The Change Hospete</title>
	<link rel="icon" type="image/png" href="logo.png" />
	<script src="index.js"></script>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
	<link href="https://fonts.googleapis.com/css?family=Indie+Flower|Lobster|Merienda|Merriweather|Nova+Script" rel="stylesheet"/> 
	<link rel="stylesheet" type="text/css" href="index.css"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBIagkEIkCFF1GjIVT9eif2fx2c-0_P5sQ &callback=initMap"></script>
</head>
<body>

    	<div style="margin: 60px;position: -webkit-sticky;position: sticky;top: 0;z-index: 1;">				<!-- TOP NAV BAR -->
		<div id="topnav" style="opacity: 0.9;">
		  	<a href="index.html#">Home</a>
			<a href="application.html" >Get Involved</a>
			<a href="index.html#contact">Contact</a>
			<a class="active" href="donate.html" >Donate</a>
			<a href="index.html#mainbod" >About Us</a>
		  </div>
	</div>

	<div style="width: 100%; height: 100%; margin: 15%;margin-top: 50px;"> <br/></div>


    <div class="flex-box" style="font-family: 'Merienda', cursive;justify-content: space-around;color: black;background:linear-gradient(150deg,rgba(0, 230, 64, 1),rgb(30,144,255),rgb(72,61,139));">
    <style>
        .Table {
            margin:15px;
            padding:30px;
            border:solid 5px black;
            font-size:20px;
        }
        .Row {
            color:red;
        }
        .Data {
            margin:10px;
        }
        .Name {
            font-style:italic;
        }
        .BookName {
            
        }
        .Description {
        }
    </style>
      
                <asp:Label ID="Get1" runat="server" Text="Label"></asp:Label>

	</div>

    <div class="botnav" style="align-content: space-around;width: 100%; display: flex;width: 100%;">	<!-- BOTNAV BAR -->	
		<div id="map" style="margin: 5%;margin-top: 30px;height: 300px;width: 375px;"> 
		</div>
		<div id="botnavbar" style="width: auto;height: auto;">
		  	<a href="index.html#">Home</a>
			<a href="application.html" >Get Involved</a>
			<a href="index.html#contact">Contact</a>
			<a class="active" href="donate.html" >Donate</a>
			<a href="index.html#mainbod" >About Us</a>
			<!-- <a href="#" class="cd-top text--replace js-cd-top" >BACK TO TOP ^</a> -->
		</div>
		<div class="cd-top text--replace js-cd-top" style="width: auto;height: auto;position:fixed;right: 5px;bottom: 15px;text-shadow: black;">
			<a href="#" class="cd-top text--replace js-cd-top" style="font-size: 20px;text-shadow: black;">TOP ^</a>
		</div>
	</div>
	<div id="contact" class="botnav" style="align-content: space-around;width: 100%;">
		<div style="font-family: 'Merriweather', serif; font-size: 20px;width: auto;height: auto;">
			<h2>Reach Us</h2>
		    <h4><strong>Be The Change Hospete</strong></h4>
		    132, AECS Layout, ITPL Main Road<br/>
	        Kundalahalli, Bangalore 560037, India<br/>
	        <strong>Rahul - <a href="tel:+917899216913">+917899216913</a></strong><br/>
	        <strong>Sid - <a href="tel:+9185217 90637">+918521790637</a></strong><br/>
	        <strong><a href="mailto:viral1997@gmail.com" target="_blank">viral1997@gmail.com</a></strong>
		   
		</div>

		<div style="width: 200px;height: auto;display: flex;">
		        <a href="https://www.instagram.com/socialhackathoncmrit/" target="_blank"><img src="ig.png" class="footerimg"/></a>
		        <a href="https://www.facebook.com/SocialHackathonCMRIT" target="_blank"><img src="foot2.png" class="footerimg"/></a>
		</div> 
	</div>

	<section class="credits">
            <div>This website was designed by <a class="l1" href="https://github.com/virus4297" target="_blank">V P</a> and <a class="l2" href="https://github.com/Pawan2804" target="_blank">P V</a></div>
    </section>
<!--     </div> -->

</body>
</html>
