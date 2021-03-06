<%-- 
    Document   : main
    Created on : Nov 24, 2015, 12:28:10 PM
    Author     : appalibharath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	
	<title>Pepper Mail</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/pepper_style.css" rel="stylesheet" type="text/css">	
</head>
<% 
    
    if(session.getAttribute("username")!=null){
    
%>
<body class="pepper-bg-gray">
    <div  class="row" style="height: 100px;background: white;position: fixed;z-index: 999;top: 0;left: 0;width: 101%">
        <div class="col-md-8">
            <div class="col-md-6">
        <img src="pepper.jpg" alt="pepper" height="100" width="200"><label style="font-size: xx-large">Mail</label>
            </div>
            
         <div class="col-md-6 search ">
    <i class="fa fa-search searchglass1"></i><i class="fa fa-google searchglass2"></i>
    <input id="searchtop" type="search"
           class="form-control" 
           placeholder="Google Search ..." />
</div>
        </div>
        <div class="col-md-4">
            <div class="col-md-12">
                <div class="col-md-8">
                    <br><label style="margin-top: 9%;margin-left: 30%;float: right"><%=session.getAttribute("username")%></label>
                </div>
                <div class="col-md-4">
                    <div>
                        
                        <img src="<%=session.getAttribute("imgname")%>" class="pepper-logimg1" id="logimg">
                        <div class="text-content" id="span"><label id="changepic-label" style="margin-top: 40%;cursor: pointer"><img id="changepic" src="setting.png" width="20px" height="20px" >Settings</label><br><label><img id="burger" style="cursor: pointer" src="settings.png" width="30" height="30"></label></div>
                        <img id="notfctn" src="arrow.png" style="margin-left: 92%;margin-top: 20%;cursor: pointer" width="50" height="50">
                        <div class="arrow_box" id="accountInfo">
                            <ul class="root">
                            <li ><a href="#" >Dashboard</a></li>
                            <li ><a href="#" >Profile</a></li>
                            <li ><a href="#">Settings</a></li>
                            <li ><a href="logout.jsp">Logout</a></li>
                            </ul>
                            
                        </div>
                    </div>
                    
            </div>
                </div>
        </div>
    </div>
    <div style="margin-top: 100px">
        <div class="col-md-1" style="height: 600px;padding-top: 2%;position: fixed;z-index: 999">
            <div class="col-md-12 menu" id="stuffdiv" >
                <img src="stuff.png" width="50" height="50">
                <label>Stuff</label>
            </div>
            <div class="col-md-12 menu" id="inboxdiv" >
                <img src="inbox.png" width="50" height="50">
                <label>Inbox</label>
            </div>
            <div class="col-md-12 menu" id="sentdiv">
                <img src="stuff.png" width="50" height="50">
                <label>Sent Mail</label>
            </div>
            <div class="col-md-12 menu" id="draftdiv" >
                <img src="inbox.png" width="50" height="50">
                <label>Draft</label>
            </div>
            
            <div class="col-md-12 menu" id="spamdiv" >
                <img src="inbox.png" width="50" height="50">
                <label>Spam</label>
            </div>
        </div>
        
        <div class="col-md-1">
            
        </div>
        <div class="col-md-8" id="stuffmaindiv" style="height: 600px;overflow-y: scroll">
            
            <jsp:include page="posts.jsp"></jsp:include>
        </div>
        <div class="col-md-8" id="inboxmaindiv" style="height: 600px;overflow-y: scroll;display: none">
            
            <jsp:include page="profile.jsp"></jsp:include>
        </div>
        <div class="col-md-8" id="sentmaindiv" style="height: 600px;background: red;overflow-y: scroll;display: none">
            
        <jsp:include page="index1.html"></jsp:include>
        </div>
        <div class="col-md-3" id="notfctnbackdiv" style="height: 600px;border-width: 0px 0px 0px 3px;border-color: lightseagreen;border-style: solid">
            <div class="col-md-12">
                <h1 class="margin-bottom-15">People :)</h1><hr>
            </div><br>
            <div class="col-md-12" style="height: 67%;overflow-y: auto">
            <jsp:include page="pepperpeople.jsp"></jsp:include>
            </div>
            <div class="col-md-12 search1" style="margin-top: 20px">
    <i class="fa fa-search"></i>
    <input type="search"
           class="form-control" 
           placeholder="Search" />
