--- 
filename: _posts/blog/2012-05-03-idea-synthetic-multi-beam-microphone.md
category: blog
layout: post
status: publish
meta: 
  geo_accuracy: "0"
  _wpas_done_fb: "1"
  publicize_results: a:2:{s:7:"twitter";a:1:{i:6637352;a:2:{s:7:"user_id";s:8:"brunosan";s:7:"post_id";s:18:"198042673901342721";}}s:2:"fb";a:1:{i:239200025;a:2:{s:7:"user_id";s:9:"239200025";s:7:"post_id";s:12:"502744710803";}}}
  tagazine-media: a:7:{s:7:"primary";s:82:"https://nasonurb.files.wordpress.com/2012/05/screen-shot-2012-05-02-at-21-54-28.png";s:6:"images";a:4:{s:82:"https://nasonurb.files.wordpress.com/2012/05/screen-shot-2012-05-02-at-21-54-28.png";a:6:{s:8:"file_url";s:82:"https://nasonurb.files.wordpress.com/2012/05/screen-shot-2012-05-02-at-21-54-28.png";s:5:"width";s:3:"749";s:6:"height";s:3:"315";s:4:"type";s:5:"image";s:4:"area";s:6:"235935";s:9:"file_path";s:0:"";}s:56:"https://nasonurb.files.wordpress.com/2012/05/ear-0011.jpg";a:6:{s:8:"file_url";s:56:"https://nasonurb.files.wordpress.com/2012/05/ear-0011.jpg";s:5:"width";s:3:"542";s:6:"height";s:3:"296";s:4:"type";s:5:"image";s:4:"area";s:6:"160432";s:9:"file_path";s:0:"";}s:55:"https://nasonurb.files.wordpress.com/2012/05/ear-002.jpg";a:6:{s:8:"file_url";s:55:"https://nasonurb.files.wordpress.com/2012/05/ear-002.jpg";s:5:"width";s:3:"463";s:6:"height";s:3:"229";s:4:"type";s:5:"image";s:4:"area";s:6:"106027";s:9:"file_path";s:0:"";}s:63:"https://nasonurb.files.wordpress.com/2012/05/dopplerfrequenz.gif";a:6:{s:8:"file_url";s:63:"https://nasonurb.files.wordpress.com/2012/05/dopplerfrequenz.gif";s:5:"width";s:3:"400";s:6:"height";s:3:"100";s:4:"type";s:5:"image";s:4:"area";s:5:"40000";s:9:"file_path";s:0:"";}}s:6:"videos";a:0:{}s:11:"image_count";s:1:"4";s:6:"author";s:7:"4180497";s:7:"blog_id";s:7:"8438084";s:9:"mod_stamp";s:19:"2012-05-03 03:11:36";}
  geo_public: "1"
  _wpas_done_twitter: "1"
  geo_address: 425 P St NW, Washington, DC 20001, USA
  geo_longitude: "-77.018000"
  reddit: a:2:{s:5:"count";s:1:"0";s:4:"time";s:10:"1338330620";}
  geo_latitude: "38.910000"
  jabber_published: "1336052027"
  _edit_last: "4180497"
