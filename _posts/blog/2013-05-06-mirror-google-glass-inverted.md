---
filename: _posts/blog/2013-05-06-mirror-google-glass-inverted.md
layout: post
category: blog
title: "Why is the mirror of the Google Glass inverted?"
published: true
tags:
- google
- glass
- hardware
---

![](/images/glass-intro.jpg)


These past days I have had the chance to play for the first time with the Google Glass
from [Silica Labs](https://www.silicalabs.com). This post is not about the
experience, you can find about that online. What drove my interest is
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
inside the bulk piece. The little image is sent sideways to a 50% mirror
that directs half the light to the eye. This is
done to also allow 50% of the light from the outside reach the eye, thus
making the image superimposed over the real world.

![](/images/glass-concept.png)

But if you think about it, the mirror on the Google Glass is inclined in the
opposite direction. Why?

![](/images/slanted.jpg)

On the first option (as the first diagram above) the image gets 50% of the
light. With the opposite direction (as the Google Glass), you only get 25% of the light: the
beam goes twice over the half-mirror, once through and once reflected.
The second option also needs a mirror at the end of the eyepiece to
reflect back the light. On the image below I´m taking a picture of the
outside of the mirror, along the axis of the eyepiece.

![](/images/outside-mirror.jpg)

Why the second option, with a double pass?
I think the reason is augmentation. The mirror at the end is not flat,
but slightly spherical (or parabolic). A concave mirror creates an
augmented virtual image if the object is before the focus. On the side
image you can see the piece is nearly flat but no quite so. Thus the image you see
on the outside (convex mirror) is smaller. The radius is much
bigger than the distance to the eye. The virtual image if the screen is therefore
then bigger than it would be with a flat mirror.

This means that the overall light path on the eyepiece of the Google
Glass looks like this:


![](/images/glass-path.jpg)


After playing with the Glasses for a weekend and letting anyone use
them, they all love it, but agree that it looks too... geeky, too bulky.
I believe there must be better options, smaller and less visible when you
wear them. Perhaps:

* A single non-flat semi-transparent mirror instead of the flat one. This what we use on a special type of telescopes. They
are called asymmetrical or *[off-axis](https://en.wikipedia.org/wiki/Reflecting_telescope#Off-axis_designs)*. They come with their own set of
problems (like chromatic aberrations), but in such a small light path I
would still argue to try it, with some combination of software to
correct these problems. Still, that option would probably introduce strange field aberrations on
the transmitted background image.

* Direct projection from the side of the glass into the lens. Problem
  here would be to place inside the lens and yet outside the normal
field of vision, so it´s only available on the corner, not in the middle
of your normal view.

###Ideas for Apps for the Google Glass

After using them for a weekend, talking about them with colleagues at
[Silica Labs](https://www.silicalabs.com), and wear them at various
situations, I got a few ideas for apps:

* *Climb app*. Save videos and pictures of your climbs. At any climbing
  place, make a picture of the route to help you flash tricky points,
locate best places for hooks and save videos as you make your way up. If
the route is long, the belayer can talk and see the climber and
videochat to give support without releasing the rope.

* *Talking queues*. When you meet someone and start talking,
  start flashing cards of his/her interest, pictures, notes. Content
could come from the CV if it´s a work interview, OkCupid profile if it´s
a first date, live speech assistance from someone who is listening and
watching what you see, ...

* *Buffer record*. Continuously save video or frames every few seconds,
  and overwrite them in a continuous loop. This can be important in case
of accident if you are on the road, you are a police officer, or you
think you saw something worth saving when it already started.

* *Glass Notifier*. An app that just pushes notifications to your Glass.
  I´m thinking of any app that currently flashes notification on your phone.
Just taking them and pushing them as a card to the glass. (Agenda,
Whatsapp, Facebook, Instagram, Google Now, Email)


![](/images/glass-capitol.jpg)
