<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Web_junggla.profile" %>

<!DOCTYPE html>
<html>
<head>
    <title>Kippt</title>

    <meta charset="utf-8">
    <meta name="google-site-verification" content="aTHx0fECngasT9jjBPd1v4U0rASSCH36eobTv3xqzA8">
    <meta name="author" content="Kippt">
    <link rel="author" href="/humans.txt">

     <link rel="stylesheet" href="/estilo/cssframework.css" type="text/css">
    ​<link href="/estilo/4f589c04686a.css" rel="stylesheet" type="text/css">
    <link rel="apple-touch-icon-precomposed" href="/static/img/apple-touch-icon-precomposed.png" sizes="114x114">
    <link rel="fluid-icon" href="/static/img/apple-touch-icon-precomposed.png" title="Kippt">

 <body class="app" style="position: absolute; top: 0px; left: 0px; right: 0px; ">

<div class="topbar">
    <div class="container"> 
        <h3 class="logo"><a href="/">Kippt</a></h3>
        
        <div id="notifications-modal" class="no-notifications"><a href="#" title="Show notifications" class="notifications-link"></a>
       <div class="notifications">
    <h6>Notifications</h6>
    <ul>
        <li class="empty">No notifications</li>
    </ul>
    <a href="/notifications" class="more">View all notifications</a>
</div>
        </div>

        <ul class="nav secondary-nav nav-discover"> 
            <li class="nav-discover"><a href="/discover/">Discover</a></li>
        </ul> 

        <form action="/search" method="get" id="search-form">
            <input type="text" placeholder="Search your clips..." id="search" name="q"> 
        </form>

        <ul class="nav secondary-nav nav-user">
            <li><a href="/sync/">Sync Apps</a></li>
            <li><a href="/find-friends/">Find Friends</a></li>
            <li><a href="/feedback/">Feedback</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <span><img src="https://secure.gravatar.com/avatar/654a7a38652f430f5ab9fb4e9240b67e/?default=https%3A%2F%2Fkippt.com%2Fstatic%2Fimg%2Fdefault-avatar.jpg&amp;s=32" class="avatar" width="32" height="32" title="robinho"></span>
                <span class="caret"></span></a>
                
                <ul class="dropdown-menu pull-right">
                    <li class="username">robinho</li>
                    
                    <li><a href="/robinho">Public profile</a></li>
                    <li><a href="/tools/">Tools</a></li>
                    <li><a href="/subscription/">Upgrade to Pro</a></li>
                    <li><a href="/import/">Import</a></li> 
                    <li><a href="/accounts/settings/profile/">Settings</a></li>
                    <li><a href="/logout/">Logout</a></li> 
                </ul> 
            </li>
            
        </ul>
    </div><!-- /fill --> 
</div><!-- /topbar -->


<div id="body" class="container">
    <div class="clearfix">
    
<div id="app"><div class="row">
    <div id="sidebar" class="span3">
        <ul id="lists" class="unstyled" style="position: relative; ">
            <li><a href="/feed" class="list-link" data-link="push"><i class="icon icon-feed"></i>Feed</a></li>
            <div id="system-lists"><li class="list ui-droppable" id="list-169113"><div class="list-link  owner  type-inbox"><a href="/robinho/inbox" data-list-slug="inbox" data-list-id="169113" data-link="push"><span></span>Inbox</a></div></li></div>
            <li class="list list-read-later"><a href="/robinho/read-later" class="list-link type-read-later" data-list-slug="read-later" data-link="push"><i class="icon icon-read-later"></i>Read Later</a></li>
            <li class="list list-starred"><a href="/robinho/starred" class="list-link type-starred" data-list-slug="starred" data-link="push"><i class="icon icon-star"></i>Starred</a></li>
            <li class="list list-all"><a href="/robinho/all" class="list-link type-all" data-list-slug="all" data-link="push"><i class="icon icon-all"></i>All Clips</a></li>
            <div id="user-lists" class="ui-sortable" style="">
                
            <li class="list ui-droppable" id="list-169114" style=""><div class="list-link  owner public"><a href="/robinho/design" data-list-slug="design" data-list-id="169114" data-link="push"><span></span>Design</a></div></li><li class="list ui-droppable" id="list-169115" style=""><div class="list-link  owner public"><a href="/robinho/awesome" data-list-slug="awesome" data-list-id="169115" data-link="push"><span></span>Awesome</a></div></li><li class="list ui-droppable" id="list-169116" style=""><div class="list-link  owner public"><a href="/robinho/great-articles" data-list-slug="great-articles" data-list-id="169116" data-link="push"><span></span>Great articles</a></div></li></div>
            <div id="new_list">
                <a href="" class="add-list">+ New list</a>
            
        </div></ul>
    </div>
    
  



