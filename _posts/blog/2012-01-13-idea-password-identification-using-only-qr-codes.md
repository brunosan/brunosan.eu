--- 
filename: _posts/blog/2012-01-13-idea-password-identification-using-only-qr-codes.md
category: blog
layout: post
status: publish
meta: 
  _wpas_skip_fb: "1"
  geo_accuracy: "0"
  publicize_results: a:1:{s:7:"twitter";a:1:{i:6637352;a:2:{s:7:"user_id";s:8:"brunosan";s:7:"post_id";s:18:"157984048260710402";}}}
  tagazine-media: a:7:{s:7:"primary";s:84:"https://nasonurb.files.wordpress.com/2012/01/screen-shot-2012-01-13-at-7-19-22-pm.png";s:6:"images";a:2:{s:84:"https://nasonurb.files.wordpress.com/2012/01/screen-shot-2012-01-13-at-7-18-18-pm.png";a:6:{s:8:"file_url";s:84:"https://nasonurb.files.wordpress.com/2012/01/screen-shot-2012-01-13-at-7-18-18-pm.png";s:5:"width";s:3:"706";s:6:"height";s:3:"327";s:4:"type";s:5:"image";s:4:"area";s:6:"230862";s:9:"file_path";s:0:"";}s:84:"https://nasonurb.files.wordpress.com/2012/01/screen-shot-2012-01-13-at-7-19-22-pm.png";a:6:{s:8:"file_url";s:84:"https://nasonurb.files.wordpress.com/2012/01/screen-shot-2012-01-13-at-7-19-22-pm.png";s:5:"width";s:3:"693";s:6:"height";s:3:"333";s:4:"type";s:5:"image";s:4:"area";s:6:"230769";s:9:"file_path";s:0:"";}}s:6:"videos";a:0:{}s:11:"image_count";s:1:"2";s:6:"author";s:7:"4180497";s:7:"blog_id";s:7:"8438084";s:9:"mod_stamp";s:19:"2012-01-14 00:35:04";}
  geo_public: "1"
  _wpas_done_twitter: "1"
  geo_address: 425 P St NW, Washington, DC 20001, USA
  geo_longitude: "-77.018000"
  reddit: a:2:{s:5:"count";s:1:"0";s:4:"time";s:10:"1334581974";}
  _wpas_mess: "[Idea] Password-identification using only QR-codes cc @zugaldia"
  geo_latitude: "38.910000"
  jabber_published: "1326501305"
  _edit_last: "4180497"
published: true
type: post
tags: 
- idea
- technology
title: "[Idea] Password-identification using only QR-codes"
---
Antonio claimed in the future we´ll use QR-codes and our phones to identify ourselves online:
[tweet https://twitter.com/zugaldia/status/157946012005183489 align='center']

I tend to agree, and this is one way, I think, it could work. Just scanning 2 QR-Codes either by using your phone's camera or the computer´s camera.

<!--more-->Your computer has a camera.

<a href="https://nasonurb.files.wordpress.com/2012/01/screen-shot-2012-01-13-at-7-18-18-pm.png"><img title="Screen Shot 2012-01-13 at 7.18.18 PM" src="https://nasonurb.files.wordpress.com/2012/01/screen-shot-2012-01-13-at-7-18-18-pm.png" alt="" width="640" height="296" /></a><a href="https://nasonurb.files.wordpress.com/2012/01/screen-shot-2012-01-13-at-7-19-22-pm.png">
</a>
<ol>
	<li>The server (e.g. Gmail) asks who you are. You <strong>show your QR-code</strong>. That code would be created on the phone using the algorithm that changes the patter every few seconds. The QR-code is read by the integrated camera most computers now have.</li>
	<li>The server accepts the ID, but still needs to confirm he is a trustworthy server and that that the login/QR-code was just not used by someone else. The server connects with the phone (since it knows the info from the QR-code) and send a random number with which the phone makes another QR-Code. The user has to<strong> show the new QR-code</strong>.<span style="line-height:24px;font-size:medium;">You are now sure that the person holding the phone is the person trying to access the account.
</span></li>
	<li><span style="line-height:24px;font-size:medium;">[Extra] The server (or the phone) shows few pieces of information only the user would know. Some correct, some not. If you click the wrong one, you are out. Both server and phone log you out.</span></li>
</ol>
If the phone has a camera:

<a href="https://nasonurb.files.wordpress.com/2012/01/screen-shot-2012-01-13-at-7-19-22-pm.png"><img title="Screen Shot 2012-01-13 at 7.19.22 PM" src="https://nasonurb.files.wordpress.com/2012/01/screen-shot-2012-01-13-at-7-19-22-pm.png" alt="" width="640" height="307" /></a>
<div><a href="https://nasonurb.files.wordpress.com/2012/01/screen-shot-2012-01-13-at-7-18-18-pm.png">
</a></div>
<div></div>
<div>
<ol>
	<li>The server (e.g. Gmail) asks who you are showing a QR-code created on the server using the algorithm that changes the patter every few seconds. You <strong>scan your QR-code</strong>. The QR-code is read by the integrated camera most phones now have.</li>
	<li>The server accepts the ID, but still needs to confirm he is a trustworthy server and that that the login/QR-code was just not used by someone else. The phone connects with the server (since it knows the info from the QR-code) and send a random number with which the server makes another QR-Code. The user has to<strong> scan the new QR-code</strong>.You are now sure that the person holding the phone is the person trying to access the account.</li>
	<li>[Extra] The server (or the phone) shows few pieces of information only the user would know. Some correct, some not. If you click the wrong one, you are out. Both server and phone log you out.</li>
</ol>
UPDATE: 2 days later it went public that Google had been experimenting with something <strong>remarkably</strong> similar to this, called <a href="https://accounts.google.com/sesame">Sesame</a> [no longer works, more info <a href="https://plus.google.com/103943309878727777440/posts/DCdBqZX3bvQ">here</a>].

</div>