</div>
        </div>
            <div class="col-md-3" id="messagesdiv" style="height: 600px;display: none;border-width: 0px 0px 0px 3px;border-color: lightseagreen;border-style: solid">
                <div class="col-md-12" >
                    <div class="col-md-2">
                        <img src="back.png" width="50" height="50" id="backtopeople" style="margin-top: 20px;cursor: pointer;margin-left: -10px">
                    </div>
                    <div class="col-md-10" style="text-align: center">
                <h3 class="margin-bottom-15" id="messengername">Messages :)</h3><hr>
                    </div>
            </div><br>
            <div class="col-md-12" id="message-div" style="height: 67%;overflow-y: auto">
            
            </div>
            <div class="col-md-12 search1" style="margin-top: 20px">
    <i class="fa fa-apple"></i>
    <input type="text" id="messagedata"
           class="form-control" 
           placeholder="Type Message ..." />
</div>
        </div>
        <div class="col-md-3" id="notfctndiv" style="height: 600px;display: none;border-width: 0px 0px 0px 3px;border-color: skyblue;border-style: solid">
            <div class="col-md-12">
                <h1 class="margin-bottom-15">Notifications :)</h1><hr>
            </div><br>
            <div class="col-md-12" style="height: 67%;overflow-y: auto">
                <%
                    for(int i=0;i<5;i++){
                %>
            <div class="col-md-12 margin-bottom-15">
                <div class="col-md-3">
                    <img src="ironman1.jpg" class="pepper-logimg" id="logimg">
                </div>
                <div class="col-md-9">
                    <label style="margin-top: 25px"><strong style="font-size: large;color: darkslateblue">Stark</strong>&nbsp; sent a mail</label>
                </div>
            </div>
            <div class="col-md-12 margin-bottom-15">
                <div class="col-md-3">
                    <img src="ironman2.jpg" class="pepper-logimg" id="logimg">
                </div>
                <div class="col-md-9">
                    <label style="margin-top: 25px"><strong style="font-size: large;color: darkslateblue">Purna</strong>&nbsp; sent a mail</label>
                </div>
            </div>
            <div class="col-md-12 margin-bottom-15">
                <div class="col-md-3">
                    <img src="ironman3.jpg" class="pepper-logimg" id="logimg">
                </div>
                <div class="col-md-9">
                    <label style="margin-top: 25px"><strong style="font-size: large;color: darkslateblue">Vinay</strong>&nbsp; sent a mail</label>
                </div>
            </div>
            <div class="col-md-12 margin-bottom-15">
                <div class="col-md-3">
                    <img src="ironman4.jpg" class="pepper-logimg" id="logimg">
                </div>
                <div class="col-md-9">
                    <label style="margin-top: 25px"><strong style="font-size: large;color: darkslateblue">Ramesh</strong>&nbsp; sent a mail</label>
                </div>
            </div>
                <%
                    }
                %>
            </div>
            <div class="col-md-12 search1" style="margin-top: 20px">
    <i class="fa fa-search"></i>
    <input type="search"
           class="form-control" 
           placeholder="Search" />
