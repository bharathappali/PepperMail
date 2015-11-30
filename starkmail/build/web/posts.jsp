<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/pepper_style.css" rel="stylesheet" type="text/css"> 

        
            <div class="col-md-12" id="postdisplaydiv" style="height: 900px;margin-top: 50px;overflow-y: scroll">
                <jsp:include page="allposts.jsp"></jsp:include>
            </div>
        <div class="col-md-12" style="height: 60px">
            
        </div>
        <div class="col-md-12 pepper-bg-gray" style="position: fixed;margin-top: 37%;width: 64.5%;z-index: 999">
            <div class="col-md-1">
                
            </div>
            <div class="col-md-8">
                <div class="col-md-12">
                <div class="form-group" style="margin-top: 20px">
                    <div class="col-md-12">
                        <input type="text" class="form-control" id="postdata" style="resize: none" placeholder="Post something ..." required></textarea>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-1">
                            <input type="checkbox" id="tick">
                        </div>
                        <div class="col-md-11">
                            <label style="font-size: small;color: black">Use ENTER to post</label>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <div class="col-md-3">
                <div class="col-md-12">
                <div class="form-group" style="margin-left: -25px;margin-top: 30px">
                    <div class="col-md-6" >
                        <input class="btn btn-primary" type="submit" id="post-it" value="Post">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6">
                        <img src="camera.png" style="margin-top: -10px" width="55" height="50">
                    </div>
                </div>
            </div>
            </div>
        </div>
            <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script>
            function loadlink(){
                $("#postdisplaydiv").load("allposts.jsp",function () {
                $("#postdisplaydiv").animate({ scrollTop: $(document).height()+2000 }, 50); 
                window.parent.$("#stuffmaindiv").animate({ scrollTop: $(document).height()+2000 }, 50);
            });
}
            var checking = false;
            function ischecked(){
                if(document.getElementById("tick").checked){
                   
                    checking=true;
                    return checking;
                }else{
                    checking = false;
                    return checking;
                }
            }

            $(function(){
                ischecked();
                loadlink();
                setInterval(function(){
                loadlink() 
                }, 5000);
                $("#postdata").focus();
                $("#postdisplaydiv").animate({ scrollTop: $(document).height()+2000 }, 50); 
                window.parent.$("#stuffmaindiv").animate({ scrollTop: $(document).height()+2000 }, 50); 
                $("#postdisplaydiv").load("allposts.jsp");
                
                  
                        
                
                $("#post-it").click(function(){
                    $("#postdisplaydiv").animate({ scrollTop: $(document).height()+2000 }, 50); 
                window.parent.$("#stuffmaindiv").animate({ scrollTop: $(document).height()+2000 }, 50);
                    $("#postdata").text($("#postdata").val());
                    var postmsg = $("#postdata").val();
                    
                    if($.trim(postmsg).length === 0 ){
                        alert("enter something and click post !");
                        $("#postdata").val("");
                    }else{
                        $("#postdata").val("");
                        $.post("savepost.jsp",{post:""+postmsg+""},function(data){
                            $("#postdisplaydiv").empty();
                        $("#postdisplaydiv").load("allposts.jsp");
                        });
                    }
                });
                $("#tick").click(function(e){
                    ischecked();
                    $("#postdata").focus();
                });
                $("#postdata").keypress(function(e){
                    if(e.which===13){
                        if(ischecked()){
                           
                       
                   $("#postdisplaydiv").animate({ scrollTop: $(document).height()+2000 }, 50); 
                window.parent.$("#stuffmaindiv").animate({ scrollTop: $(document).height()+2000 }, 50);
                    $("#postdata").text($("#postdata").val());
                    var postmsg = $("#postdata").val();
                    if($.trim(postmsg).length === 0 ){
                        alert("enter something and click post !");
                        $("#postdata").val("");
                    }else{
                        $("#postdata").val("");
                        $.post("savepost.jsp",{post:""+postmsg+""},function(data){
                            $("#postdisplaydiv").empty();
                        $("#postdisplaydiv").load("allposts.jsp");
                        
                        });
                    }
                   
              
                        }
                    }else{
                        
                    }
                });
                
            });
            </script>