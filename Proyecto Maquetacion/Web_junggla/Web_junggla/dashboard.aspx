<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Web_junggla.dashboard" %>

<!DOCTYPE html>

<html lang="en"><head>
		<title>Junggla.</title>
		<meta charset="UTF-8">
		<%--<meta name="viewport" content="width=device-width, initial-scale=1.0">--%>


		<link rel="stylesheet" type="text/css" href="/estilo/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="/estilo/bootstrap-responsive.css">
		<link rel="stylesheet" type="text/css" href="/estilo/imperio.css">
        <link href="/estilo/4f589c04686a.css" rel="stylesheet" type="text/css">
        
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]--> 
        
        </head>

    <body>
     <header> 
     <nav class="navbar">
    
<div class="topbar">

    <div class="container"> 
    <a href="http://junggla.com/" class="brand"><img src="Imagenes/junggla_negro_blaco.jpg" alt="junggla" style="padding-left:110px; padding-top:5px; " width="90px" height="40px"> 
    </a>
    <ul class="nav nav-discover2"> 
            <li class="nav-discover2"><a href="#"></a></li>
        </ul>
        <div  class="actions">
      
        <ul class="nav secondary-nav nav-discover2">
                <li title="Dashboard"><a href="#" rel="" title=""  ><span class="ico"><i class="icon-home"></i></span><%--<span class="text">Dashboard</span>--%></a></li>
        </ul>
               
        <div class="nav nav-discover2">
            <ul class="nav secondary-nav nav-discover2">  
                 <li title="Profile"><a href="#" rel="" title=""><span class="ico"><i class="icon-edit"></i></span></a></li>
            </ul>  
        </div>  
        <div class="nav nav-discover2">
            <ul class="nav secondary-nav nav-discover2">  
                <li title="Mensajes"><a href="#" rel="" title=""><span class="ico"><i class="icon-envelope"></i></span></a></li>
            </ul>  
       </div> 
        <div class="nav nav-discover2">              
            <ul class="nav secondary-nav nav-discover2">                 
                <li title="Encontrar"><a href="#" rel="" title=""><span class="ico"><i class="icon-bold"></i></span><%--<span class="text">Encontrar</span>--%></a></li>
             </ul>  
         </div>    
       <div class="nav nav-discover2">         
         <ul class="nav secondary-nav nav-discover2">       
               <li title="Opotunidades"><a href="tables.html" rel="" title=""><span class="ico"><i class="icon-th-list"></i></span><%--<span class="text">Opotunidades</span>--%></a></li>
         </ul>
        </div>
        <div class="nav nav-discover2">  
          <ul class="nav secondary-nav nav-discover2">  
                        <li class="active" style="padding-top:10px"><a href="components.html" rel="" title=""><span class="ico"><i class="icon-inbox"></i></span><%--<span class="text">Procesos</span>--%></a></li>
           </ul>
        </div>
        <div class="nav nav-discover2">
          <ul class="nav secondary-nav nav-discover2">          
                        <li><a href="charts.html" rel="" title=""><span class="ico"><i class="icon-signal"></i></span><%--<span class="text">Estadisticas</span>--%></a></li>
          </ul>
        </div>
        <div class="nav nav-discover2">
          <ul class="nav secondary-nav nav-discover2">  
                        <li><a href="interface-elements.html" rel="" title=""><span class="ico"><i class="icon-tasks"></i></span><%--<span class="text">Practicas</span>--%></a></li>              
          </ul>            
        </div>               
                  
        </div>

        <ul class="nav secondary-nav nav-user">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <span><img src="Imagenes/default-avatar.jpg" class="avatar" width="32" height="32" title="robinho"></span>
                <span class="caret"></span></a>
                <ul class="dropdown-menu pull-right">
                    <li class="username">Robinson Hernandez</li>
                    <li><a href="/accounts/settings/profile/">Settings</a></li>
                    <li><a href="/logout/">Logout</a></li> 
                </ul> 
            </li>
            
        </ul>
    </div><!-- /fill --> 
