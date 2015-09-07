---
filename: _posts/blog/2012-07-01-jekyll-pull-requests.md
category: blog
layout: post
title: Jekyll and Pull Requests
tags:
- github
---

When I migrated this site to [Jekyll](http://jekyllrb.com/) I wanted to focus on the content. Any page on this blog is less than 2 clicks away. I´ve been blogging since 2004, so this means I have over 200 pages. While testing the new site I was flabbergasted with the many typos and edits I wanted to correct or complement on **many** of the posts.

Fortunately this new system allows to make hose edits very easily. Even better, it allows **anyone** to send edits. I got the idea from [dfm](https://github.com/dfm/dfm.github.com/blob/master/assets/comments.js), that uses it as a comment system.

I can review or comment on any requested change, and add them extremely easy. Also any change is properly authored in the repository.

That´s what the little button at the bottom of each post does. This ""*Send edit request*"" button is basically a link to a Github [*Pull Request*](https://help.github.com/articles/using-pull-requests).

And this is how it works:<!--more-->

1- When you see a post you want to edit, click on "Send edit request":

{% image button.png %}

2- You need a free account on  [Github](http://www.github.com). If you are a developer you
probably have one, so just login. If not, you can create one in a
breeze. Trust me, you'll use it in the future.

{% image notlogged.png %}

3- Once logged in, only the first time, you need to give
permission to Prose to use your credentials.
[Prose](http://prose.io/about.html) is the awesome
front end to edit files.

{% image Login.png %}

4- You'll start here after your first edit. Editing a file is just one click away. Just type and edit at will.
**Thanks!!!** When you are done, just click "Send patch"

{% image edit.png %}

5- You'll see what you've changed, and you can add a message as a summary of changes, if you want. Just click "Commit".

{% image commit.png %}

Done! You can see and comment on any edit on the [Pull Requests page](https://github.com/brunosan/brunosan.eu/pulls):

{% image pulls.png %}

Isn´t it beautiful?

##The Magic behind##

**The site is made of flat text files**
This site is made in [Jekyll](http://jekyllrb.com/), so everything is a flat text file. What Jekyll does is convert those files into html format ready for your browser.

**The site is a git repository on Github**
The website is actually a [git](http://en.wikipedia.org/wiki/Git_(software) repository. And [Github](www.github.com) is the website where that repository lives, and from where this site is hosted. Among other many things git allows for *asynchronous collaboration*. One can just clone the repository. Git keeps track of the history of changes, and any modification on any clone or the main site can be easily integrated among clones, or the main repository. That means, for example, that I can write my posts offline, and then send my changes once I'm online.

**A Pull request is only a link to a URL**
What a [*Pull Request*](https://help.github.com/articles/using-pull-requests) does is make a clone of the repository of my website. When you make edits you can send them back to the main repository. Since you don´t have permission to change the website (only me), I receive a notification that someone is proposing changes. I can review them, modify them and integrate them.

This functionality is **huge** when developing software, specially open-source software. Anyone can propose edits than are integrated, and all those changes are authored in the history of the repository.

**In my case all I need to do is create that link.**

For example, this post that lives here:

      {{page.url}}

and its filename is:

      {{page.filename}}

therefore the link should be:

  	  https://github.com/brunosan/brunosan.eu/edit/master/_posts/2012-07-01-jekyll-pull-requests.md

Or if I want to use the beautiful [prose](http://developmentseed.org/blog/2012/june/25/prose-a-content-editor-for-github/) interface I use this link:

	http://prose.io/#brunosan/brunosan.eu/master/_posts/2012-07-01-jekyll-pull-requests.md

Now, getting the filename is tricky. Jekyll can write the URL of the page, for example the url above was made via Liquid using
`{ { page.url } }` but there is no built-in variable `{ {
page.filenmae } }`

[Dan Foreman](http://www.twitter/dfm) constructed the filename using the date and title, but filenames can be different from titles. What I did is to create the variable `filename` on the YAML:

  ```yaml
   ---
	layout: post
	title: Jekyll and Pull Requests
	tags:
	- github
	---
  ```

I would hate to need to add this manually, so I made a simple shell script that checks if the filename variable is present, and it adds it if not:

{% gist 3058846 %}

On [my rake file](https://github.com/brunosan/brunosan.eu/blob/master/Rakefile) for deploy I just have a quiet version of this script
before running `jekyll`.

On my `_config.yml` I set up a variable for the link header:
    pullrequesturl: https://github.com/brunosan/brunosan.eu/edit/master/_posts/

Once all these few and easy steps are done, all I have to do then is add this link as a button, and let the magic happen:

    <a id="pull-request-btn" class="btn"
    href="{ { site.pullrequesturl}} { { page.filename}}">

You can see a [list of all my Pull Request](https://github.com/brunosan/brunosan.eu/pulls). Feel free to comment or test it. Just click below!