published: true
type: post
tags: 
- idea
- Science
- technology
title: "[Idea] Synthetic Multi-beam Microphone"
---
<p style="text-align:left;"><a href="https://www.flickr.com/photos/dominicspics/4626277810/sizes/l/in/photostream/"><img class="aligncenter size-medium wp-image-2383" title="Screen Shot 2012-05-02 at 21.54.28" src="https://nasonurb.files.wordpress.com/2012/05/screen-shot-2012-05-02-at-21-54-28.png" alt="" width="75%" /></a><a title="Speaker Lattice Array - Brian Eno Speaker Flowers Sound Installation at Marlborough House by Dominic's pics, on Flickr" href="https://www.flickr.com/photos/dominicspics/4626277810/">
</a> This idea is for a synthetic multi-beam microphone, basically allowing to select and amplify sound coming from any, and all, selectable angles and distances, at once, live or replaying the sound, and to detect their LOS velocity. Combined with a speaker, it can be a multi-beam sonar.Physically it would be an array of microphones, at the size of the lattice would define part of the resolution. The rest would come from the software. I thought of this merging concepts of sounds, nets, radioastronomy and optical interferometry.</p>
<p style="text-align:left;">Not really sure this make sense, but I post it here in case someone is looking for projects of ideas (#sciencehackday?). That´s why I make these <a href="/category/idea/">[Idea] posts</a> (and to protect them from patents).</p>
<p style="text-align:left;"><!--more--></p>
Antennas tend to be parabolic because they make the waves converge at the same time in one point, hence amplifying the physical signals of the whole area of the antena instead of just hearing those coming to one point. I remember this from high school and then some work I did with light (EM interferometry in radio, IR, visible, UV). The other day I was thinking about the equivalent with pressure waves (sound). I <a href="https://plus.google.com/114359371386539617196/posts/ED9NbMYetdb">drafted</a> a quick idea in the back of my mind and then let it mulle for a few days.

<strong>What if you put a flat 2D array of microphones?</strong>

<em>If the sound comes from far away, in front of you</em>
The pressure waves are flat and arrive to the mics at the same time. You just need to sum up the digital signals from each mic to interferometrically capture the sound from far points. The rest of signals will tend to cancel out. You can even misalign/cover a few of the mics and subtract them from the signal to remove some of the background noise and electronic/thermal pedestal. You won´t really know the distance, but you know the direction and that they are far. "Far" means compared to the distance between mics.

<em>If the sound comes from far away, but on the side (at an angle)</em>
Same thing as above, but when you are summing up the signals, you introduce the delay, for each mic, corresponding to the travelling time of the waves between the mics. Tuning the delay you can point your beam and listen to a particular direction. The <strong>cool </strong>thing is that you can do this delays via software, so you can virtually point at<strong> multiple directions at the same time</strong>. Or even just replaying the data afterwards. They do this in radioastronomy with radio signals.
<p style="text-align:center;"><a href="https://nasonurb.files.wordpress.com/2012/05/ear-0011.jpg"><img class="aligncenter  wp-image-2386" title="ear.001" src="https://nasonurb.files.wordpress.com/2012/05/ear-0011.jpg" alt="" width="434" height="237" /></a></p>
<em>If the sounds comes from a close source</em>
Same thing just tune the offset to each node in the mic array needs to match the propagation of the arrival of the wave. E.g. If it comes from close but straight in front, tune it from the center outwards. Think you are matching the wave as it propagates outwards. Setting those delays, you can tune your ear for a given distance.

<a href="https://nasonurb.files.wordpress.com/2012/05/ear-002.jpg"><img class="aligncenter size-full wp-image-2387" title="ear.002" src="https://nasonurb.files.wordpress.com/2012/05/ear-002.jpg" alt="" width="463" height="229" /></a>

You could then virtually tune your ear <strong>simultaneously to any and all</strong> points in the 3D space, live or just re-playing the sounds.

More awesomeness, you can further tune the ear in frequency using digital <a href="https://en.wikipedia.org/wiki/Fourier_transform">Fourier transforms</a>. For example the frequency of a car engine, of human voices, ...

<strong>Resolution</strong>
The <em>angular</em> resolution of the ear would depend on the distance and angle to the source and the frequency of the sound, and roughly the projected distance between mics and, say, a quarter (peak to valley) of the wavelength in question.

The temporal resolution, for off-axis sources, would be the accuracy by which you can shift the digital signals in time (and the <a href="https://en.wikipedia.org/wiki/Nyquist_frequency">Nyquist frequency</a> of the sampling).

With light, the speed is so fast (c) that it makes temporal shifts hard and mostly non digital), also the frequency makes the arrays to be huge (radio) or tiny (UV).

Audible sounds waves are 20-20k Hz. Seems a range software could handle well. About the propagation speed (function of density but roughly 300m/s) not sure what implies in terms of the array dimensions... but now that I think of it, I remember geologist use arrays of mics to detect ultrasonic echoes to measure crust and mantle topology... there must a range where all this makes sense and has it s application.

When I <a href="https://plus.google.com/114359371386539617196/posts/ED9NbMYetdb">posted</a> this on Google Plus, <a href="https://plus.google.com/106437074792002603331/posts">David</a> told me that part of the software can readily available at <a href="https://www.lofar.ie">Lofar</a>. For the hardware part, there seem to be cheap <a href="https://www.amazon.com/mn/search/?_encoding=UTF8&amp;tag=brunosan-20&amp;linkCode=ur2&amp;camp=1789&amp;creative=390957&amp;field-keywords=microphone&amp;url=search-alias%3Delectronics&amp;sprefix=microp%2Caps%2C147#/ref=sr_nr_p_72_0?rh=n:172282,k:microphone,p_72:1248879011">microphones</a> to make a DIY lattice.

<strong><em>... </em></strong><strong><em>and what If you introduce a speaker?</em></strong>

Let´s make it a <a href="https://en.wikipedia.org/wiki/Synthetic_aperture_sonar">synthetic sonar</a>! Imagine you can play a sound for one 1/10 of a second. It would come back if there is something reflecting it 30 meters away. To make sure you can repeat the sound with slightly different frequencies to identify each member of the sequence and sum up the peaks in responses.

Now the same object is moving closer. That means there will be a <a href="https://en.wikipedia.org/wiki/Doppler_effect">Doppler effect</a>. And that make it possible to estimate the LOS velocity.

<a href="https://nasonurb.files.wordpress.com/2012/05/dopplerfrequenz.gif"><img class="aligncenter size-medium wp-image-2384" title="Dopplerfrequenz" src="https://nasonurb.files.wordpress.com/2012/05/dopplerfrequenz.gif?w=300" alt="" width="300" height="75" /></a>

Since the frequency that you emit will be shifted by Doppler, you need a way to identify each emission so that you don´t need to wait before sending the next probe. That´s a pretty interesting mathematical problem I remember going a to a talk about. I can´t more info, but the key was to modulate the emission in a certain way to that could invert the echo from the known input.

<strong>... and if you put an array of speakers? </strong>You could concentrate the pressure waves on a particular point. Sounds useful...

Anyway. Here I stop.
