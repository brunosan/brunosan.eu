---
layout: post
title: A heatmap for all your runs in RunKeeper
published: false 
tags:
- 
---
This is a map of 2 year recording my run with
[RunKeeper](www.runkeeper.com).
<iframe width='500' height='300' frameBorder='0'
src='http://a.tiles.mapbox.com/v3/gai.map-ticb4ks9.html#14/38.913/-77.046'></iframe>

I was inspired by xxx, but I was not happy with just using Google Earth,
I wanted to make a beatiful map. And this is how you make it with
TileMill and Mapbox.
<!--more-->

Steps are:
0- Run a few routes :)
1- Get your data from RunKeeper.
2- Import in TileMile
3- Style at will.
4- Use Mapbox for hosting and base layer.


###Get your data###

Click on "export data" [link](http://runkeeper.com/exportDataForm) under *Settings* page in RunKeeper. Select the dates, you might want all your data so just select a wide range. You´ll get the link on your email in a few minutes.


<img src="/media/runkeeper-export.jpg" width="50%">

###Import in TileMile###

You need first to export the gpx tracks into a Shapefile. I got some
help from the awesome people at Mapbox and it turns to be as simple as:

    ogx2ogx a.gpx

Then append the rest of the files in the folder:

    #bin/sh
    echo yo

bla bla
###Style at will.###


###Use Mapbox for hosting and base layer.###


