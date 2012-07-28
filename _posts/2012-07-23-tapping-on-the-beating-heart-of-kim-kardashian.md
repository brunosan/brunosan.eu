---
filename: 2012-07-23-tapping-on-the-beating-heart-of-kim-kardashian.md
layout: post
title: "Tapping on 'The Beating Heart of Kim Kardashian'"
published: true 
tags:
- data
- mining
- technology
---

That was the title of my first [Data Science DC
Meetup](http://www.meetup.com/Data-Science-DC/events/70123182/). [Mike
Dewar](http://www.twitter.com/mikedewar), from bitly,
[presented](https://github.com/mikedewar/beatingheart) his work on tracking attention. The
background hypothesis is that attention leads to revenue, and he wants
to measure attention at any given time by means of click rates. With bily he has access to **all** clicks on
shortended links. The problem is then to transform that stream of single
events into an attention function estimate in real time.

The strange title comes from the observation that *"[The online presence of] Kim Kardashian is a dynamic input/output system that maps attention onto revenue"*. More clicks, more attention, more money. 

I found the seminar very interesting. I did make several questions,  but I also left with many more and some ideas that I post here. But first a short summary [using his slides](https://github.com/mikedewar/beatingheart):

<!--more-->
The problem lies in that the input stream for bit.ly is a set of single click events
(and the metadata, like IP, URL or cookie). Since bitly has a 1 second
resolution for clicks, it looks something like this:

{% image clicks-kim.png %}

And for each click the meta data, with all these variables:

{% highlight bash %}
"a": "Mozilla/5.0 (iPad; CPU OS 5_1_1 like Mac OS X) AppleWebKit/534.46
(KHTML, like Gecko) Mobile/9B206 Twitter for iPad",
"c": "US",
"nk": 1,
"tz": "America/Los_Angeles",
"gr": "WA",
"g": "NDeWi3",
"i": "96fa514376a93c1641bcea90dbc4b07a",
"h": "NDeWi1",
"k": "4f488a1c-0025f-049f2-301cf10a",
"l": "plakshmi",
"al": "en-us",
"topic": "food",
"p": "new",
"hh": "bit.ly",
"r": "direct",
"u": "http://www.padmalakshmi.com/po...",
"t": 1341021591,
"hc": 1340637617,
"cy": "Seattle",
"ovi": {
"count": 599,
"proba": [
  0.86667,
  0.13333
]
},
"ll": [
 47.5951,
 -122.3326
 ]

{% endhighlight %}

BTW, they even provide a public feed with click events for all .gov .mil
shortlinks (with anonymized data). To see the live stream of clicks run this
on the terminal:

    curl http://developer.usa.gov/1usagov

###Back to Kim Kardashian###

The core of his work is to convert that stream of deltas (clicks) into a
function, so he can measure the rate of clicks any time. 

First solution
is to make an histogram.

{% image histogram-kim.png  %}

Problems here are numerous. How to select the bin size? When to start?
Furthermore, since the click stream is highly stochastic, bin sizes
really affect the estimated rates... **Phase and amplitude are ill treated**.

Next on the list would be to smooth the deltas with... a Gaussian
(simple enough):

{% image gaussian.png   %}

With a Gaussian smooth, any point *feels* the clicks around it. No phase problem, **but** still the amplitude of the Gaussian is
a free parameter. The wider the shape, the more clicks it integrates and
therefore the less variations it can register. 

However, the biggest problem is that
a Gaussian at time *t* needs data before *and* after. Since this problem
is oriented towards a real time measure, using a Gaussian forces us to wait at
least a couple of Gaussian widths to pick up the incoming tail. If you
make the Gaussian very narrow to make it quick, you start to pick up a
lot of noise. We are trying to oversample a function
that is under sampling the metric we are after (like interpolating into
seconds a GPS track that is sampled every minute with low resolution). I
would not go below the standard deviation of the time deltas. 


{% image gaus-kim.png  %}

This when Mike takes out the [gamma function](http://en.wikipedia.org/wiki/Gamma_distribution). The best property is that
it only spreads in one direction, but it is also nice that one of the
two free parameters can be linked to the lag/resolution of the system.

{% image gamma.png  %}

You still have the lower threshold for noise, but it yields beautiful
results. Good enough for the real part.


###The beating heart

So, what happens when Kim writes a blog post about having [10 million
likes](http://www.celebuzz.com/2012-07-10/kim-kardashian-thanks-to-all-10-million-of-you/)? She gets a burst of 2 clicks per seconds, which decay quite fast. Using the approach above we can get an *attention function* for that event, for each shortlink and the clicks people do on those links.


{% image kim_attention.png  %}

What about the Cookie moster [video](http://www.youtube.com/watch?v=-qTIGg3I5y8)? 4
times less attention.


{% image cookie_monster_attn.png  %}

Obama?


{% image obama_attn.png  %}


###Tapping on the beating heart

The beauty of these plots is having so many dimensions of information available.


**URL origin**

On the plot above, each color represents a different shortlink for the
same link. On the plot these numbers are stacked. That is,
we can read that Kim Kardashian gets most of the attention from one source, and it fades away
very quickly. 

Obama´s attention, on the other side, anchors on many many sources, with
multiple peaks of all sizes.

**User targeting**

Since every click can be linked to a cookie and IP, it would be fairly
easy to separate the users into interests and attention level. Or more
specifically, a which attention level they click. E.g. target those
users who contribute the earliest to rising attention to a particular
set of famous people. 

One could also do the same with IP and make maps
of attention, even plotting the timeline how the attention shifts in
within the map, or by time, or by browser (computer versus mobile for
example).

I was glad Mike answered to this question saying this would hopefully be the
last money to tap from this data. 

**Dropping clicks**

It seems that right now bit.ly stores every click to make this
attention analysis, and they were interested in how to drop some of
those clicks, so they can have similar results using less data or
resources.

I can imagine, and Mike confirmed, that it is possible to filter those
user who are consistently in the rising part of the attention curve, and
those who are on the tail. Once selected one could randomly drop a
subset of those and make the correction.



**Ergodicity of clicks**

I could not help it but wonder if one could find a parameter space where the
ergodic principles applies. This would be great since it removes the
depence with time.

Basically the [ergodic hypothesis](http://en.wikipedia.org/wiki/Ergodic_theory)
 aims to relate the time average to the space average. For example
the average of throwing 100 dices, is the same as the average of
throwing once dice 100 times.

My hypothesis is that it might possible to identify a set of IPs, or
sources where the attention achieved in time (peaks) is related with the
attention achieved in space. This *ergodic regions* are proxies for the attention in time. If that were the case, even partially, one
could pinpoint and estimate the maximum attention for emerging news, well before reaching this maximum.


