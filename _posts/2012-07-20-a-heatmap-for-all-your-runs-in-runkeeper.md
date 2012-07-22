---
filename: 2012-07-20-a-heatmap-for-all-your-runs-in-runkeeper.md
layout: post
title: A heatmap for all your runs in RunKeeper
published: false 
tags:
- 
---
This is a map of 2 year recording my run with
[RunKeeper](www.runkeeper.com).
<iframe width='500' height='300' frameBorder='1px'
src='http://a.tiles.mapbox.com/v3/gai.map-ticb4ks9.html#14/38.913/-77.046'></iframe>

I was inspired by xxx, but I was not happy with just using Google Earth,
  I wanted to make a beautiful map. And this is how you make it with
  [TileMill](http://www.tilemill.com) and [Mapbox](www.mapbox.com).
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
    for file in `ls .`
    echo yo
    endfor

You will have new folder that contains shapefiles with tracks for each
race, and also another shapefile with all measures positions
(trackpoints). I´ll only use the tracks.

In TileMill (available for free [here](#)) you create a new project.
Then click on add layer, select the shapefile with the tracks, and click
"style and save".

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
    tracks:glow {
    line: 0;
    }

Note that I am not putting any base map. The reason is that I want to
add one of the beautiful basemaps MapBox provides. More later. While
styling you might want to add some background, you can do that for
example with this:
    Map{
    blabla
  }

###Use Mapbox for hosting and base layer.###

Once styled, it´s very easy to host this layer online with MapBox. It
also lets you add a nice base map.

To upload it, you need to authenticate with MapBox under Setting in
TileMill. Once done, you only need to Click on *Export* -> *Upload*. In the setting window select the area you want to
render tiles, the center by default and available zoom levels. The
bigger the area, and the smaller the zoom level, the longer it will take
to process. Areas scale exponentially, so keep it small.

Once finished, you can see it on your MapBox Account. Make a New Map,
and click on *Add a New Layer* to add you track´s layer.

For the base map, MapBox offers quite some options. My idea here was
something plain, to let the heatmap shine. I chose xxx. You can still
style it at will to get exactly what you want, and even add markers if
you want.


Last step, once saved, it´s to embed it. You only need to click on the
share button. You can also use the static API ([Documentation](#))to produce static image,
like this one:

img

The code to do this is: 
     code API



If you end up making a heat map, please send over a link,
it´d be great to see it.

Happy styling!
