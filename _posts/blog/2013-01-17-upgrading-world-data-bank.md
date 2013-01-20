---
filename: _posts/blog/2013-01-17-upgrading-world-data-bank.md
layout: post
category: blog
title: Upgrading the World Data Bank
published: true
tags:
- world bank
- open data
- data 
---


The [Open Data Catalog at the World Bank](http://data.worldbank.org/) is a fantastic resource. I´ve
used it many, many times. Specially while developing the [GAIN
Index](http://index.gain.org). I´m sure I´ve spent hours on that domain. It´s astonishing the amount of information
they´ve gathered on a consistent way.

Our Gain Index indeed uses, and references roughly 80% of it´s
components directly back to the Catalog. Oddly, I ended up (and a number
of people have told so as well) using *our* page to get a glimpse of the data
for a particular country. As humbling as that is, it´s odd that our page
gets visits to see the components, not the aggregation we do for our
purposes. It´s like buying a book for the Bibliography.

Last Thursday the data team posted a [call for input](http://blogs.worldbank.org/opendata/the-future-of-the-open-data-catalog). They are upgrading the 
Catalog to be "more technologically capable, but also more user friendly, readable and
understandable". On their summary of the proposition they highlight: Search, Federation, 
user friendliness, better metadata, and scalable. 


<!--more-->

###SPEED###

The Catalog must be *fast*. And I can propose a concrete benchmark:  
Faster than using the traditional sets of Excel files many people
use. That´s the inertia from part of they target users. Why would I
prefer to fire up the website every time If I can download the whole thing to my
disk? This is specially important if you don´t have a fast connection,
like it happens in many parts of the world.

* Avoid full page reloads. A substantial percentage of the page will
  be the same, and it will not have the content I am looking for (
navigation links, legal/institutional notices, ...). Having light overheads of headers and
technologies like AJAX could help with this.

* Transfer to the client browser as much as possible. Browsers can do
  amazing things, not just painting server states. Either using
things like node.js or via other options, it could speed things up
significantly. Also, the less the servers do, the more the IT and security
guys at the Bank will like it. Back when I worked inside the Department
of Defense, Javascript was golden, and PHP was evil.

* Asynchronous calls. Avoid linearity. This is related to avoiding full
  page reloads if I, e.g., want to add a country to a plot, or I´ve
requested more info on a particular data point. 

All these points are actually related to make the Catalog feel less like 
a website and more like an app.

###As flat as possible###

This is also related with speed. Minimize the *clicks-to-target*. 
The distance from the front page to  any piece of information should less 
than say three clicks, or two. Same for the most common cases like i.e. showing 
the world´s GDP compared to x and y country.

###Low friction for basic users###

If journalists and general citizens are target groups, I believe having a
simple visual landing page is very important. Something they might be
used to. Something like a Google Search style. Faceted searches are good
for experts but intimidating if you don´t know the answer to all options
presented. And they occupy **a lot** of space on the screen.

<table>
<tr>
<td width="40%">{% image data-catalog.png   %}</td>
<td width="60%">{% image Gain-frontpage.png   %}</td>
</tr>
</table>


I also love maps, interactive maps. Personally, and this is the way I´m
leading the upgrade of GAIN, a simple interactive map like GAIN and then
adding search fields like Google (or Wolfram Alpha). 
Procrastinating folks can navigate the map slipping towards deeper
levels of detail. The search box, small but prominent, gives you access
to everything. Coupling it with some predictive/popular suggestion
could be very powerful to allow *one click* links to queries like:

* GDP of the World, and Spain and Sub-Saharian countries.
* Top 10 countries by Population.
* What measures and years aer available for Nuaru since 2000?

###Feedback###

Over the course of these 2 years working with the Catalog I´ve found
around around 50 cases of small bugs, missing explanations or unexpected
behaviours. The feedback channel, an email, is very opaque to the rest of
the users. Certainly the answer has been always positive and every email
I´ve sent was replied. Even when I tweeted about it, like when I found
out that apparently 99% of the nurses in Netherlands had been fired:

<blockquote class="twitter-tweet"
data-in-reply-to="230719792498225153"><p>Thanks for the Netherlands
Nurses find @<a href="https://twitter.com/brunosan">brunosan</a> - I'll
take a look! The source data from the WHO looks the same, so we can ask
them too :-)</p>&mdash; Tariq Khokhar (@tkb) <a
href="https://twitter.com/tkb/status/230746382896599042"
data-datetime="2012-08-01T19:26:39+00:00">August 1,
2012</a></blockquote>
<script async src="//platform.twitter.com/widgets.js"
charset="utf-8"></script>
...
<blockquote class="twitter-tweet"
data-in-reply-to="230754684065955840"
><p>@<a
href="https://twitter.com/brunosan">brunosan</a> Bizarre. That or maybe
they only divided the midwives and not midwives + nurses. Will pass it
on - thanks again!</p>&mdash; Tariq Khokhar (@tkb) <a
href="https://twitter.com/tkb/status/230755868185083904"
data-datetime="2012-08-01T20:04:20+00:00">August 1,
2012</a></blockquote>
<script async src="//platform.twitter.com/widgets.js"
charset="utf-8"></script>


It would be great If you could *flag* data, or measures, and leave
feedback, or request. Other users could reply, or vote, raising prominence to the
issue. I can see how this could also pressure the original sources of the
data which on many causes are also the root of the issue, like the
example above with the nurses data.

Fixing identified issues with the data is specially important if you intend to use
the data directly via APIs. Otherwise, you need extra steps to *fix*
those issues.

###Towards organic resolution ###

This is a big one I´m also struggling. Most of the available data is at
the national level. There are many reasons for that, from feasibility
and gathering constrains, to pragmatism to the scale most users wanted.
Nowadays it´s increasingly easy to get data, but also we demand more
granularity. For some Indicators national scale makes sense, like fiscal
policies, but for many other the higher the resolution the better. For
example access to energy at the national level is important to
prioritize in the global context, but knowing on which region to focus
is equally relevant. This is specially the case for big heterogeneous
countries, like India, China, Russia, USA ... 

What I'm proposing, and is the direction I´m planning to develop
at GAIN, is a *organic resolution* protocol: 

* There is a background
database with all available measures, at all available resolutions, as
a network of nodes with plenty relations among them based on geography, economy,
culture, correlations, ... 

* If the user request one of them, it´s instantly served. 

* Sometimes one might need aggregates of available data, like for example all countries
from LAC, or spanish speaking, or cities inside this watershed. The interface then requests than job and
it´s served aggregated as the median or envelope values (this can probably be also done at the client level via
Javascript).
* Sometimes the data is simply not available, and then some
working assumptions could be suggested like based on geographical
neighbours, similar countries in other correlated measures, temporal
extrapolations ... In these cases probably more computation is needed,
specially to provide some envelope of possible estimates.



###Open the Source###

Just like the White House [releases](http://www.whitehouse.gov/developers)
 much of the web tools they developed,
the World Banks could do that. Even more, more than releasing, engaging
in a conversation with the community e.g. [using github](https://github.com/WhiteHouse): aggregating forks, issues, pull
requests...

<hr>

The data portal is a **fantastic** tool for both researchers and casual
users. It´s already well ahead of the curve. But there is much more it
could be done, no only to improve the portal and consumption of data, but
also to spread best uses and help others catch up on their online
resources.

Back in April 2010, the former President of the World Bank, Robert Zoellick, [said](http://blogs.worldbank.org/opendata/open-data-at-the-world-bank-2-years-old-today):
 
    "It's important to make the data and knowledge of the World Bank
    available to everyone. Statistics tell the story of people in developing
    and emerging countries and can play an important part in helping to
    overcome poverty."

or as an american told me:

    "In God we trust... but everyone else bring data"
