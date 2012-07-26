--- 
filename: 2012-05-18-case-study-for-an-invitation-system-using-google-apps-script.md
layout: post
status: publish
published: true
type: post
tags: 
- Science
title: Case Study for an Invitation System using Google Apps Script.
---
<a href="/media/screen-shot-2012-05-18-at-5-38-35-pm.png"><img class="aligncenter size-full wp-image-2417" title="Screen Shot 2012-05-18 at 5.38.35 PM" src="/media/screen-shot-2012-05-18-at-5-38-35-pm.png" width="100%"/></a></p>

Earlier this month my NGO (<a href="http://gain.org">GAIN</a>) had its <a href="http://gain.org/annual-meeting-2012">annual meeting</a>. Around 200 participants, which includes several presidents, CEOs, ambassadors and representatives of the World Bank, OAS, and more than 100 companies. The invitation list to the reception had more than 1.000 names.</p>
<p style="text-align:justify;">I built the Invitation system almost from scratch using <a href="https://developers.google.com/apps-script/">Google Apps Script</a> (GAS), and I want to share the experience. The decision to engage on this was partly becasue I had the chance to participate on a free and open event about GAS for developers at the Google Washington DC offices (<a href="https://plus.google.com/111752662319997528493/posts/bq7NrttcWAb">thank you</a>!).</p>
My goal was to follow these premises:

* Make it as simple as possible, <strong>for both sides</strong>.
* <strong>Do not ask any information you know</strong>. I hate filling up my name, over and over again, when they should already know it! And learn from the corrections people do on their info.
* Send short, simple and <strong>personalized</strong>, messages.
* <strong>Automate</strong>, as much as possible.


<!--more-->I do have coding experience, but not in GAS or javascript. I estimate it was, overall, around 3 full days of coding. I did not start from a blank sheet, I used <a href="https://developers.google.com/apps-script/articles/expense_report_approval">this script</a> as my starting point. This is hardly a re-usable script as-is, but I hope it can help others build upon it. The whole GAS code is <a href="https://github.com/brunosan/Invitation-System">here</a>, and a template of the Spreadsheet is <a href="https://docs.google.com/spreadsheet/ccc?key=0AtlF0LGs5PVVdFJ3Y19wNnIydnNtb05HSkgzUEFYbGc">here</a>.

<h2 style="text-align:justify;">The Master List</h2>
<p style="text-align:justify;">A Google Docs Spreadsheet with the list of people:</p>

<ul style="text-align:justify;">
<ul>
	<li><strong>Personal Info</strong>: Name, Email, Company, Group (invited to all sessions or only reception). [Tip: GAS MailApp allows comma separated emails, so you can send it to the person AND their assistant.]</li>
	<li><strong>Token</strong>: This is an identification number used to match each person with their reply. I used this Spreadsheet formula to generate it:</li>
