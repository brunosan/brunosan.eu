---
layout: post
tags:
- github
---
When I migrated this site to [Jekyll](http://jekyllrb.com/) I wanted to focus on the content. Any page on this blog is less than 2 clicks away. I´ve been blogging since 2004, so this means I have over 200 pages. While testing the new site I was flabbergasted with the many typos and edits I wanted to correct or complement on **many** of the posts.

Fortunately this new system allows to send those edits very easily. I can review or comment on them, and add them extremely easy. That´s what the little button at the bottom of each post does. This ""*Send edit request*"" button is basically a link to a Github [*Pull Request*](https://help.github.com/articles/using-pull-requests).

And this is how it works:<!--more--> 

This site is made in [Jekyll](http://jekyllrb.com/), so everything is a flat text file. What Jekyll does is convert those files into html format ready for your browser.

The website is actually a [git](http://en.wikipedia.org/wiki/Git_(software) repository. And [Github](www.github.com) is the website where that repository lives, and from where this site is hosted. Among other many things git allows for *asynchronous collaboration*. One can just clone the repository. Git keeps track of the history of changes, and any modification on any clone or the main site can be easily integrated among clones, or the main repository. That means, for example, that I can write my posts offline, and then send my changes once I'm online.

What a [*Pull Request*](https://help.github.com/articles/using-pull-requests) does is make a clone of the repository of my website. When you make edits you can send them back to the main repository. Since you don´t have permission to change the website (only me), I receive a notification that someone is proposing changes. I can review them, modify them and integrate them.

This functionality is **huge** when developing software, specially open-source software. Anyone can propose edits than are integrated, and all those changes are authored in the history of the repository.

I use a little .js to create a button to the edit link of the particular *_post* file on my Github repository. This allows anyone with a  (free) Github account to send comments, fix typos, complement posts and any other edit. 

You can see a [list of all my Pull Request](https://github.com/brunosan/brunosan.eu/pulls). Feel free to comment or test it. Just click below!