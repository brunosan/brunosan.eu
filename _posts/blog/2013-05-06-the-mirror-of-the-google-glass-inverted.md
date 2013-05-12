---
layout: post
category: blog 
title: Why is the mirror of the Google Glass inverted?
published: true 
tags:
- google
- glass
- hardware
---

{% image glass-concept.png %}


Today I had the chance to play for the first time with the Google Glass
from [Silica Labs](http://www.silicalabs.com). This post is not about the
experience, you can about that online. What drove my interest is
the hardware, in particular the eyepiece. If Google Glass is to become
popularized, the eyepiece needs to be as small and invisible as possible. 
I´m pretty sure they have invested a lot of time on that. 
Upon close inspection I think they have decided to ship a first option, but 
they continue to work on that. Perhaps as an "innovation slack" to keep ahead of 
copycats, or because the main audience for now are developers to build
apps for the consumer market later on. And developers don´t mind the
geeky aspect that much. 

<!--more-->

If you look closely you´ll see that the eyepiece is a nanoprojector
inside the bulk piece. This little image is sent sideways to a 50% mirror
that directs half the light to the eye. This is
done to also allow 50% of the light from the outside reach the eye, thus
making the image superimposed over the real world.

{% image glass-concept.png %}

But if you think about it, the mirror on the Google Glass is inclined in the
opposite direction. Why?

{% image slanted.jpg %}

On the first option (as the first diagram above) the image gets 50% of the
light. With the opposite direction (as the Google Glass), you only get 25% of the light: the
beam goes twice over the half-mirror, once through and once reflected.
The second option also needs a mirror at the end of the eyepiece to
reflect back the light. On the image below I´m taking a picture of the
outside of the mirror, along the axis of the eyepiece.

{% image outside-mirror.jpg %}

Why the second option, with a double pass?
I think the reason is augmentation. The mirror at the end is not flat,
but slightly spherical (or parabolic). A concave mirror creates an
augmented virtual image if the object is before the focus. On the side
image you can see the piece is nearly flat but no quite so. The radius is much
bigger than the distance to the eye. The virtual image if the screen is
then bigger than it would be with a flat mirror.

This means that the overall light path on the eyepiece of the Google
Glass looks like this:


{% image glass-path.jpg %}


After playing with the Glasses for a weekend and letting anyone use
them, they all love it, but agree that it looks too... geeky, too bulky.
I believe there must be better options, smaller and less visible when you
wear them. Perhaps:

* A single non-flat semi-transparent mirror instead of the flat one. This what we use on a special type of telescopes. They
are called asymmetrical or *off-axis*. They come with their own set of
problems (like chromatic aberrations), but in such a small light path I
would still argue to try it, with some combination of software to
correct these problems. Still, that option would probably introduce strange field aberrations on
the transmitted background image. 

* Direct projection from the side of the glass into the lens. Problem
  here would be to place inside the lens and yet outside the normal
field of vision, so it´s only available on the corner, not in the middle
of your normal view. 


