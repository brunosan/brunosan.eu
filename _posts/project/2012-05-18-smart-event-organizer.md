---
filename: _posts/project/2012-05-18-smart-event-organizer.md
layout: project
category: project
title: Smart Event Organizer
status: Completed 
color: GreenYellow
skills:
- Google Apps Script
- Google Docs
- Javascript 
---

This project grew up organically. I was just playing with Google
App Script trying to learn its hooks with Google Docs Excel sheets and
emails. It ended up being 1000 or so lines of production code that took
care of our Annual Meeting at work with participants from all around the
country, the World Bank, CEOs, ... A bit stressful at times, as some key
features we implemented on production code with rudimentary safety
flags.

Back then we needed at work a system to send emails about our
annual meeting, but we wanted to personalize the names of the emails,
and have them RSVP the invitation. I thought I could easily do it, so I
jumped right at it. Was fun, but the organic growth makes it now quite
difficult to refactor it into re-usable code.

###Goal

The goal was to send personal invitations to a long-ish list, link to a
RSVP questionnaire with their pre-populated information, and merge back their
replies so you knew how is coming to which sessions, who is vegetarian,
who has not replied yet, ...

###Progress

By the time I implemented this Projects page this was all done. I am
pretty happy with the outcome. Unfortunately the project grew
organically and with a tight timeline, so the code needs significant
refactoring to make it reusable.

I´m particularly proud about the pre-populated bit where we avoid asking
information to people that we already know. This is done using a simple
trick passing the data on shortened URL, but it we got specific positive feedback
about this. It also allowed us to fix their names and titles on our database, as people would
correct the pre-populated data and then the script would flag the changes
for us.

Once you have all the data on an Google Excel sheet it was easy to
implement live reports of attendees that updated in real time as people
reply or change their answer.

###Resources

I wrote a [technical post about the
system](/2012/05/18/case-study-for-an-invitation-system-using-google-apps-script/). 

I would love to refactor to it to generalize it to any event, but I
don´t really have the time to invest, specially if I´m the only one who
is going to use it... and there are somewhat similar services (alas none
with some of the capabilities I had built)