</div>
        </div>
        
    </div>
            
            
            
        <!-- modal-->    
       <div class="modal fade" id="pepper_modal_main" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
	  <div class="col-md-12">
              <div class="col-md-2"></div>
              <div class="col-md-8" style="margin-top: 50px">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="myModalLabel1"><img src="setting.png" width="40px" height="40px">Settings</h4>
	      </div>
                <div class="modal-body" style="height: 460px">
                  <div class="col-xs-12">
                  <h2>User Settings</h2><br>
                  
                      <div class="col-xs-4" style="background: blue;height: 360px">
                          <div class="col-xs-12" id="display-settings-profilepic" style="cursor: pointer;margin-top: 50px;height: 50px;background: green"></div>
                          <div class="col-xs-12" id="display-settings-general"  style="cursor: pointer;margin-top: 20px;height: 50px;background: green"></div>
                          <div class="col-xs-12" id="display-settings-password" style="cursor: pointer;margin-top: 20px;height: 50px;background: green"></div>
                          <div class="col-xs-12" id="display-settings-other" style="cursor: pointer;margin-top: 20px;height: 50px;background: green"></div>
                      </div>
                  <div class="col-xs-8" id="settings-profilepic" style="background: lightblue;height: 360px">
                      <div class="col-xs-12">
                      <form action="changeprofpic.jsp" method="post" enctype="multipart/form-data">
                          <div class="col-xs-12">
                              <h2>Your image is displayed here !</h2>
                              <div class="col-xs-8" id="upload-img-viewer" style="padding-left: 20%;display: none">
                                  
                          <img  id="blah" src="#" alt="your image" width="150" height="150"/>
                              </div>
                              <div class="col-xs-4" style="padding-top: 10%;text-align: center">
                                  <input id="upload-btn" disabled="true" type="submit" class="btn btn-warning" value="Upload">
                              </div>
                          </div>
                          <div class="col-xs-12" style="height: 10px">
                          </div>
                          <div class="col-xs-12" style="height: 3px;background: skyblue">
                          </div>
                          <div class="col-xs-12" style="height: 10px">
                          </div>
                          <div class="col-xs-12">
                      <input type='file' onchange="displayfile(this);" accept="image/*"/>
                          </div>    
                      </form>
                      </div>
                      </div>
                  <div class="col-xs-8" id="settings-general" style="background: black;height: 360px;display: none">
                          
                      </div>
                  <div class="col-xs-8" id="settings-password" style="background: pink;height: 360px;display: none">
                          
                      </div>
                  <div class="col-xs-8" id="settings-other" style="background: yellow;height: 360px;display: none">
                          
                      </div>
                  </div>
                  
              </div>
                <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Save</button>
	      </div>
	      
	    </div>
              </div>
              <div class="col-md-2"></div>
          </div>
	  </div>
	</div>     
            <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
    
        <script>
            function displayfile(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $("#upload-btn").prop("disabled",false);
                $("#upload-img-viewer").show();
                $('#blah')
                    .attr('src', e.target.result)
                    .width(150)
                    .height(150);
            };

            reader.readAsDataURL(input.files[0]);
        }
    
    }
            $(function(){
                
                $("#stuffmaindiv").animate({ scrollTop: $(document).height() }, 500); 
                $("#stuffdiv").addClass("menu-select");
                $("#maindiv").load("posts.jsp");
                var count="click";
                $("#logimg").hover(function ()
                {
                    $("#span").show();
                    $("#logimg").addClass("pepper-logimg2");
                },function ()
                {
                    
                $("#span").hide();
                    $("#logimg").removeClass("pepper-logimg2");
                    
                });
                $("#span").hover(function ()
                {
                    $("#span").show();
                    $("#logimg").addClass("pepper-logimg2");
                },function ()
                {
                    
                $("#span").hide();
                    $("#logimg").removeClass("pepper-logimg2");
                    
                });
                $("#burger").hover(function(){
                    $("#span").show();
                    $("#logimg").addClass("pepper-logimg2");
                },function ()
                {
                    
                $("#span").hide();
                    $("#logimg").removeClass("pepper-logimg2");
                    
                });
                $("#backtopeople").click(function(){
                    $("#notfctnbackdiv").show();
                        $("#messagesdiv").hide();
                        $("#notfctndiv").hide();
                });
                $("#notfctn").click(function(){
                    if(count==="click"){
                        $("#notfctn").addClass("pep-img");
                        count="clicked";
                        $("#notfctnbackdiv").slideToggle();
                        $("#messagesdiv").hide();
                        $("#notfctndiv").slideToggle();
                        
                    }else{
                        $("#notfctn").removeClass("pep-img");
                        count="click";
                        $("#notfctnbackdiv").slideToggle();
                        $("#messagesdiv").hide();
                        $("#notfctndiv").slideToggle();
                        
                    }
                });
                $("#burger").click(function(){
                    $("#accountInfo").slideToggle(10);
                    
                });
                $("#stuffdiv").click(function(){
                    $("#stuffmaindiv").show();
                    $("#inboxmaindiv").hide();
                    $("#sentmaindiv").hide();
                    $("#stuffdiv").addClass("menu-select");
                    $("#inboxdiv").removeClass("menu-select");
                    $("#sentdiv").removeClass("menu-select");
                    $("#draftdiv").removeClass("menu-select");
                    $("#spamdiv").removeClass("menu-select");
                });
                $("#inboxdiv").click(function(){
                    $("#stuffmaindiv").hide();
                    $("#inboxmaindiv").show();
                    $("#sentmaindiv").hide();
                    $("#stuffdiv").removeClass("menu-select");
                    $("#inboxdiv").addClass("menu-select");
                    $("#sentdiv").removeClass("menu-select");
                    $("#draftdiv").removeClass("menu-select");
                    $("#spamdiv").removeClass("menu-select");
                });
                $("#sentdiv").click(function(){
                    
                    $("#stuffdiv").removeClass("menu-select");
                    $("#inboxdiv").removeClass("menu-select");
                    $("#sentdiv").addClass("menu-select");
                    $("#draftdiv").removeClass("menu-select");
                    $("#spamdiv").removeClass("menu-select");
                });
                $("#draftdiv").click(function(){
                    $("#stuffdiv").removeClass("menu-select");
                    $("#inboxdiv").removeClass("menu-select");
                    $("#sentdiv").removeClass("menu-select");
                    $("#draftdiv").addClass("menu-select");
                    $("#spamdiv").removeClass("menu-select");
                });
                $("#spamdiv").click(function(){
                    $("#stuffdiv").removeClass("menu-select");
                    $("#inboxdiv").removeClass("menu-select");
                    $("#sentdiv").removeClass("menu-select");
                    $("#draftdiv").removeClass("menu-select");
                    $("#spamdiv").addClass("menu-select");
                });
               $("#changepic").click(function(){
                   
                   $("#pepper_modal_main").modal('show');
               });
               $("#changepic-label").click(function(){
                   
                   $("#pepper_modal_main").modal('show');
               });
               $("#display-settings-profilepic").click(function(){
                   $("#settings-profilepic").show();
                   $("#settings-general").hide();
                   $("#settings-password").hide();
                   $("#settings-other").hide();
               });
               $("#display-settings-general").click(function(){
                   $("#settings-profilepic").hide();
                   $("#settings-general").show();
                   $("#settings-password").hide();
                   $("#settings-other").hide();
               });
               $("#display-settings-password").click(function(){
                   $("#settings-profilepic").hide();
                   $("#settings-general").hide();
                   $("#settings-password").show();
                   $("#settings-other").hide();
               });
               $("#display-settings-other").click(function(){
                   $("#settings-profilepic").hide();
                   $("#settings-general").hide();
                   $("#settings-password").hide();
                   $("#settings-other").show();
               });
               $("#messagedata").keypress(function(e){
                   if(e.which===13){
                       
                       var message = document.getElementById("messagedata").value;
                       var toname = document.getElementById("messengername").innerHTML;
                       document.getElementById("messagedata").value="";
                       $.post("savemessage.jsp",{msg : "" + message + "",to : "" + toname + ""},function(data){
                            
                            
                       });
                       $.post("personmessages.jsp",{chatter : "" +toname+ ""},function(data){
                           alert("posted");
                               $("#message-div").load("personmessages.jsp");
                       });
                   }
               });
            });
            $("#searchtop").keypress(function(e){
                if(e.which===13){
                    var term = $("#searchtop").val();
                    var searchterm = term.replace(" ","+");
                    $("#searchtop").val("");
                    window.open("https://www.google.co.in/search?q="+searchterm,"_blank");
                }
            });
        </script>
        <%
        }else{
        %>
        <jsp:forward page="signinerror.html"></jsp:forward>
        <%
}
        %>
</html>