</div><!-- /topbar -->
</nav>
</header>

        <div class="clearfix">

        <div class="container">
        <div class="container-fluid" id="container">
            <div class="row-fluid">

                 <div class="row-fluid">
                     <div class="span6">
                    <div class="box">
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
                                <li>
                           
                                </li>
                                 
                            </ul>
                           
                                       
                        </div>
                          <div class="center" style="padding-bottom:8px;">
                            <div class="pagination">
						        <ul>
							        <li class="active"><a href="#">Prev</a></li>
							        <li><a href="#">Next</a></li>
						        </ul>
					        </div>
                            </div>
                    </div> 
                    </div>
           
                     <div class="span6">
                            <div id="collapse-group" class="accordion">
                                <div class="box accordion-group">
                                    <div class="box-title" data-toggle="collapse" data-target="#collapseGOne" data-parent="#collapse-group">
                                        <span class="ico"><i class="icon-tag"></i></span>Accordion, opened
                                    </div>
                                    <div id="collapseGOne" class="box-content collapse in">
                                        This item is opened by default
                                    </div>
                                </div>
                                <div class="box accordion-group">
                                    <div class="box-title" data-toggle="collapse" data-target="#collapseGTwo" data-parent="#collapse-group">
                                        <span class="ico"><i class="icon-asterisk"></i></span>Accordion, closed
                                    </div>
                                    <div id="collapseGTwo" class="box-content collapse">
                                        Now, this is open
                                    </div>
                                </div>
                                <div class="box accordion-group">
                                    <div class="box-title" data-toggle="collapse" data-target="#collapseGThree" data-parent="#collapse-group">
                                        <span class="ico"><i class="icon-magnet"></i></span>Accordion, closed
                                    </div>
                                    <div id="collapseGThree" class="box-content collapse">
                                        Another is open
                                    </div>
                                </div> 
                            </div>
                            <div class="box">
                                <div class="box-title">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#tab1" data-toggle="tab">Home</a></li>
                                        <li><a href="#tab2" data-toggle="tab">Profile</a></li>
                                        <li><a href="#tab3" data-toggle="tab">Messages</a></li>
                                    </ul>
                                </div>
                                <div class="box-content tab-content">
                                    <div class="tab-pane active" id="tab1">Tab One Content</div>
                                    <div class="tab-pane" id="tab2">This is a Tab Two Content</div>
                                    <div class="tab-pane" id="tab3">This is a Tab Three Content</div>
                                </div>                            
                            </div>                      
                        </div>       
                 </div>
                 <div class="row-fluid">
                     
                     <div class="box">
                                <div class="box-title">
                                    <span class="ico"><i class="icon-time"></i></span>Entrevista<span class="label label-info">+3</span>
                                </div>
                                <div class="box-content nopadding">
                                    <table class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Description</th>
                                                <th>Address</th>
                                                <th>Date</th>
                                                <th>Hour</th>
                                                <th>Status</th>
                                                <th>Confirmación</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                            <td class="taskDesc"><i class="icon-plus-sign"></i>Update a site</td>
                                                <td class="taskDesc"><i class="icon-info-sign"></i><a href="">Calle isla de salvora 11, Madrid,28100</a></td>
                                                <td class="taskStatus"><span class="timestamp">20/09/2011</span></td>
                                                <td class="taskStatus"><span class="timestamp">18:00 a.m</span></td>
                                                <td class="taskStatus"><span class="in-progress">in progress</span></td>
                                                <td class="taskOptions"><a class="tooltip-top" href="#" data-original-title="Update"><i class="icon-ok"></i></a> <a class="tooltip-top" href="" data-original-title="Delete"><i class="icon-remove"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td class="taskDesc"><i class="icon-plus-sign"></i> Update a site</td>
                                                <td class="taskDesc"><i class="icon-info-sign"></i><a href="">Calle isla de salvora 11, Madrid,28100</a></td>
                                                <td class="taskStatus"><span class="timestamp">20/09/2011</span></td>
                                                <td class="taskStatus"><span class="timestamp">18:00 a.m</span></td>
                                                <td class="taskStatus"><span class="pending">pending</span></td>
                                                <td class="taskOptions"><a class="tooltip-top" href="#" data-original-title="Update"><i class="icon-ok"></i></a> <a class="tooltip-top" href="" data-original-title="Delete"><i class="icon-remove"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td class="taskDesc"><i class="icon-ok-sign"></i> Meet the customers</td>
                                                 <td class="taskDesc"><i class="icon-info-sign"></i><a href="">Calle isla de salvora 11, Madrid,28100</a></td>
                                                 <td class="taskStatus"><span class="timestamp">20/09/2011</span></td>
                                                 <td class="taskStatus"><span class="timestamp">18:00 a.m</span></td>
                                                <td class="taskStatus"><span class="done">done</span></td>
                                                <td class="taskOptions"><a class="tooltip-top" href="#" data-original-title="Update"><i class="icon-ok"></i></a> <a class="tooltip-top" href="" data-original-title="Delete"><i class="icon-remove"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                      <div class="span4">
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

                    <div class="row-fluid">
                        <div class="span12">
                            <div class="box">
                                <div class="box-title">
                                   Entrevistas
                                </div>
                                <div class="box-content nopadding">
                                    <table class="table table-striped table-bordered">
                                    <thead>
                                    		<tr>
                                    			<th>Empresa</th>
                                    			<th>Fecha</th>
                                    			<th>Hora</th>
                                    			<th>Engine version</th>
                                    			<th>CSS grade</th>
                                                <th>&nbsp;</th>
                                    		</tr>
                                    	</thead>
                                    	<tbody>
                                    		<tr class="odd gradeX">
                                    			<td>Trident</td>
                                    			<td>Internet
                                    				 Explorer 4.0</td>
                                    			<td>Win 95+</td>
                                    			<td class="center"> 4</td>
                                    			<td class="center">X</td>
                                                <td>
                                                    <a href="#" class="btn btn-primary btn-mini">Edit</a>
                                                    <a href="#" class="btn btn-danger btn-mini delete">Delete</a>
                                                </td>
                                    		</tr>
                                    		<tr class="even gradeC">
                                    			<td>Trident</td>
                                    			<td>Internet
                                    				 Explorer 5.0</td>
                                    			<td>Win 95+</td>
                                    			<td class="center">5</td>
                                    			<td class="center">C</td>
                                                <td>
                                                    <a href="#" class="btn btn-primary btn-mini">Edit</a>
                                                    <a href="#" class="btn btn-danger btn-mini delete">Delete</a>
                                                </td>
                                    		</tr>
                                    		<tr class="odd gradeA">
                                               
                                    			<td>Trident</td>
                                    			<td>Internet
                                    				 Explorer 5.5</td>
                                    			<td>Win 95+</td>
                                    			<td class="center">5.5</td>
                                    			<td class="center">A</td>
                                                <td>
                                                    <a href="#" class="btn btn-primary btn-mini">Edit</a>
                                                    <a href="#" class="btn btn-danger btn-mini delete">Delete</a>
                                                </td>
                                    		</tr>
                                    		<tr class="even gradeA">
                                               
                                    			<td>Trident</td>
                                    			<td>Internet
                                    				 Explorer 6</td>
                                    			<td>Win 98+</td>
                                    			<td class="center">6</td>
                                    			<td class="center">A</td>
                                                <td>
                                                    <a href="#" class="btn btn-primary btn-mini">Edit</a>
                                                    <a href="#" class="btn btn-danger btn-mini delete">Delete</a>
                                                </td>
                                    		</tr>
                                    		<tr class="odd gradeA">
                                                
                                    			<td>Trident</td>
                                    			<td>Internet Explorer 7</td>
                                    			<td>Win XP SP2+</td>
                                    			<td class="center">7</td>
                                    			<td class="center">A</td>
                                                <td>
                                                    <a href="#" class="btn btn-primary btn-mini">Edit</a>
                                                    <a href="#" class="btn btn-danger btn-mini delete">Delete</a>
                                                </td>
                                    		</tr>
                                    		<tr class="even gradeA">
                                                
                                    			<td>Trident</td>
                                    			<td>AOL browser (AOL desktop)</td>
                                    			<td>Win XP</td>
                                    			<td class="center">6</td>
                                    			<td class="center">A</td>
                                                <td>
                                                    <a href="#" class="btn btn-primary btn-mini">Edit</a>
                                                    <a href="#" class="btn btn-danger btn-mini delete">Delete</a>
                                                </td>
                                    		</tr>
                                    		<tr class="gradeA">
                                                
                                    			<td>Gecko</td>
                                    			<td>Firefox 1.0</td>
                                    			<td>Win 98+ / OSX.2+</td>
                                    			<td class="center">1.7</td>
                                    			<td class="center">A</td>
                                                <td>
                                                    <a href="#" class="btn btn-primary btn-mini">Edit</a>
                                                    <a href="#" class="btn btn-danger btn-mini delete">Delete</a>
                                                </td>
                                    		</tr>
                                    		<tr class="gradeA">
                                                
                                    			<td>Gecko</td>
                                    			<td>Firefox 1.5</td>
                                    			<td>Win 98+ / OSX.2+</td>
                                    			<td class="center">1.8</td>
                                    			<td class="center">A</td>
                                                <td>
                                                    <a href="#" class="btn btn-primary btn-mini">Edit</a>
                                                    <a href="#" class="btn btn-danger btn-mini delete">Delete</a>
                                                </td>
                                    		</tr>
                                    		<tr class="gradeA">
                                               
                                    			<td>Gecko</td>
                                    			<td>Firefox 2.0</td>
                                    			<td>Win 98+ / OSX.2+</td>
                                    			<td class="center">1.8</td>
                                    			<td class="center">A</td>
                                                <td>
                                                    <a href="#" class="btn btn-primary btn-mini">Edit</a>
                                                    <a href="#" class="btn btn-danger btn-mini delete">Delete</a>
                                                </td>
                                    		</tr>
                                    		<tr class="gradeA">
                                                
                                    			<td>Gecko</td>
                                    			<td>Firefox 3.0</td>
                                    			<td>Win 2k+ / OSX.3+</td>
                                    			<td class="center"> <a href="">Calle isla de salvora 11, Madrid,28100</a></td>
                                    			<td class="center">A</td>
                                                <td>
                                                    <a href="#" class="btn btn-primary btn-mini">Confirmar</a>
                                                    <a href="#" class="btn btn-danger btn-mini delete">Cancel</a>
                                                </td>
                                    		</tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>                        
                        </div>                 
                    </div>
            </div>       
        </div>  
        </div>

     </div>
        <script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/imperio.dashboard.js"></script>
        <script type="text/javascript" src="js/imperio.general.js"></script>

</body>
</html>