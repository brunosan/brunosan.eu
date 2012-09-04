---
category: blog
filename: 2012-07-15-Next-steps-in-Open-Data.md
layout: post
tags:
- Science
title: Next Steps in Open Data
---
Last week DC hosted the [Open Government Data
Conference](http://www.data.gov/communities/conference), the
[Tech@State](http://tech.state.gov/profiles/blogs/tech-state-wiki-gov-agenda), the
[Wikimania](http://wikimania2012.wikimedia.org/wiki/Main_Page), and [more](http://developmentseed.org/blog/2012/july/09/week-dc-tech/). It seems clear
the momentum here for open data and Technology innovation is growing strong.

While you can read plenty of good reviews from these events I feel some
important points regarding Open Data of *where the ball is going* are left amidst the background of *where the ball is*:

* Don´t be ashamed of the knowns unknowns.
* Open Data from the inside out, and at home.
* Standards, standards, standards.
* The challenge of non publicly funded open data.
* Hackathons and competitions can backslash on you.

<!--more-->
###Don´t be ashamed of the knowns unknowns###

With Open Data, anyone can quickly learn how much we know about the
topic of the data. How much... or little you actually know. In fact, this means you can
easily pinpoint gaps in data, gaps in knowledge. This *half empty* view
is also important. Yet, if you advocate to Open your Data, focusing on
the half empty won´t really help you. The traditional view is better
not to know we don´t know.

When we participated in Apps for Development, our initial idea was an
app to precisely pinpoint these gaps in data, and we call the idea
*GapFinder*. We wanted to know the known unknowns. And, tapping on 
that resource, try to interpolate those gaps
and, perhaps, enable crowd sourcing the gaps, or the accuracy of the estimates. I was
particularly excited about this idea for an app. However, we thought the Bank would
probably want to focus on the *half full* side of the Data Repository,
so we made ["Know your World"](http://www.quiz2015.com/) which pulls available data.
When the voting started, I chuckled when I saw the [Blind Data](http://appsfordevelopment.challengepost.com/submissions/1525-blind-data) app from
[@TheBenedict](https://twitter.com/thebenedict) with a similar idea to *GapFinder*. He was not among the finalists.

This is why I was so glad when Caroline Anstey, Managing Director of the World Bank [talked
explicitly about the Blind Data app](http://www.worldbank.org/en/news/2012/07/10/second-international-open-government-data-conference) on her Opening Keynote:

>I’d also like to think we’re just as open about what we don’t know. One
>of the first apps a developer created when we started our Open Data
>Initiative in April 2010 is called “Blind Data”- it shows the gaps in
>coverage of our various development data. **We have to be honest about
>those gaps. Showing them clearly, creates an incentive to fill them.**

The know unknowns are huge resource, use them.

### Open Data from the inside out, and at home ###

When a big entity like a government, the World Bank
or USAID engages into Open Data not only helps externally by
providing information to the world of what are they doing, but it
actually enables them to internally know what are they doing, when, where, for how
much. To quote the exact phrase "We know how much we spent, but we don´t
know what actually happens with it". 

Open Data should not be implemented as a
overarching layer that receives information for external use, but as an 
integral internal operational framework.

Laia Grino, with her post ["Will NGOs Join The Open Data
Movement?"](http://www.interaction.org/blog/will-ngos-join-open-data-movement), brings a closely related point. NGOs are keen to call upon opening the vast archives of data from governments and public sector. Yet, the NGO landscape is in general fairly close itself on its operations, financials, ... Compliance law and grantee requirements push for more openness, but these are usually enclosed in formats such as annual pdf reports. Open Data is not only about releasing data, is about doing it in a re-usable way.   

Open Data is for everyone: open AND usable.

### Standards, standards, standards###

The most common entry barrier to actually work with available data are
formats. Virtually each and every data provider decides their own
format, definitions and structure to release their data.

* When does the Year start? Is it Tax Year, Natural Year, Financial Year,
...
* Which units? from which country? According to which borders when?
* Is it xml, xls, csv, db, ...?
* API based? Released by year? by topic? All data bundled on a big file?
* How do I register changes?
* 1.000,5 or 1000.5?
* Machine readable or human readable?
* Do I source where I took it from, or where it actually originates?
* Where to place the definitions of the terms I use? Which language?
* Is it Russian or Chinese? (Luckily the whole world uses Arabic numbers and
  decimal systems.)
* ...

When Gain developed our Index I was keen to use python, R o any
reasonable tool. The fact is that most Economist and development 
partitioners use Excel, some VBA. I had to learn it from scracth. Being
a 2D framework is painfully cumbersome to deal with, not to mention
the VBA inconsistencies and the fact that probably 70% of the code is
overhead dealing with files, errors, declarations and not the actual
conceptual operations. I´m positive our code would be 10 times faster,
shorter and clearer in i.e. Ruby or Python with a proper database. 

We need to use open clear formats, or at least a standard way to specify the format so we can convert them. And we need to stop using Excel, please.


### The challenge of non publicly funded open data###

Overhead at IOGDC:
>"Data is a public good, for the public good"


Yes, data should be a public good, so that anyone can leverage on it. The
challenge is that data gathering is usually an expensive endeavor. On
top of expensive, data itself is the core asset for many business models.

The cost of data is lowering, but it still needs heavy funds for
gathering, mining and maintaining. Typically
a public sector entity (govs, international agencies) will fund these
efforts. Thus, opening data paid with taxes for the public good 
whenever possible makes much sense. 

The challenge is then for the private sector who also collects and
uses data, to open their archives. Doing so their competitive advantage
will disappear. Is there a case for them to join Open Data? Most sessions at IOGDC
had private sector involvement, but none raised this issue. 

There are many good examples of private sector led Open Data and Open
source, but they are not common, neither leading the norm. Some release
part of the data, some provide services to work with the data they give free,
some temporarily embargo the latest batch... 

If "data belongs to itself" who pays for creating it?


###Hackathons can backslash on you###

Unless one pays close attention, these events meant to grow the
development ecosystem, can actually shrink it. Participating on such
events involves very intense sessions brainstorming, coding and testing your
apps. The *first tier* of apps, the winners, are obviously incentives to continue and rewarded for
their efforts. But, I argue, it´s the *second tier* where you should
focus. Those developers that made very good products but you could not
reward them. They have invested a lot of time and energy, they have
learned a great deal, and now they walk away. They are the untapped
resource that can make the difference.

When we got to be finalists for *Apps for Development* with [Know your
World](#) I wondered about this a lot. Our participation was purely for
fun, but I know many other participants invested much time and hopes. I
contacted a few months later. Many said they were less likely to
participate again on similar competitions. Why? The bitterness of too
much completely unrewarded effort.

At IOGDC one of the panelists shared one possible solution. Enforce, as
a requirement for participation, to include a business model around any
app. This completely changes the environment. One can still reward the
best, but also showcase this *second tier* to help them get traction.
If you really believe your app is good, the competition helps you kick start it,
and you can continue without them.

My point is that [Good](http://hackdaymanifesto.com/) Hackthons and Challenges are not about the prizes or
the apps, they are about growing the community, and that should be the
focus, not the prizes.

