--- 
layout: post
status: publish
meta: 
  _wpas_skip_fb: "1"
  _wpas_skip_twitter: "1"
  blogger_blog: brunosan.blogspot.com
  geo_accuracy: "0"
  tagazine-media: a:7:{s:7:"primary";s:57:"http://nasonurb.files.wordpress.com/2010/04/ohnetitel.jpg";s:6:"images";a:2:{s:57:"http://nasonurb.files.wordpress.com/2010/04/ohnetitel.jpg";a:6:{s:8:"file_url";s:57:"http://nasonurb.files.wordpress.com/2010/04/ohnetitel.jpg";s:5:"width";s:4:"1050";s:6:"height";s:3:"750";s:4:"type";s:5:"image";s:4:"area";s:6:"787500";s:9:"file_path";s:0:"";}s:58:"http://nasonurb.files.wordpress.com/2010/04/unbenannt2.jpg";a:6:{s:8:"file_url";s:58:"http://nasonurb.files.wordpress.com/2010/04/unbenannt2.jpg";s:5:"width";s:4:"1050";s:6:"height";s:3:"750";s:4:"type";s:5:"image";s:4:"area";s:6:"787500";s:9:"file_path";s:0:"";}}s:6:"videos";a:0:{}s:11:"image_count";s:1:"2";s:6:"author";s:7:"4180497";s:7:"blog_id";s:7:"8438084";s:9:"mod_stamp";s:19:"2011-01-18 19:24:03";}
  geo_public: "1"
  geo_address: 425 P St NW, Washington, DC 20001, USA
  geo_longitude: "-77.018000"
  blogger_author: "Bruno S\xC3\xA1nchez-Andrade Nu\xC3\xB1o"
  blogger_84811d3284c06b3cad7acdc4a1b30d1c_permalink: "5307222907086979442"
  geo_latitude: "38.910000"
  _edit_last: "4180497"
published: true
type: post
tags: 
- Science
title: Optimizing the way to travel
---
<p style="text-align:center;"><a href="http://nasonurb.files.wordpress.com/2010/04/ohnetitel.jpg"><a href="http://nasonurb.files.wordpress.com/2010/04/unbenannt2.jpg"><img class="aligncenter" src="http://nasonurb.files.wordpress.com/2010/04/unbenannt2.jpg" border="0" alt="" width="400" height="286" /></a>
</a></p>
Now and then I hear people saying that a 1-hour flight is actually faster by bus or car than by plane. Yes, the plane travels way faster, but the car or bus starts closer from you and leaves you closer to your actual destination. On the bus there are not either waiting times, security... like when flying.

It is obvious that if you have to flight 4 hours or longer, other means of transportation will take much longer… Try to go from Madrid to Berlín by bus! Conversely, if you must travel 20 minutes by car there is no point to fly, even if you are rich.

Then, what´s the most optimal way for each distance?

<!--more-->Some time ago I made a small IDL .pro function to check it out (and procrastinate). My plan was to make a javascript, PHP or something more "web 2.0" but I have no time. Unfortunately I am too used to IDL, so I knew it would only take some minutes If I go with it.

Here it is. How much time it takes to travel what distance, using different means. Here I am leaving out the price cost and focusing only on time efficiency.
<div class="separator" style="clear:both;text-align:center;"><a style="margin-left:1em;margin-right:1em;" href="http://nasonurb.files.wordpress.com/2010/04/ohnetitel.jpg"><img src="http://nasonurb.files.wordpress.com/2010/04/ohnetitel.jpg?w=300" border="0" alt="" /></a></div>
Obviously I had to made some assumptions, this is just a second order approximation.
<ol>
	<li><strong>Walking</strong> is just to sart walking at 5 km/h. I assume you can´t walk more than 25 km at once.</li>
	<li><strong>Running</strong> needs 10 minutes to put your shoes on and warm-up, then 10 km/h, but can´t run more than 16 km at once. Then 10 minutes to cool-off.</li>
	<li><strong>Bike</strong> needs 15 minutes to get the gear and get on the road, then 30 km/h average but no more than 30 km. Then 15 minutes to have a shower.</li>
	<li><strong>Car</strong> needs 40 minutes to get to it, drive 10 km at 50 km/h to get to the highway and then 110 km/h. Same 10 km to drive to the parking spot and 40 minutes to get where you actually wanted.</li>
	<li><strong>Train</strong> needs 60 minutes to get to the station and buy the ticket, 15 km takes the train at 70 km/h to leave the city and then 90 km/h cruise speed. Then the same 15 km at 70 km/h to arrive and 60 minutes to get to your destination in the city.</li>
	<li><strong>Fast Train</strong> (like spanish AVE or german ICE) is like the train but it leaves the city a bit faster and cruises at 170 km/h.</li>
	<li><strong>Plane</strong> takes 2 hours to get to the airport, check-in, security and all that annoying stuff, then it takes like 50 km at an average of 400 km/h to reach cruise speed of 900 km/h. Then the same 400 km/h to land, taxi and 2 hours for luggage pick-up and getting to the actual destination place.</li>
