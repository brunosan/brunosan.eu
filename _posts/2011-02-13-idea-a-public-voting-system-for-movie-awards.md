--- 
layout: post
status: publish
meta: 
  _wpas_skip_fb: "1"
  geo_accuracy: "0"
  tagazine-media: a:7:{s:7:"primary";s:82:"http://nasonurb.files.wordpress.com/2011/02/screen-shot-2011-02-13-at-20-37-10.png";s:6:"images";a:1:{s:82:"http://nasonurb.files.wordpress.com/2011/02/screen-shot-2011-02-13-at-20-37-10.png";a:6:{s:8:"file_url";s:82:"http://nasonurb.files.wordpress.com/2011/02/screen-shot-2011-02-13-at-20-37-10.png";s:5:"width";s:4:"1030";s:6:"height";s:3:"550";s:4:"type";s:5:"image";s:4:"area";s:6:"566500";s:9:"file_path";s:0:"";}}s:6:"videos";a:0:{}s:11:"image_count";s:1:"1";s:6:"author";s:7:"4180497";s:7:"blog_id";s:7:"8438084";s:9:"mod_stamp";s:19:"2011-02-14 01:44:18";}
  geo_public: "1"
  _wpas_done_twitter: "1"
  geo_address: 425 P St NW, Washington, DC 20001, USA
  geo_longitude: "-77.018000"
  _wpas_mess: "[IDEA] A parallel public voting system for movie awards."
  geo_latitude: "38.910000"
  jabber_published: "1297647858"
  _edit_last: "4180497"
published: true
type: post
tags: 
- idea
- technology
title: "[IDEA] A public voting system for movie awards"
---
<div class="mceTemp mceIEcenter"><dl class="wp-caption aligncenter"><dt class="wp-caption-dt"><a href="http://www.flickr.com/photos/mobo85/2280591842"><img class="size-full wp-image-1842" title="Screen shot 2011-02-13 at 20.37.10" src="http://nasonurb.files.wordpress.com/2011/02/screen-shot-2011-02-13-at-20-37-10.png" alt="" width="640" height="341" /></a></dt></dl></div>
Today was the 2011 <a href="http://es.wikipedia.org/wiki/Premios_Goya">Goya Awards</a> ceremony in Spain. Soon will also be the 2011 <a href="http://en.wikipedia.org/wiki/Academy_Award">Academy Awards</a> in the USA. In these ceremonies, the "Best Movie", "Best Actor", ... are announced. What some people do not realize is that these awards are voted <em>only</em> by the members themselves of these academies. It kind of changes the meaning of "Best Movie of 2011". Surely they are the experts, but taste is also on the person who <em>sees art</em>, not only on the person who <em>does art</em>. I´d love to see both ends of the game.

<!--more-->

What I propose is to make a simple webpage where people can nominate and vote. All of us. Results would be released paralel to the official awards. Hopefully one day the official awards will include this <em>popular</em> category.

Keep it simple:
<ul>
	<li><strong>Nominations phase</strong>: Anyone (authenticated via Facebook or OmniAuth, but nominations are not linked to proposers) can submit one entry on any category (from last year's IMDB). One nomination per person and category. Results won´t be public until the phase is over.</li>
	<li><strong>Nominations announced</strong>. As with the official case, nominations will be published taking the first entries on each category. No vote counts are published.</li>
	<li><strong>Voting phase</strong>. Anyone can vote. Votes are again from authenticated users, but not linked to their name. Results are not published until the phase is over, but we could show the total number of votes per category to build expectation.</li>
	<li><strong>Results</strong>. Winners, and vote counts, are published.</li>
</ul>
&nbsp;

<span style="font-size:small;"><span style="line-height:24px;">If developed fast, we could test the last 2 items for the 2011 Academy Awards. I actually know how to do it without deploy cost on Ruby on Rails and Heroku, but my plate is quite full with other ideas. If you have time, I could help.</span></span>
