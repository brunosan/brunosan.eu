---
filename: 2012-07-23-tapping-on-the-beating-heart-of-kim-kardashian.md
layout: post
title: Tapping on The Beating Heart of Kim Kardashian
published: false
tags:
- data
- mining
- technology
---

This was the title of my first [Data Science DC
Meetup](http://www.meetup.com/Data-Science-DC/events/70123182/). Mike
Dewar, from bitly,
[presented](/Users/brunosan/Downloads/mikedewar-beatingheart-7136ca2/index.html) his work on tracking attention. The
background hypothesis is that attention leads to revenue, and he wants
to meause attention at any time by means of click rates. With bily he has access to **all** clicks on
shortended links.

"[The online presence of] Kim Kardashian is a dynamic input/output system that maps attention onto revenue". More clicks, more attention, more money. 

I found the seminar very interesting. I did make several questions,  but I also left with many more and some ideas. But first a short summary using his slides:

<!--more-->
The problem lies in that the input stream for bit.ly are a click event
(and the metadata, like IP, URL or cookie). Since bitly has a 1 second
resolution for clicks, it looks soemething like this:

{% image clicks-kim.png %}

The core of his work is to convert that stream of deltas (clicks) into a
function, so he can measure the rate of clicks any time. First solution
is to make an histogram.

{% image histogram-kim.png  %}

Problems here are numerous. How to select the bin size? When to start?
Furthermore, since the click stream is higly stochastic, bin sizes
really affect the estimated rates. **Phase and amplitude are ill treated**.

Next on the list would be to smooth the deltas with... a Gaussian
(simple enough):

{% image gaussian.png   %}

Good thing now is that the Gaussian at any point *feels* the clicks much
better. No phase problem, **but** still the amplitude of the Gaussian is
a free parameter, smoothing the signal. but the biggest problem is that
a Gaussian a time *t* needs data before *and* after. Since this problem
is oriented towards a real time measure, a Gaussian forces us to wait at
least a couple of gaussian widths to pick up the incoming tail. If you
make the Gaussian very narrow, you start to pick up a lot of noise. E.g. I
would not go below the standard deviation of the time deltas. 


{% image gaus-kim.png  %}

This when Mike takes out the gamma function. The best property is that
it only spreads in one direction, but it is also nice that one of the
two free parameters can be linked to the lag/resolution of the system.

{% image gamma.png  %}

You still have the lower threshold for noise, but it yields beatiful
results. Good enought for the real part.





###The beating heart

So what happens writes a blog post about having [10 million
likes](http://www.celebuzz.com/2012-07-10/kim-kardashian-thanks-to-all-10-million-of-you/)? She gets a burst of 2 clicks per seconds, which decay quite fast.


{% image kim_attention.png  %}

Cookie moster [video](http://www.youtube.com/watch?v=-qTIGg3I5y8)? 4
times less.


{% image cookie_monster_attn.png  %}

Obama?


{% image obama_attn.png  %}


###Tapping on the beating heart

The beauty of these plots is where  the many dimensions available.
Bit.ly stores this information with each click:

{% highlight sh %}
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

**URL origin**
On the plot above, they are stacks for different URLs. That is,
Kim Kardashian gets most of the attention from one source, and it fades
very quickly. 

Obama´s attention steems on many many sources, with
multiple peaks of all sizes.

**User targeting**


**Dropping clicks**

**Ergodicity of clicks**
I could not help it but wonder if one could find a parameter space where the
ergodic prnciples applies. This would be great since it removes the
depence with time.

Basically the [ergodic principle](http://en.wikipedia.org/wiki/Ergodic_theory)
 sustains that the time average is related to the space average. My
hypothesis is that it might possible to indentify a set of IPs, or
sources where the attention achieved in time (peaks) is related with the
attention ahcieved in space. If that were the case, even partially, one
could pinpoint emerging news before the peak above usual thresholds.