</ol>
On the plot, time is in linear scale but distance is logarithmic to show from 1 to 1.000 km. Think of the logarithm as the "magnitude" of the distance. 10 km is one order of magnitude more than 1 km, and 100 km is one more than 10 km. You would need 100 ticks on the plot to show them. With logarithms you can plot these 2 orders with just 2 ticks.

You could tune all the parameters. That is why I wanted something like javascript! but the idea remains, faster transportation means involve longer preparation times. You can see that on the graph when shorter distances are flat lines on the beginning. It doesn´t matter how fast it cruises, most of the time you will spend it getting there or getting highest speed.

Also you can see that walking is never a flat line, but it goes up faster (takes more time) as distance increases. Only after 1.500 meters makes more sense to bike or run. The best option is the one which is lowest in the graph. To make it clearer and more focused on efficiency, I have changed the Y axis to time per km instead of time, and I´ve added some shades:
<div class="separator" style="clear:both;text-align:center;"><a style="margin-left:1em;margin-right:1em;" href="http://nasonurb.files.wordpress.com/2010/04/unbenannt2.jpg"><img src="http://nasonurb.files.wordpress.com/2010/04/unbenannt2.jpg?w=300" border="0" alt="" /></a></div>
Obviously this is just a fast calculation. The approach, for a rough estimation, looks valid to me, but would be nice to play and tune the parameters. If you want to make a Javascript code, here´s your IDL template.

Happy procrastination!

<span style="font-size:x-small;">time=fltarr(w,1000) </span>
<span style="font-size:x-small;">w=n_elements(mode) </span>
<span style="font-size:x-small;">
</span>
<span style="font-size:x-small;">for i=0,w-1 do time[i,*]=prepa_min[i]/60.+(depart_km[i]/depart_sp[i]*2)+((km-depart_km[i]&gt;0)/(cruise_sp[i]*(km LT cruise_max[i]))) </span>
<span style="font-size:x-small;">
</span>
<span style="font-size:x-small;">c=[50,70,100,140,155,175,190] </span>
<span style="font-size:x-small;">l=[0,0,0,0,0,1,0] </span>
<span style="font-size:x-small;">
</span>
<span style="font-size:x-small;">set_plot,'ps' </span>
<span style="font-size:x-small;">DEVICE, filename='di.ps',SET_FONT='Helvetica Bold Italic', /TT_FONT,/color,/encap </span>
<span style="font-size:x-small;">plot,time[0,*]/km*60,xtitle='Travel Distance [Km]',ytitle='Time per Kilometer [Minutes]',xrange=[1,200],yrange=[0.1,100],/xlog,/ylog,/ys </span>
<span style="font-size:x-small;">for i=0,w-1 do oplot,(time[i,*])/km*60,color=c[i],thick=5,line=l[i</span>
<span style="font-size:x-small;">legend,mode,color=c,linestyle=l,/right </span>
<span style="font-size:x-small;">device,/close </span>
<span style="font-size:x-small;">
</span>
<span style="font-size:x-small;">set_plot,'ps' </span>
<span style="font-size:x-small;">DEVICE, filename='di2.ps',SET_FONT='Helvetica Bold Italic', /TT_FONT,/color,/encap </span>
<span style="font-size:x-small;">plot,time[0,*],xtitle='Travel Distance [Km]',ytitle='Time [Hours]',/xlog,xrange=[1,200];,yrange=[0,50] </span>
<span style="font-size:x-small;">for i=0,w-1 do oplot,(time[i,*]),color=c[i],thick=5,line=l[i] </span>
<span style="font-size:x-small;">legend,mode,color=c,linestyle=l,/right,/bottom </span>
<span style="font-size:x-small;">
</span>
<span style="font-size:x-small;">device,/close </span>
<span style="font-size:x-small;">end</span>