<div class="loading" style="display: none; ">
<div style="position: relative; " aria-role="progressbar"><div style="position: absolute; top: -2px; -webkit-transform: translate3d(0, 0, 0); opacity: 0.25; -webkit-animation: opacity-60-25-0-12 1s linear infinite; "><div style="position: absolute; width: 11px; height: 4px; background-color: rgb(153, 153, 153); box-shadow: rgba(0, 0, 0, 0.0980392) 0px 0px 1px; -webkit-transform-origin: 0% 50%; -webkit-transform: rotate(0deg) translate(10px, 0px); border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; background-position: initial initial; background-repeat: initial initial; "></div></div><div style="position: absolute; top: -2px; -webkit-transform: translate3d(0, 0, 0); opacity: 0.25; -webkit-animation: opacity-60-25-1-12 1s linear infinite; "><div style="position: absolute; width: 11px; height: 4px; background-color: rgb(153, 153, 153); box-shadow: rgba(0, 0, 0, 0.0980392) 0px 0px 1px; -webkit-transform-origin: 0% 50%; -webkit-transform: rotate(30deg) translate(10px, 0px); border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; background-position: initial initial; background-repeat: initial initial; "></div></div><div style="position: absolute; top: -2px; -webkit-transform: translate3d(0, 0, 0); opacity: 0.25; -webkit-animation: opacity-60-25-2-12 1s linear infinite; "><div style="position: absolute; width: 11px; height: 4px; background-color: rgb(153, 153, 153); box-shadow: rgba(0, 0, 0, 0.0980392) 0px 0px 1px; -webkit-transform-origin: 0% 50%; -webkit-transform: rotate(60deg) translate(10px, 0px); border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; background-position: initial initial; background-repeat: initial initial; "></div></div><div style="position: absolute; top: -2px; -webkit-transform: translate3d(0, 0, 0); opacity: 0.25; -webkit-animation: opacity-60-25-3-12 1s linear infinite; "><div style="position: absolute; width: 11px; height: 4px; background-color: rgb(153, 153, 153); box-shadow: rgba(0, 0, 0, 0.0980392) 0px 0px 1px; -webkit-transform-origin: 0% 50%; -webkit-transform: rotate(90deg) translate(10px, 0px); border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; background-position: initial initial; background-repeat: initial initial; "></div></div><div style="position: absolute; top: -2px; -webkit-transform: translate3d(0, 0, 0); opacity: 0.25; -webkit-animation: opacity-60-25-4-12 1s linear infinite; "><div style="position: absolute; width: 11px; height: 4px; background-color: rgb(153, 153, 153); box-shadow: rgba(0, 0, 0, 0.0980392) 0px 0px 1px; -webkit-transform-origin: 0% 50%; -webkit-transform: rotate(120deg) translate(10px, 0px); border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; background-position: initial initial; background-repeat: initial initial; "></div></div><div style="position: absolute; top: -2px; -webkit-transform: translate3d(0, 0, 0); opacity: 0.25; -webkit-animation: opacity-60-25-5-12 1s linear infinite; "><div style="position: absolute; width: 11px; height: 4px; background-color: rgb(153, 153, 153); box-shadow: rgba(0, 0, 0, 0.0980392) 0px 0px 1px; -webkit-transform-origin: 0% 50%; -webkit-transform: rotate(150deg) translate(10px, 0px); border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; background-position: initial initial; background-repeat: initial initial; "></div></div><div style="position: absolute; top: -2px; -webkit-transform: translate3d(0, 0, 0); opacity: 0.25; -webkit-animation: opacity-60-25-6-12 1s linear infinite; "><div style="position: absolute; width: 11px; height: 4px; background-color: rgb(153, 153, 153); box-shadow: rgba(0, 0, 0, 0.0980392) 0px 0px 1px; -webkit-transform-origin: 0% 50%; -webkit-transform: rotate(180deg) translate(10px, 0px); border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; background-position: initial initial; background-repeat: initial initial; "></div></div><div style="position: absolute; top: -2px; -webkit-transform: translate3d(0, 0, 0); opacity: 0.25; -webkit-animation: opacity-60-25-7-12 1s linear infinite; "><div style="position: absolute; width: 11px; height: 4px; background-color: rgb(153, 153, 153); box-shadow: rgba(0, 0, 0, 0.0980392) 0px 0px 1px; -webkit-transform-origin: 0% 50%; -webkit-transform: rotate(210deg) translate(10px, 0px); border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; background-position: initial initial; background-repeat: initial initial; "></div></div><div style="position: absolute; top: -2px; -webkit-transform: translate3d(0, 0, 0); opacity: 0.25; -webkit-animation: opacity-60-25-8-12 1s linear infinite; "><div style="position: absolute; width: 11px; height: 4px; background-color: rgb(153, 153, 153); box-shadow: rgba(0, 0, 0, 0.0980392) 0px 0px 1px; -webkit-transform-origin: 0% 50%; -webkit-transform: rotate(240deg) translate(10px, 0px); border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; background-position: initial initial; background-repeat: initial initial; "></div></div><div style="position: absolute; top: -2px; -webkit-transform: translate3d(0, 0, 0); opacity: 0.25; -webkit-animation: opacity-60-25-9-12 1s linear infinite; "><div style="position: absolute; width: 11px; height: 4px; background-color: rgb(153, 153, 153); box-shadow: rgba(0, 0, 0, 0.0980392) 0px 0px 1px; -webkit-transform-origin: 0% 50%; -webkit-transform: rotate(270deg) translate(10px, 0px); border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; background-position: initial initial; background-repeat: initial initial; "></div></div><div style="position: absolute; top: -2px; -webkit-transform: translate3d(0, 0, 0); opacity: 0.25; -webkit-animation: opacity-60-25-10-12 1s linear infinite; "><div style="position: absolute; width: 11px; height: 4px; background-color: rgb(153, 153, 153); box-shadow: rgba(0, 0, 0, 0.0980392) 0px 0px 1px; -webkit-transform-origin: 0% 50%; -webkit-transform: rotate(300deg) translate(10px, 0px); border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; background-position: initial initial; background-repeat: initial initial; "></div></div><div style="position: absolute; top: -2px; -webkit-transform: translate3d(0, 0, 0); opacity: 0.25; -webkit-animation: opacity-60-25-11-12 1s linear infinite; "><div style="position: absolute; width: 11px; height: 4px; background-color: rgb(153, 153, 153); box-shadow: rgba(0, 0, 0, 0.0980392) 0px 0px 1px; -webkit-transform-origin: 0% 50%; -webkit-transform: rotate(330deg) translate(10px, 0px); border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; background-position: initial initial; background-repeat: initial initial; ">
</div></div></div></div></div>
<div id="clips" style="display: none; "><div class="clearfix">
    <div id="list-info"></div>
    <div id="new-clip"></div>