</ul>
</ul>
{% gist https://gist.github.com/2727042 %}
<ul style="text-align:justify;">
	<li>A List of the Sessions to place the <em>Confirmed</em>/<em>Declined</em>, and their comments (e.g. vegetarian)</li>
	<li>I had to add later on few other columns to put things like Badge Name (via a formula), Comments...</li>
</ul>
<p style="text-align:justify;"><a href="/media/screen-shot-2012-05-18-at-2-50-43-pm.png"><img class="aligncenter size-full wp-image-2406" title="Screen Shot 2012-05-18 at 2.50.43 PM" src="/media/screen-shot-2012-05-18-at-2-50-43-pm.png" alt=""  width="100%" /></a></p>

<h2 style="text-align:justify;"></h2>
<h2 style="text-align:justify;">Managing the invitations</h2>
<p style="text-align:justify;">The main loop is:</p>

<ol style="text-align:justify;">
	<li>For every person, send them an email if the have "Go" Status, then set to "Emailed".  Choose the right template for each group.</li>
	<li>If "Emailed", check for replies and set to "Received".</li>
	<li>If "Received" check for new replies. (I ended up removing this to a separate function)</li>
</ol>
{% gist https://gist.github.com/2727107 %}
<p style="text-align:justify;">To send the invitations, I chose the template depending on the Group, which is then basically a call to <em>MailApp </em>with a HTML email body hard-coded<em>.</em></p>
{% gist https://gist.github.com/2727146 %}
<p style="text-align:justify;">The interesting bit is the <em>construct_URL </em>function. We made a reply questionnaire using Google Forms, where we write the rough agenda and we ask if you can join us.</p>
<p style="text-align:justify;">We actually made two Google Forms, one for each group with its questions to the appropriate sessions. Instead of just adding the link to the email, <strong>I used the URL to pass along personalized pre-populated information</strong> to the form. That saves time to the person (we already know his name, and also allows us to place the Token on the last field to identify the answer). [btw Non ASCII characters like accents, can break on IE]</p>
<p style="text-align:justify;"><a href="/media/20120518-tuene3ea161sej1p3cbe8i1is3.jpeg"><img class="aligncenter size-full wp-image-2424" title="20120518-tuene3ea161sej1p3cbe8i1is3" src="/media/20120518-tuene3ea161sej1p3cbe8i1is3.jpeg" alt="" width="100%" /></a></p>
<p style="text-align:justify;">This is the simple code to make a personalized URL like <a href="https://docs.google.com/spreadsheet/viewform?formkey=dHFWZllkZWluU2ZEbFU0X0FZaFZJZHc6MQ&amp;entry_6=Dr.&amp;entry_0=Bruno&amp;entry_7=S%C3%A1nchez-Andrade%20Nu%C3%B1o&amp;entry_8=Global%20Adaptation%20Institute&amp;entry_9=Director%20for%20Science%20and%20Technology&amp;entry_5=t200w167">this one</a>.</p>
{% gist https://gist.github.com/2727214 %}
<p style="text-align:justify;">Now the answers are registered in another Google Spreadsheet. To check for those answers, you just need to process that Sheet looking for Tokens to match the reply with the person (they might have changed their name or other info):</p>
{% gist https://gist.github.com/2727230 %}
<p style="text-align:justify;">The actual Processing of the information is then just placing the answers from the response form into the appropriate row in the Master List. You just need to code a single reply and iterate to each. Also the special cases Yes/No to all. Making the loop for all matching Token makes sure that the last Reply is the one remaining, in case they submitted more than once.</p>
<p style="text-align:justify;">The nice thing is that now we can carry back all modifications to their info back to the Master List. If we misspelled their name, or they changed Position, they will likely correct that in the form, and this little code will flag that in green for you. So next time the code uses that information for other emails, badges, or other events, <strong>their information will be updated, by them</strong> (I found this to be the case in 5% of the cells).</p>
{% gist https://gist.github.com/2727260 %}
<p style="text-align:justify;">A few days before the event you can send a reminder to those attending to at least one session, with a confirmation of their reply, so they can update it if there has been changes. You can also add some attachments with more info:</p>
{% gist https://gist.github.com/2727288 %}
<p style="text-align:justify;">[We used a very similar IF condition to print the badges for everyone coming to at least one session]</p>

<h2 style="text-align:justify;">Media Consent Forms</h2>
<p style="text-align:justify;">We also prepared a document to allow us to take pictures of the participants during the event. Again, I would hate to make them write their name, If I already know it. All we did was upload to Consent document to a Google Docs, and personalize it:</p>
{% gist https://gist.github.com/2727302 %}
<p style="text-align:justify;">Unfortunately, there is not Print option inside GAS, so you need to search on your Google Docs for the common part of the Title of all those consent forms. Then batch download them as a zip file ("Select all" then "Download"). Once in your computer, just drop them to the printer icon.</p>

<h2 style="text-align:justify;">Managing the Information</h2>
<p style="text-align:justify;">Once you have all the Information in the Master List, is quite easy to manage many parts of the event</p>
<p style="text-align:justify;"><strong>Badges</strong>: Very similar code to the Consent Forms to print the Names and Companies.</p>
<p style="text-align:justify;"><strong>Securing the Info</strong>: The Google Docs should not be shared with anyone, only the people inside your team, and only editable to a few. I was really afraid of changes in the Master List, so used to option to set different access right to individual sheets. You can also use the GAS <em>onOpen </em>function and     
	    SpreadsheetApp.getActiveSpreadsheet().addMenu("Annual Meeting", menuEntries) 
to add an extra menu, only to particular users.</p>
<p style="text-align:justify;"><img class="alignnone" title="security" src="https://img.skitch.com/20120518-ejxaiyufmy1gy9yu71mfat1t9t.jpg" alt=""  width="100%" /></p>
<p style="text-align:justify;"><strong>Dealing with "Manuals"</strong>: There will always be cases when they reply via a phone, or you need to update the reply. Since this system relies upon keywords in the "Status" column you only need to set it to something else than the chosen ones to track manual instances. For example set it to "Manual" and add the "Confirmed" replies on the appropriate Field. You can also put any other Status, and you will be able to track it on the Status Sheet ( i.e. How many "Missing Email" we have?)</p>

<h2 style="text-align:justify;">Tracking Participation</h2>
<p style="text-align:justify;">Having all the information in one placed and updated in almost real time, allows to easily track the progress, with only a few Google Spreadsheet Formulas:</p>
<p style="text-align:justify;"><a href="/media/screen-shot-2012-05-18-at-4-26-46-pm.png"><img class="aligncenter size-full wp-image-2410" title="Screen Shot 2012-05-18 at 4.26.46 PM" src="/media/screen-shot-2012-05-18-at-4-26-46-pm.png" alt=""  width="100%" /></a></p>
<p style="text-align:justify;">Count number of Confirmation for a particular Session:
    `=COUNTIF('Master list'!K:K,"Confirmed")`
Count the total number of Replies:
    `=COUNTIF('Master list'!J:J,"Replied")`
<p style="text-align:justify;">You can even prepare a Participation list for each Session, with Names, Titles, ... Very useful for example to order lunch and spot vegetarians. This is the formula to pull out a sorted list:</p>
{% gist https://gist.github.com/2727461 %}
<h2 style="text-align:justify;">Tracking Feedback</h2>
<p style="text-align:justify;">After the event, we can update the actual participation, and send a personalized Thank You note, and include a quick Feedback Questionnaire.</p>

<h2 style="text-align:justify;">Summary</h2>
<p style="text-align:justify;">It was actually fun to code this system. It is the first time I use GAS, or even code in Javascript, and it turned out to be very fun. The debugging options are very useful, specially since I was developing on-demand, so I made sure to place plenty of stop flags before sending to all our invitees a broken email.</p>
<p style="text-align:justify;">The actual managers in charge of organizing this event where very happy and loved the system. I tried to anticipate all their needs and plan a structured clean script. In the end  there was some organic growth to code things or  cases I had not planned, but it turned out to be incremental changes, never too deep. Unfortunately that turned the system highly customized and not re-usable without many modifications.</p>
<p style="text-align:justify;">I got some actual comments from the end-users:</p>
<p style="text-align:justify;">from a participant:</p>

<blockquote>I just wanted to take a moment after the successful annual conference you just organized to briefly mention that the registration system you used excelled any other mechanism I've seen in hundreds of other conferences throughout my professional experience. In your case, we got emails with the right information, including attachments, in a timely manner. I specially appreciated you pre-populated every communication and form with the information I initially gave you. This makes a difference, unlike other systems, where you annoyingly have to enter the same information once and again.</blockquote>
<p style="text-align:justify;">from our staff:</p>

<blockquote>Best registration system I've seen. And I've seen many.</blockquote>
<div style="text-align:justify;"></div>
<blockquote>
<div>With just a few weeks to go before our nonprofit's annual event, we were so lucky to have this system to organize participant information, mail invitations, receive responses and calculate the data in a very organized fashion. The most efficient piece was the opportunity to personalize each email and feedback form on GoogleDocs.</div>
<div>Our process was more efficient because of the system Bruno, implemented to help streamline and reduce our workload.</div></blockquote>
<p style="text-align:justify;">This system is far from needing an actual developer to nanny its execution, and also far from being re-usable (separating the system and the particularities of our event). Yet, I am proud of it, and how it turned out.</p>
<p style="text-align:justify;">What I would do differently in the code if I were to do it again:</p>

<ul style="text-align:justify;">
	<li>Email body should not be hard-coded, it should be placed on a separate sheet to be taken from there. Also add a simple text version (reduces spam score).</li>
	<li>I would implement a "putRowsData" similar to "getRowsData".</li>
	<li>Customize the Forms so they live inside our NGO site, not using the Google Templates.</li>
</ul>
<p style="text-align:justify;">After this expericence I missed:</p>

<ul>
	<li style="text-align:justify;">The option in GAS MailApp to authenticate as another user to send on his/her behalf.</li>
	<li style="text-align:justify;">The option in GAS MailApp to save the output to the Drafts folder, instead of sending the email directly.</li>
	<li style="text-align:justify;">GAS Mailapp will not accept a Google Docs as the body of the email. That would be great!</li>
	<li style="text-align:justify;">A way to sync the code to a revision system. e.g. link it to a git repository or, even better, allow "includes" to pull the code at execution time.</li>
	<li style="text-align:justify;">A "sandbox mode" where all output goes to you. E.g. email to be send to user@example.com would actually go to brunosan+user-example-com@gmail.com</li>
	<li style="text-align:justify;">URL fetch would sometimes silently fail. Better fetch once and re-use if possible.</li>
</ul>
