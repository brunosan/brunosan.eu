---
filename: 2012-07-01-jekyll-pull-requests.md
layout: post
title: Jekyll and Pull Requests
tags:
- github
---
When I migrated this site to [Jekyll](http://jekyllrb.com/) I wanted to focus on the content. Any page on this blog is less than 2 clicks away. I´ve been blogging since 2004, so this means I have over 200 pages. While testing the new site I was flabbergasted with the many typos and edits I wanted to correct or complement on **many** of the posts.

Fortunately this new system allows to send those edits very easily. I got the idea from [dfm](https://github.com/dfm/dfm.github.com/blob/master/assets/comments.js), that uses it as a comment system. I can review or comment on them, and add them extremely easy. That´s what the little button at the bottom of each post does. This ""*Send edit request*"" button is basically a link to a Github [*Pull Request*](https://help.github.com/articles/using-pull-requests).

And this is how it works:<!--more--> 

**The site is made of flat text files**
This site is made in [Jekyll](http://jekyllrb.com/), so everything is a flat text file. What Jekyll does is convert those files into html format ready for your browser.

**The site is a git repository on Github**
The website is actually a [git](http://en.wikipedia.org/wiki/Git_(software) repository. And [Github](www.github.com) is the website where that repository lives, and from where this site is hosted. Among other many things git allows for *asynchronous collaboration*. One can just clone the repository. Git keeps track of the history of changes, and any modification on any clone or the main site can be easily integrated among clones, or the main repository. That means, for example, that I can write my posts offline, and then send my changes once I'm online.

**A Pull request is only a link to a URL**
What a [*Pull Request*](https://help.github.com/articles/using-pull-requests) does is make a clone of the repository of my website. When you make edits you can send them back to the main repository. Since you don´t have permission to change the website (only me), I receive a notification that someone is proposing changes. I can review them, modify them and integrate them.

This functionality is **huge** when developing software, specially open-source software. Anyone can propose edits than are integrated, and all those changes are authored in the history of the repository.

In my case all I need to do is create that link.

For example, this post that lives here:
    {{page.url}}
and its filename is:
	2012-07-01-jekyll-pull-requests.md
therefore the link should be:
	https://github.com/brunosan/brunosan.eu/edit/master/_posts/2012-07-01-jekyll-pull-requests.md
or if I use [prose](http://developmentseed.org/blog/2012/june/25/prose-a-content-editor-for-github/) [at the moment prose does not allow pull request via url link]:
	http://prose.io/#brunosan/brunosan.eu/master/_posts/2012-07-01-jekyll-pull-requests.md
	
Getting the filename is tricky. [Dan Foreman](http://www.twitter/dfm) constructed the filename using the date and title, but filenames can be different from titles. What I did is to create the variable `filename` on the YAML:
	---
	filename: 2012-07-01-jekyll-pull-requests.md
	layout: post
	title: Jekyll and Pull Requests
	tags:
	- github
	---

I would hate to need to add this manually, so I made a simple shell script that checks if the filename variable is present, and it adds it if not:

{% gist 3058846 %}
	

The last piece is the [little JavaScript](https://github.com/brunosan/brunosan.eu/blob/master/js/pull-request.js) that opens the URL.
 **Update**: Now that I think about it, I don´t need this last .js. I could just place the link directly. One day...


You can see a [list of all my Pull Request](https://github.com/brunosan/brunosan.eu/pulls). Feel free to comment or test it. Just click below!
