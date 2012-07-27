---
filename: 2012-07-20-a-heatmap-for-all-your-runs-in-runkeeper.md
layout: post
title: A heatmap for all your runs in RunKeeper
published: true 
tags:
- map
- Technology
- GIS 
---
This is a map of 2 years running around Washington DC with
[RunKeeper](http://www.runkeeper.com).
<iframe width='100%' height='500' frameBorder='1px'
src='http://a.tiles.mapbox.com/v3/gai.map-ticb4ks9.html#12/38.913/-77.046'></iframe>

  I always wanted to make a [heat]map with all my tracks. I finally got some time to play with
  [TileMill](http://www.tilemill.com) and [Mapbox](http://www.mapbox.com) to
make it. The map above is the result, and these are the steps to make
your own:
  <!--more-->

0. Run a few routes :)
1. Get your data from RunKeeper.
2. Import in TileMile
3. Style at will.
4. Use Mapbox for hosting and base layer.


###Get your data###

  Click on "export data" [link](http://runkeeper.com/exportDataForm) under *Settings* page in RunKeeper. Select the dates, you might want all your data so just select a wide range. You´ll get the link on your email in a few minutes.


  <img src="/media/Runkeeper-export2.jpg" width="100%">

###Import your tracks into TileMile###

You need first to export the gpx tracks into a Shapefile. I got some
[help](http://support.mapbox.com/discussions/tilemill/1331-gpx-to-sqlite) from the awesome people at Mapbox and it turns to be as simple as:

{% highlight sh %}
    ogr2ogr runs first-track.gpx
{% endhighlight %}

Then append the rest of the files in the folder:

{% highlight sh %}
#!/bin/bash
directory=gpx/
for file in $( ls $directory )
do
  ogr2ogr -append runs $directory$file
done
{% endhighlight %}

You will have new folder that contains shapefiles with tracks for each
race, and also another shapefile with all measured positions
(trackpoints). I´ll only use the tracks.

In TileMill (available for free [here](http://www.mapbox.com/tilemill)) create a new project.
Then click on add layer, select the shapefile with the tracks, and click
"style and save".

<img width="100%" src="/media/TileMill-addlayer.jpg" >


###Style at will.###

My idea here was to create a heatmap for the routes. The closest thing I
could think in TileMill is to style the tracks with a wide and very
transparent trace. E.g. with a transparency of 0.2 you need 5 tracks to
get a completely opaque trace.

You can, and should (it´s fun!) play with the styles. I ended up styling
them as blood arteries, with a green shade around. Zoomed out you get
the heatmap idea, and if you zoom in, you can see all the individual
tracks. This gives a funny highway aspects to places I tend to use a
lot. Here is the style I used:
{% highlight css %}
#tracks::extraglow[zoom <8] {
  line-width:5;
  line-color:#0c7205;
  line-opacity:1;
  line-smooth:0;
}
#tracks::extraglow[zoom >8] {
  line-width:13;
  line-color:#0c7205;
  line-opacity:0.18;
  line-smooth:0.6; 
}
#tracks::glow {
  line-width:5;
  line-color:#ffce09;
    line-opacity:0.4;
}
#tracks::base {
  line-width:1;
  line-color:#fd0505;
  line-opacity:0.6;
}
{% endhighlight %}

The trick to add more than one styling to the track is to use `::` like
in `track::glow`

Note that I am not putting any base map. The reason is that I want to
add one of the basemaps MapBox provides. More on this later. While
styling you might want to add some background, you can do that
activating the MapBox streets layer plugin (under settings) or adding 
a quick style only while you play with the styling:

{% highlight css %}
@base: #ffffff;
Map { background-color:@base; }
{% endhighlight %}

To activate the tooltip when you put the mouse over the track, you need
to go to the "Templates" tab (the icon with the hand), then "Teaser".
Use the drop-down menu to select the only layer ("tracks") as the source
of data and, under Content write the text. In my case I just use the
*name* column in the shapefiles: `{{{name}}}` 


###Use Mapbox for hosting and base layer.###

Once styled, it´s very easy to host this layer online with MapBox. I´ll
also use Mapbox to add a nice base map.

To upload it, you need to authenticate with MapBox under Setting in
TileMill. 

<img width="100%" src="/media/TileMill-settings.jpg">


Once done, you only need to Click on *Export* -> *Upload*. In the setting window select the area you want to
render tiles, the center by default and available zoom levels. The
bigger the area, and the smaller the zoom level, the longer it will take
to process. Areas scale exponentially, so keep it small.

Once finished, you can see it on your MapBox Account. Make a New Map,
and click on *Add a New Layer* to add you track´s layer.


<img width="100%" src="/media/layers-tilemill.jpg">

For the base map, MapBox offers quite some options. My idea here was
something plain, to let the heatmap shine, so I chose "Light". You can still
style the color palette at will to get exactly what you want, and even
add markers if you want.

Last step, once saved, it´s to embed it. You only need to click on the
share button.


If you end up making a map with your runs, please send over a link,
it´d be great to see it.

Happy styling!
