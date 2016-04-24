---
filename: _posts/blog/2012-08-05-idea-cloud-battery-app.md
category: blog
layout: post
title: "[Idea] Cloud Battery App"
published: true
tags:
- idea
- technology
- app
---

![](/images/Battery-hub.png)

This is an idea for an app that keeps track of the battery levels across
all your devices.

**The need**

You probably have:

* A smart phone (e.g. iPhone, Android or BlackBerry). Battery lasts between one
  or two days typically.
* A tablet (e.g. iPad, Nexus 7). Battery last a few days, less than a
  week.
* A laptop. Battery lasts hours, but most of the time it is used with a
  cord.
* A Bluetooth mouse or track pad in the computer.
* A Bluetooth wireless headset. E.g. for running or just calling with it.

Perhaps also a second phone, a Kindle, a work laptop, ...

How can you keep track of which device needs recharge when? How can you
avoid taking your phone for commuting to find out is nearly dead?

**The Solution**
<!--more-->
Wouldn´t it be nice if you had an app that lists the battery levels of
all your online devices?

It would also help you keep track of battery health, quick check before a
long trip or just getting an alert at night to re-charge so you can use
it for your commute next day.

**The implementation**

Unfortunately, the app needs to have a version for each OS (Win, OSX, iOS, Android).
May be you can get around it putting it on a website and use some
Javascript magic
to request the battery life. [This already exists, btw](http://www.smartjava.org/content/html5-access-battery-status-through-javascript). The problem is that then you need to use that page as
home...
Also the feature to request the battery level to Bluetooth devices might
not be possible depending on the model.

Basically the app would request the battery level every so often. To
save battery, you can make it to do it at most one quarter of the
minimum recorded lifetime of each device´s battery.

Once recorded the app sends the timestamp and battery level to the
server, or schedules to send it once you get online.

The app queries the server every so often to retrieve the lists of
devices and their battery levels.

You can make the extra mile and calculate the remaining battery life
both in idle and maximum use scenarios (you can get those statistical estimates
after a few charge loads or with a few users with the same device and
battery health status).

You can also tie it to your calendar and alert the user before a long
trip.

It would also be very interesting to see aggregated data on battery
performance.


**Monetize**

You can monetize selling the app. I would pay for it.

You can also show ads, or even trigger ads for new batteries or servicing options once the
battery health for a particular device gets too low.


*You don´t want a low battery when you get Aces, do you?*
<a href="http://www.flickr.com/photos/cjsorg/2769855332/" title="Aces
and Low Battery by CJ Sorg, on Flickr"><img
src="http://farm4.staticflickr.com/3143/2769855332_f774ef8530.jpg"
width="480" height="320" alt="Aces and Low Battery"></a>
