<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Web_junggla.dashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en"><head>
		<title>Dashboard - Imperio Admin</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">


		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css">
		<link rel="stylesheet" type="text/css" href="css/imperio.css">
        
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
	<script type="text/javascript" src="chrome-extension://bfbmjmiodbnnpllbbbfblcplfjjepjdn/js/injected.js"></script><script>	                                                                                                                     window["_GOOG_TRANS_EXT_VER"] = "1";</script></head>
    <body style="position: absolute; top: 0px; left: 0px; right: 0px; ">
        <div class="container-fluid nopadding">
            <div class="row-fluid">
                <div class="span12">
                    <div id="header">
                        <a href="#">
							<img src="img/logo.png" alt="">
						</a>
						<div class="hright">
							<div id="search" class="column">
								<div class="search">
									<form method="post" action="#">
										<input type="text" placeholder="Search here" value="Search here" name="keyword" id="keyword"> 
									</form>
								</div>
							</div>
							<div id="userinfo" class="column">
								<a class="userinfo dropown-toggle" data-toggle="dropdown" href="#userinfo">
									<img alt="" src="img/avatar.jpg">
									<span><strong>Admin</strong></span>
								</a>
                                    <ul class="dropdown-menu">
										<li><a href="#">Edit Profile</a></li>
										<li><a href="#">Edit Preferences</a></li>
										<li><a href="#">Private Messages</a></li>
										<li class="divider"></li>
										<li><a href="login.html">Logout</a></li>
									</ul>
							</div>
						</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid" id="container">
            <div class="row-fluid">
                <div class="span3 leftmenu">
                    <ul class="nav">
                        <li class="active"><a href="index.html" rel="" title=""><span class="ico"><i class="icon-home"></i></span><span class="text">Dashboard</span></a></li>
                        <li><a href="forms.html" rel="" title=""><span class="ico"><i class="icon-edit"></i></span><span class="text">Forms</span></a></li>
                        <li><a href="typography.html" rel="" title=""><span class="ico"><i class="icon-bold"></i></span><span class="text">Typography</span></a></li>
                        <li><a href="tables.html" rel="" title=""><span class="ico"><i class="icon-th-list"></i></span><span class="text">Tables</span></a></li>
                        <li><a href="charts.html" rel="" title=""><span class="ico"><i class="icon-signal"></i></span><span class="text">Charts</span></a></li>
                        <li><a href="components.html" rel="" title=""><span class="ico"><i class="icon-inbox"></i></span><span class="text">Components</span></a></li>
                        <li><a href="interface-elements.html" rel="" title=""><span class="ico"><i class="icon-tasks"></i></span><span class="text">Interface elements</span></a></li>                        
                        <li><a href="grid.html" rel="" title=""><span class="ico"><i class="icon-th"></i></span><span class="text">Grid</span></a></li>
                        <li><a href="calendar.html" rel="" title=""><span class="ico"><i class="icon-calendar"></i></span><span class="text">Calendar</span></a></li>
                        <li>
                            <a href="#" rel="" title=""><span class="ico"><i class="icon-align-justify"></i></span><span class="text">Submenu test</span><span class="indicator"></span></a>
                            <ul>
                                <li><a href=""><span class="ico"><i class="icon-tint"></i></span><span class="text">Submenu One</span></a></li>
                                <li><a href=""><span class="ico"><i class="icon-leaf"></i></span><span class="text">Submenu Two</span></a></li>
                                <li><a href=""><span class="ico"><i class="icon-fire"></i></span><span class="text">Submenu Three</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="span9" id="content">
                    <div class="row-fluid quick-actions">
                        <div class="span2">
                            <a href="#" class="quick-action">
                                <span class="icon users"></span>
                                Users
                            </a>
                        </div>
                        <div class="span2">
                            <a href="#" class="quick-action">
                                <span class="icon file"></span>
                                Blog Entries
                            </a>
                        </div>
                        <div class="span2">
                            <a href="#" class="quick-action">
                                <span class="icon conversation"></span>
                                Comments
                            </a>
                        </div>
                        <div class="span2">
                            <a href="#" class="quick-action">
                                <span class="icon picture"></span>
                                Images
                            </a>
                        </div>
                        <div class="span2">
                            <a href="#" class="quick-action">
                                <span class="icon pie_chart"></span>
                                Stats
                            </a>
                        </div>
                        <div class="span2">
                            <a href="#" class="quick-action">
                                <span class="icon shield"></span>
                                Security
                            </a>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span7">
                            <div class="box">
                                <div class="box-title">
                                    Example chart
                                </div>
                                <div class="box-content">
                                    <div id="chart" style="height: 220px; padding: 0px; position: relative; "><canvas class="base" width="523" height="220"></canvas><canvas class="overlay" width="523" height="220" style="position: absolute; left: 0px; top: 0px; "></canvas><div class="tickLabels" style="font-size:smaller"><div class="xAxis x1Axis" style="color:#545454"><div class="tickLabel" style="position:absolute;text-align:center;left:0px;top:202px;width:47px">0</div><div class="tickLabel" style="position:absolute;text-align:center;left:49px;top:202px;width:47px">1</div><div class="tickLabel" style="position:absolute;text-align:center;left:99px;top:202px;width:47px">2</div><div class="tickLabel" style="position:absolute;text-align:center;left:148px;top:202px;width:47px">3</div><div class="tickLabel" style="position:absolute;text-align:center;left:198px;top:202px;width:47px">4</div><div class="tickLabel" style="position:absolute;text-align:center;left:248px;top:202px;width:47px">5</div><div class="tickLabel" style="position:absolute;text-align:center;left:297px;top:202px;width:47px">6</div><div class="tickLabel" style="position:absolute;text-align:center;left:347px;top:202px;width:47px">7</div><div class="tickLabel" style="position:absolute;text-align:center;left:396px;top:202px;width:47px">8</div><div class="tickLabel" style="position:absolute;text-align:center;left:446px;top:202px;width:47px">9</div><div class="tickLabel" style="position:absolute;text-align:center;left:496px;top:202px;width:47px">10</div></div><div class="yAxis y1Axis" style="color:#545454"><div class="tickLabel" style="position:absolute;text-align:right;top:182px;right:511px;width:12px">0</div><div class="tickLabel" style="position:absolute;text-align:right;top:120px;right:511px;width:12px">5</div><div class="tickLabel" style="position:absolute;text-align:right;top:57px;right:511px;width:12px">10</div><div class="tickLabel" style="position:absolute;text-align:right;top:-5px;right:511px;width:12px">15</div></div></div><div class="legend"><div style="position: absolute; width: 53px; height: 40px; top: 9px; left: 28px; background-color: rgb(255, 255, 255); opacity: 0.85; "> </div><table style="position:absolute;top:9px;left:28px;;font-size:smaller;color:#545454"><tbody><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid #000000;overflow:hidden"></div></div></td><td class="legendLabel">Data 1</td></tr><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid #0B689F;overflow:hidden"></div></div></td><td class="legendLabel">Data 2</td></tr></tbody></table></div></div>
                                </div>
                            </div>
                        </div>
                        <div class="span5">
                            <div class="box alternate">
                                <div class="box-title">
                                    <span class="ico"><i class="icon-repeat"></i></span>Recent Activity
                                </div>
                                <div class="box-content nopadding">
                                    <ul class="activity-list">
                                        <li><a href="#">
                                            <i class="icon-user"></i>
                                            <strong>Admin</strong> added <strong>1 user</strong> <span>2 hours ago</span>
                                        </a></li>
                                        <li><a href="#">
                                            <i class="icon-file"></i>
                                            <strong>Caroline Trin</strong> write a <strong>blog post</strong> <span>Yesterday</span>
                                        </a></li>
                                        <li><a href="#">
                                            <i class="icon-envelope"></i>
                                            <strong>John Doe</strong> sent a <strong>message</strong> <span>2 days ago</span>
                                        </a></li>
                                        <li><a href="#">
                                            <i class="icon-picture"></i>
                                            <strong>Matt Armon</strong> updated <strong>profile photo</strong> <span>2 days ago</span>
                                        </a></li>
                                        <li><a href="#">
                                            <i class="icon-user"></i>
                                            <strong>Admin</strong> bans <strong>3 users</strong> <span>week ago</span>
                                        </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span6">
                            <div class="box">
                                <div class="box-title">
                                    Table
                                </div>
                                <div class="box-content nopadding">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                <th>Username</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Caroline</td>
                                                <td>Trin</td>
                                                <td>@Carolint</td>
                                            </tr>
                                            <tr>
                                                <td>John</td>
                                                <td>Doe</td>
                                                <td>@jdoe</td>
                                            </tr>
                                            <tr>
                                                <td>Matt</td>
                                                <td>Armon</td>
                                                <td>@marmon</td>
                                            </tr>
                                            <tr>
                                                <td>Jane</td>
                                                <td>Kowalsky</td>
                                                <td>@jane-kow</td>
                                            </tr>
                                            <tr>
                                                <td>Tim</td>
                                                <td>Pacey</td>
                                                <td>@t-pac</td>
                                            </tr>
                                            <tr>
                                                <td>Steve</td>
                                                <td>Rovinsky</td>
                                                <td>@steve-sky</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="span6">
                            <div class="box">
                                <div class="box-title">
                                    Content
                                </div>
                                <div class="box-content">
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                    </p>
                                    <p>
                                        Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                    </p>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                    </p>
                                </div>
                            </div>                        
                        </div>                    
                    </div>
                </div>
            
            </div>       
        </div>  
    
    
        <script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- Explorer canvas, for IE6-8 support of canvas elements -->
        <!--[if lt IE 9]>
            <script src="js/excanvas.min.js"></script>
        <![endif]-->
        <script type="text/javascript" src="js/jquery.flot.min.js"></script>
        <script type="text/javascript" src="js/jquery.flot.resize.min.js"></script>
		<script type="text/javascript" src="js/imperio.general.js"></script>
        <script type="text/javascript" src="js/imperio.dashboard.js"></script>
    
<iframe id="ppomnibar" allowtransparency="true" frameborder="0" hspace="0" marginheight="0" marginwidth="0" scrolling="no" src="http://google.com/" vspace="0" style="opacity: 1; "></iframe><div id="hidebutton" style="display: none; ">Hide</div></body></html>