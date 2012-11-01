---
category: blog
layout: post
title: Running a marathon
published: false
tags:
- 
---

[Map]

Last week I ran my first Marathon, the 2012 [Marine Corps Marathon](http://www.marinemarathon.com/). It was my first marathon and it was a **great experience**. I did it 3h54m17s, much better than I expected. To get to that point I trained hard, I changed my diet and my stride, I read papers on strategies, and I *geeked* with the data. I want to talk about all that.
<!--more-->


I can proudly say that the marathon was a challenge, but not a suffering. I did the last mile with a smile on my face and a strong 15 seconds full sprint to the finish line. Two days later I barely have soreness in the legs, and none of the [usual problems](http://walking.about.com/od/marathontraining/tp/marathoninjury.htm): my toe nails are intact, no blisters, injuries, chaffing or particular pain. I base this success in 4 things: Stride, Fitness, Nutrition, Motivation.

###1. Stride

"Every year as many as eighty percent of runners suffer an injury that will keep them off the streets for a month", quotes [Christopher McDougall](http://www.amazon.com/Born-Run-Hidden-Superathletes-Greatest/dp/0307279189). It does't make much sense to me. Running should be natural, why do we get so many injuries? These kind of thoughts lead me to try cold turkey the Vibram [Fivefingers](http://www.vibramfivefingers.com/index.htm). I read a couple of articles, I followed a couple of thread and that was enough for me to try the **front food landing stride**

{% image MCM-stride.png %}

###2. Fitness


###3. Nutrition


###4. Motivation

Probably the first you learn when you train for a marathon is that *commitment* is a big part of it. The training will predate over your life. No going out or drink the night before a long run, the long run will make you wake up early on the weekends and will keep you busy at least half a day. You need to watch what you it, not to get injured, what to wear, ... My life during the last month or so was pretty much running, sleeping and working. 

You really need motivation specially on the first days. Running 40 minutes can get very long those early days. But as you train more and more, you start to enjoy and look forward that feeling of achievement and fitness at the end of the race. After a while, the running itself becomes the reward and, believe me, you really enjoy running. You stop thinking about the time and the steps and you get lost in your thoughts, the music you hear, the nature around you.

What really worked for me those early days was the music I was playing via Pandora, and the **mapping**. I was mapping every race with [RunKeeper](http://www.runkeeper.com), and knowing I was going to be able to monitor the track, the speed or the heart rate was a motivation on itself. I even made plans to make tracks of particular paths or shapes, like running the borders of the DC rhomboid. During the long runs I would post the live link so that friends or facility could track it in real time. Knowing someone following my run made me push harder. This is the map of the training runs:

[MAP runs]

##How I got the data

**Scrapping the data**

The official website lists the results up to 100 per page, but it won´t allow to download it or get all the pages. Thankfully, just hacking the URL you can request "the first 50.000 results" for the first page. It takes a bit, but it loads a huge table with all the data.

**Converting the table into csv**

To convert the HTML table into workable data, I tried several ways, and ended up just selecting all the text in the page via "Select All", "Copy" and then paste it on an Excel Workbook. It takes a minute or so, but it works. Just clean the extra lines and columns, and save it as a csv file. From the 34 Mb of the html or Excel, we go down to a 4 Mb csv file.

**Cleaning and geocoding**

I then used Google Refine to clean the data. In particular I did some *Clustering* to fix misspelled Location names, like "Alexxandria". I also joined the "City" with "State" so that the geolocation would work better. One important step for later is the **Geocoding** of the "City, State" column. As mentioned on [this post](http://mapbox.com/geo-for-google-docs/), you can use [Yahoo API](http://developer.yahoo.com/geo/placefinder/) to request the (latitude,longitude) for any location.

To geocode your locations on Google Refine, you need to make a new column based on the Location column using the *URL Fetch*, and use the YAHOO geocode Yahoo API:

{% image new-column.png %}

    http://where.yahooapis.com/geocode?q=" + value.replace(/\s+/, " ") + "&appid=[appID]

I minimized the milliseconds of throttling to 1 and still it took a good 15 minutes. Then parse the extra column to get the (latitude,longitude) tuples:

    forEach(value.split("<Result>"), v,v.partition("<latitude>")[2].partition("</latitude>")[0] +", "+v.partition("<longitude>")[2].partition("</longitude>")[0])[1]

Then just export the data  as csv for the next step, python [or TileMill if you want to just map the people].

**Mining the data with Python**

To import the data in Python I used:
    import csv
	runner=[]
	f = open('MCM.csv', 'rt')
	try:
	    reader = csv.DictReader(f)
	    for row in reader:
	        runner.append(row)
	finally:
	    f.close()

With this I can get some insights on the Marathon:
* X people finsihed the marathon.
* X people dropped after crossing the first tracking milestone at XK.
* X% Men, and X% women.
* The most common runner was a male X years old, from Washington, finishing in XhXmXs.
	
{% image histo_Excess_time_gender copy.png %}
{% image histo_Excess_time_gender.png %}
{% image histo_gender_2.png %}
{% image histo_gender.png %}
{% image histo_time_gender_2.png %}
{% image histo_time_gender.png %}
{% image scatter-4.png %}
{% image scatter.png %}

**Mapping the clusters of runners**