</div>

<div id="clips-container">
    <ul id="clip-list" class="unstyled"></ul>
    <div id="no-clips">
        <p><strong>Find clips to add to this list</strong>
        You can add links with extensions, bookmarklets and via email. <a href="/tools/">View the tools</a>
        </p>
        
        <p class="no-collaborate"><strong>Collaborate with your team.</strong> Invite people to this list and easily share useful links</p>
        
        <p class="no-public"><strong>Make your list public</strong>. Share the interesting things you find and save.</p>
    </div>
    <div id="no-search-results">No search results.</div>
    <div class="pagination"></div>
</div>

    
        <footer>
            <!--<a href="/?flavour=mobile/">Mobile site</a>-->
            <a href="/tools/">Tools</a>
            <a href="/developers/">Developers</a>
            <a href="/about/">About</a>
            <a href="/privacy/">Privacy</a>
            <a href="http://blog.kippt.com/">Blog</a>
            <a href="http://twitter.com/kippt" target="_blank">@kippt</a>
        </footer>
    </div>
    
</div>
<div id="notifications"><div class="row">
    <div class="main span12 columns">
        <div class="padding page">
            <h1>Notifications</h1>
            
            <ul class="notifications"></ul>
        </div>
    </div>
</div></div>
<div id="profile"></div>
<div id="clip-modal"></div>
<div id="list-sharing-modal"></div>
<div id="edit-list-modal"></div>
<div id="notifications-modal"></div>
<div id="iframe"></div>

    </div>

</div>











</body>

</html>
