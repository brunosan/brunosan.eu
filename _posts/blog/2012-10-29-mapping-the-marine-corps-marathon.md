---
filename: _posts/blog/2012-10-29-mapping-the-marine-corps-marathon.md
category: blog
layout: post
title: Mapping the Marine Corps Marathon
published: false
tags:
- 
---

[Map]

Last week I ran my first Marathon, the 2012 [Marine Corps Marathon](http://www.marinemarathon.com/). It was my first marathon and it was a **great experience**. I did it 3h54m17s, much better than I expected. To get to that point I trained hard, I researched it, and I geeked with the data. I want to talk about that.
<!--more-->


I can proudly say that the marathon was a challenge, but not a suffering. I did the last mile with a smile on my face and a strong 15 seconds full sprint to the finish line. Two days later I barely have soreness in the legs, my toe nails are intact, no blisters, injuries or particular pain. I base this success in 3 things: Stride, Fitness, Nutrition, Motivation.

###1. Stride

"Every year as many as eighty percent of runners suffer an injury that will keep them off the streets for a month", quotes [Christopher McDougall](http://www.amazon.com/Born-Run-Hidden-Superathletes-Greatest/dp/0307279189). It does't make much sense to me. Running should be natural, why do we get so many injuries? These kind of thoughts lead me to try cold turkey the Vibram [Fivefingers](http://www.vibramfivefingers.com/index.htm). I read a couple of articles, I followed a couple of thread and that was enough for me to try the **front food landing stride**

{% image MCM-stride.png %}

###2. Fitness


###3. Nutrition


###4. Motivation

##How I got the data

The official website lists the results up to 100 per page, but it won´t allow to download it or get all the pages. Thankfully, just hacking the URL you can request the first 10.000 results for the first page. It takes a bit, but it loads a huge table with all the data.

To convert the HTML table into workable data, I tried several ways, and ended up just selecting all the text in the page via "Select All", "Copy" and then paste it on an Excel Workbook. It takes a minute or so, but it works. Just clean the extra lines and columns, and save it as a csv file. From the 34 Mb of the html or Excel, we go down to a 4Mb csv file.

I then used Google Refine to clean the data. With the *Clustering* option you can fix misspelled Location names, and join "City" with "State" for example. One important step for later is the **Geocoding** of the "City, State" column. As described on this post, you can use Yahoo API to request the (latitude,longitude) for any location.

Make the new column based on URL Fetch, and use the YAHOO geocode Yahoo API:

    http://where.yahooapis.com/geocode?q=" + value.replace(/\s+/, " ") + "&appid=[appID]

Then parse the extra column to get the (latitude,longitude) tuples:

    forEach(value.split("<Result>"), v,v.partition("<latitude>")[2].partition("</latitude>")[0] +", "+v.partition("<longitude>")[2].partition("</longitude>")[0])[1]

You can now export the data again as csv for python or TileMill.

Btw, to import the data in Python I used:
    import csv
	runner=[]
	f = open('MCM.csv''', 'rt')
	try:
	    reader = csv.DictReader(f)
	    for row in reader:
	        runner.append(row)
	finally:
	    f.close()

	
{% image histo_Excess_time_gender copy.png %}
{% image histo_Excess_time_gender.png %}
{% image histo_gender_2.png %}
{% image histo_gender.png %}
{% image histo_time_gender_2.png %}
{% image histo_time_gender.png %}
{% image scatter-4.png %}
{% image scatter.png %}
