--- 
category: blog
filename: 2012-02-09-what-the-green-maximize-button-does-in-osx-does.md
layout: post
status: publish
meta: 
  _wpas_skip_fb: "1"
  geo_accuracy: "0"
  publicize_results: a:1:{s:7:"twitter";a:1:{i:6637352;a:2:{s:7:"user_id";s:8:"brunosan";s:7:"post_id";s:18:"167685160664436736";}}}
  geo_public: "1"
  _wpas_done_twitter: "1"
  geo_address: 425 P St NW, Washington, DC 20001, USA
  geo_longitude: "-77.018000"
  reddit: a:2:{s:5:"count";s:1:"0";s:4:"time";s:10:"1334581845";}
  _wpas_mess: What the green "Maximize" button does in OSX does. Mistery solved.
  geo_latitude: "38.910000"
  jabber_published: "1328814228"
  _edit_last: "4180497"
published: true
type: post
tags: 
- Mac
title: What the green "Maximize" button does in OSX does
---
The green "Maximize" button in Mac OSX is actually not what you thought it was.

<a href="http://nasonurb.files.wordpress.com/2012/02/screen-shot-2012-02-09-at-10-35-33-am.png"><img class="aligncenter size-full wp-image-2206" title="Screen Shot 2012-02-09 at 10.35.33 AM" src="http://nasonurb.files.wordpress.com/2012/02/screen-shot-2012-02-09-at-10-35-33-am.png" alt="" width="151" height="66" /></a>In Microsoft Windows it makes the window fill the screen... (and I don´t really know what it does when the window is already maximized). In Mac it switches the size of the window from "application default" to "user set". Its name is "Zoom", and you can also find it on the Window Menu.<!--more-->

It means that every app comes with a window size by default. If you resize it, it will come back to the default size if you click it. And if you click again it comes back to whatever size you set before.

Makes sense? Handy if you make it a hot key and you need to swap windows a lot and only part of one window is needed at times.

<strong>The extra mile</strong>. The button only remembers the size, so it won´t move the window unless it needs to adjust the windows size. However, moving the window leaves the application default mode, so if you just move the window from the application default with resize, the green button will make nothing. And it will forget your previous -truly user defined- size. (...)

Btw, <a href="https://developer.apple.com/library/mac/#documentation/Cocoa/Reference/ApplicationKit/Classes/NSWindow_Class/Reference/Reference.html">officially</a> Apple defines it as:
<blockquote><strong>Zoom:</strong>

This action method toggles the size and location of the window between its standard state (provided by the application as the “best” size to display the window’s data) and its user state (a new size and location the user may have set by moving or resizing the window).</blockquote>
&nbsp;
