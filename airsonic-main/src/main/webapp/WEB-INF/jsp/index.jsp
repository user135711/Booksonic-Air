<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="iso-8859-1"%>

<html><head>
    <%@ include file="head.jsp" %>
    <link rel="alternate" type="application/rss+xml" title="Airsonic Podcast" href="podcast.view?suffix=.rss">
</head>

<frameset rows="80,*,0" border="0" framespacing="0" frameborder="0">
    <frame name="upper" src="top.view?" class="upper">
    <frameset id="mainFrameset" cols=${model.showSideBar ? "230,*" : "0,*"} border="0" framespacing="0" frameborder="0">
        <frame name="left" src="left.view?" marginwidth="0" marginheight="0" class="bgcolor2">

        <frameset id="playQueueFrameset" rows=${model.autoHidePlayQueue ? "*,50" : "*,150"} border="0" framespacing="0" frameborder="0">
            <frame name="main" src="nowPlaying.view?" marginwidth="0" marginheight="0" class="bgcolor1">
            <frame name="playQueue" src="playQueue.view?" class="bgcolor2">
        </frameset>
    </frameset>
    <frame name="hidden" frameborder="0" noresize="noresize">

</frameset>

</html>
