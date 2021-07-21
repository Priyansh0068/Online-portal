<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
*{
margin:0px;
padding:0px;
}
#outer{
height:auto;
width:100%;
background:gray;
border:0px solid white;
}
.header{
height:100px;
width:100%;
background-color:powderblue;
color:black;
}
.Lheader{
height:100%;
width:85%;
float:left;
background:white;
color:black;
}
.lheaderLogo{
height:100px;
width:80px;
float:left;
}
div>.infoseek{
text-align:center;
font-family:bold;
font-size:40px;
color:black;
background-color:powderblue;
padding:27px;
}
.Rheader{
height:100%;
width:15%;
background:-webkit-linear-gradient(white);
color:black;
font-family:aquo;
}
.menu{
padding-top:7px;
height:28px;
width:100%;
font-family:aquo;
background:-webkit-linear-gradient(gray,white);
}
a,ul,li{
display:inline;
padding-left:50px;
margin:25px;
text-decoration:none;
}

#box {
width:150px;
		padding-left:10px;
		padding-right:10px;
        height:auto;
        display:none;
        background:-webkit-linear-gradient(white,green,white);
        position:absolute;
        color:white;
        border-radius:10px 0px 0px 10px;
        right:225px;
        }
        #box:hover{
        color:black;
       background:-webkit-linear-gradient(white,gray,white);
        }
       #sbox {
		padding-left:10px;
		padding-right:10px;
        height:auto;
        display:none;
        background:-webkit-linear-gradient(white,black,white);
        position:absolute;
        border-radius:10px 0px 0px 10px;
        margin-left:350px;
        color:white;
        }
        #sbox:hover{
        background:-webkit-linear-gradient(white,gray,white);
        color:black;
        }
    
.box1{
height:100%;
width:100%;
background:rgba(0,228,153,0.4);

}
.btn{
padding:10px;
width:200px;
font-family:aquo;
background:white;
font-size:22px;
margin:50px;
}
.contener{height:280px;
max-width:98%;
background:gray;
}
.contslider{
height:260px;
width:100%;
margin:1%;
background:white;
border-radius:0px 25px 0px 25px;

}

.lbtn{
margin-top:-47px;
padding:10px;
position:absolute;
border:none;background:-webkit-linear-gradient(white,black);
color:white;
font-size:20px;
border-radius:0px 50px 0px 30px ;
}
.rbtn{
margin-top:-47px;
padding:10px;
background:-webkit-linear-gradient(white,black);
color:white;
font-size:20px;
position:absolute;
margin-left:1293px;
border:hidden;
border-radius:50px 0px 30px 0px;
}
.lbtn:hover{
background:-webkit-linear-gradient(white,green);
  color:white;
}
.rbtn:hover{
background:-webkit-linear-gradient(white,green);
  color:white;

}
</style>

<body>

<form>
	<div id="outer">
	<div class="header">
	<div class="Lheader">
	<div class="infoseek" ><b><marquee>WELCOME USERS</marquee></b></div>
	</div>
	</div>
		<div class="menu">
			<ul>
			
			<li><a href="#" onclick="Student()" ><b>Student</b></a></li>
			<li><b> Enquiry</b></li>
			<li><a href="Request.jsp">Request a call</a></li>
			<li><a href="#" onclick="Enquiry()" ><b>Faculty</b></a></li>
			</ul>
		</div>
		
		<div id="sbox">
			<center><h2><a href="Register.jsp"><b>New Registration</b></a></h2>
			<h2><a href="login.jsp"><b>Login</b></a></h2></center>
			  </div>
			<div id="box">
			<center>
			<h2><a href="teacherlogin.jsp"><b>login</b></a></h2>
			<h2><a href="teacher.jsp"><b>register</b></a></h2>
			</center>
		 </div>
		 
		<div class="contener">
		<div class="contslider">
		<img src="school_images/images (2).jpg" id="image" height="260px"; width="100%";/>
		<button type="button" class="lbtn" onclick="lslider()">&#10094</button>
		<button type="button" class="rbtn" onclick="rslider()">&#10095</button>
		</div>
		
	<div class="footer"></div>
	</div>
	</div>
</form>
<script>
function Student(){
	var s=document.getElementById("sbox");
	var stl=s.style.display;
	if(stl=="none")
		{
		s.style.display="block";
		}
	else{
		s.style.display="none";
	}
	
}

        function Enquiry()
        {
            var dv = document.getElementById("box");
            var a = dv.style.display;
            if (a == "none") {
                dv.style.display = "block";
            }
            else {
                dv.style.display = "none";
            }
        }
        var x=0;
        function lslider(){
        	var imgs=new Array()
        	imgs[0]="school_images/images (1).jpg"
        	imgs[1]="school_images/images (2).jpg"
        	imgs[2]="school_images/images (3).jpg";
        	imgs[3]="school_images/images (4).jpg";
        	imgs[4]="school_images/images (5).jpg";
         var last1=imgs.length-1;
         if(x==last1){
        	 document.getElementById("image").src=imgs[x];
        	 x=0;
         }
         else{
        	 document.getElementById("image").src=imgs[x];
        	 x++;
         }
        }
        
        function rslider(){
        	var imgs=new Array()
        	    imgs[0]="school_images/images (1).jpg"
            	imgs[1]="school_images/images (2).jpg"
            	imgs[2]="school_images/images (3).jpg";
            	imgs[3]="school_images/images (4).jpg";
            	imgs[4]="school_images/images (5).jpg";     
        	var last2=imgs.length-1;
        	if(x==last2){
        		document.getElementById("image").src=imgs[x];
        		x=0;
        	}
        	else{
        		document.getElementById("image").src=imgs[x];
        		x++;
        	}
        }
    </script>

</body>
</html>