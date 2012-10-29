---
filename: _posts/project/2012-05-06-balloon-mapping.md
layout: project
category: project
title: Balloon mapping
status: Completed 
color: GreenYellow
skills:
- DIY
- Mapping
- OSM
- Balloon mapping
- Image analysis 
---

Balloon mapping is creating aerial maps using Helium Balloons. The idea
is to minimize the cost and entry barriers so that anyone could do it
with minimal resources and as fast a possible.

This is specially relevant for developing countries, crisis response or
citizen response to events like e.g. coastal oil spills.

You can read more about Grassroots Mapping
[here](http://grassrootsmapping.org/).

###Goal

The Goal here is to get to know the technique and get familiar with the
challenges and benefits of grassroots mapping using balloons. We chose to map a small region inside the Rock Creek and one of the
bridges.

#Progress

* *2012-05-06*: Hardware delivered (as a birthday present, thank you
  guys!). Corresponds to this kit available online from [Grassroots Mappers](http://shop.breadpig.com/collections/publiclaboratory/products/balloon-mapping-kit)
* *2012-05-20*: Mapping event. Managed to get Helium and map a small
  section of the Rock Creek and bridge as planned. Mapping scope reduced
due to DC regulations for objects in the sky. 
* *2012-05-25*:  Map stitching using SeaShore.   

###Lessons Learned

**Helium**

Getting the Helium proved to be the biggest challenge. One needs to
find a place to buy the Helium which hinders its usability in crisis
response or anywhere far from such shops ( i.e. country side, developing
countries, ...) 

Stocking up Helium before hand and carrying it along
 seems the best option. Yet, this significantly increases the size 
of a "Balloon mapping kit" and has others limitations such us flying with a kit which otherwise fits inside a small bag.

It would be very desirable to build a solution to recover
the Helium once used, specially given the challenges with Helium supply. 

**Wind**

Balloon mapping is suitable for none to low-wind conditions. Even a
small wind can create vibrations and swings on the camera that greatly
difficult the stitching, specially when the camera doesn't point to the
nadir.

Using a very low-tech DIY wind stabilizer greatly reduces the shaking
(Image provided below).

Mapping under increased wind conditions can be address with kites
instead of balloons.

**Stitching**

We found best results recording high quality video with our Android
phones. This allows to pick up the best frames when the shaking is
minimal, and the cameras points towards the nadir.

Stitching can be done purely by hand using any image manipulation with
layers, such us Gimp or SeaShore.

We recommend the online stitching tool [Mapknitter](http://mapknitter.org/) if the goal is to compare
the results with available aerial imaginery, or the GNU tool
[Hugin](http://hugin.sourceforge.net/)



#Resources


* Images from the mapping event:

<a href="http://www.flickr.com/photos/azugaldia/7233562582/"
title="Third flight is a charm by zugaldia, on Flickr"><img
src="http://farm8.staticflickr.com/7104/7233562582_cccccfb816.jpg"
width="500" height="375" alt="Third flight is a charm"></a>


<a href="http://www.flickr.com/photos/bonniebogle/7231205074/"
title="Great day balloon mapping w/ @zulgalgia @brunosan @ericg @lxbarth
@drsvalbard @willieshubert @corriemc by Bonnie Bogle, on Flickr"><img
src="http://farm6.staticflickr.com/5450/7231205074_ea02d7efa2.jpg"
width="500" height="500" alt="Great day balloon mapping w/ @zulgalgia
@brunosan @ericg @lxbarth @drsvalbard @willieshubert @corriemc"></a>

<a href="http://www.flickr.com/photos/azugaldia/7228614794/"
title="First stage in balloon mapping is getting some helium in a local
flower store by zugaldia, on Flickr"><img
src="http://farm8.staticflickr.com/7084/7228614794_2e24f5fbde.jpg"
width="500" height="375" alt="First stage in balloon mapping is getting
some helium in a local flower store"></a>

<a href="http://www.flickr.com/photos/bonniebogle/7228939740/"
title="Balloon mapping in Rock Creek park. @brunosan + @zugaldia
attaching the camera by Bonnie Bogle, on Flickr"><img
src="http://farm6.staticflickr.com/5342/7228939740_a5a1be6501.jpg"
width="500" height="500" alt="Balloon mapping in Rock Creek park.
@brunosan + @zugaldia attaching the camera"></a>

* Example of quickly stitched set of images:

{% image balloon-mapping-tiles.png %}
