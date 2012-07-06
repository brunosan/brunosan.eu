--- 
filename: 2011-08-28-idea-wireless-charger-using-ultrasounds.md
layout: post
status: publish
meta: 
  geo_accuracy: "0"
  _wpas_done_fb: "1"
  tagazine-media: a:7:{s:7:"primary";s:74:"http://nasonurb.files.wordpress.com/2011/08/img_20110826_112325-copy-2.jpg";s:6:"images";a:1:{s:74:"http://nasonurb.files.wordpress.com/2011/08/img_20110826_112325-copy-2.jpg";a:6:{s:8:"file_url";s:74:"http://nasonurb.files.wordpress.com/2011/08/img_20110826_112325-copy-2.jpg";s:5:"width";s:4:"1419";s:6:"height";s:3:"485";s:4:"type";s:5:"image";s:4:"area";s:6:"688215";s:9:"file_path";s:0:"";}}s:6:"videos";a:0:{}s:11:"image_count";s:1:"2";s:6:"author";s:7:"4180497";s:7:"blog_id";s:7:"8438084";s:9:"mod_stamp";s:19:"2011-08-28 16:45:56";}
  geo_public: "1"
  _wpas_done_twitter: "1"
  geo_address: 425 P St NW, Washington, DC 20001, USA
  geo_longitude: "-77.018000"
  geo_latitude: "38.910000"
  jabber_published: "1314549611"
  _edit_last: "4180497"
published: true
type: post
tags: 
- idea
- Science
- technology
title: "[Idea] Wireless charger using ultrasounds"
---
Charging your battery using ultrasounds and no cables? Is that possible? I heard it was, but not how, so I made some sketches on how it could have been done.

<a href="http://www.flickr.com/photos/nasonurb/6088924571/in/photostream"><img class="aligncenter size-full wp-image-2008" title="IMG_20110826_112325 copy 2" src="http://nasonurb.files.wordpress.com/2011/08/img_20110826_112325-copy-2.jpg" alt="" width="640" height="218" /><!--more--></a>

Last week a colleague at work  told me she heard on NPR that "a young girl patented a system to charge batteries using ultrasounds." My immediate reaction was to question if it really was ultrasounds (pressure waves) rather than electromagnetic waves. RFID, induction, WiFi, ... are all widely known to carry energy over the air using these (not yet used for charging, though). She was positive she heard <em>ultrasounds</em>. On my way home, <strong>without knowing anything else</strong>,  I kept thinking about it and, once home, I made <a href="http://www.flickr.com/photos/nasonurb/6088924571/in/photostream">some sketches</a>.
<p style="text-align:center;"><a title="Sketch on how to wirelessly charge a battery using ultrasounds  by brunosan, on Flickr" href="http://www.flickr.com/photos/nasonurb/6088924571/"><img class="aligncenter" src="http://farm7.static.flickr.com/6183/6088924571_c2f33f5c3a.jpg" alt="Sketch on how to wirelessly charge a battery using ultrasounds " width="375" height="500" /></a></p>
The system is based on small piezoelectric rods. <a href="http://en.wikipedia.org/wiki/Piezoelectricity">Piezoelectric</a> means means electricity resulting from pressure. Some speakers use that method to function. The idea is that the pressure wave will bend the rod, creating a small charge. As the rod vibrates under the pressure wave, the charge is directed an accumulated into the battery.

To maximize the output I´ve placed two small diodes to guide the current to the right pole on each halve of the vibration. I´ve also placed small condensers to smooth the voltage.

In principle, any rod length and pressure wave would work. To maximize the efficiency, the frequency of the pressure wave should be the<strong> resonance frequency</strong> of the rod length. This constrains the sounds emitter to one single frequency, band, and thus saves the energy that won´t produce resonance on the piezoelectric rod. This will also help guide any perturbation received into a maximum vibration pattern.

The rod itself can be composed of normal plastic (or naylon) and leave only the central part with the active material. The center is where maximum deflection (hence max voltage per length) is produced. This will reduce the cost.

Whatever the length of the rod is, it imposes a particular resonance frequency of emitter, but if we want the device to be sturdy, it better have smallish rods tightly attached on the sides. Smaller lengths calls for higher frequencies, which, in turn carry more energy. That´s why we´ll use ultrasounds. Also because they can go through thin covers, like the ones we might want to put on the device to make it nicer looking and waterproof.

The receiver  could be a net of small rods mounted on a grill-like frame. The depth of the frame should be one half multiple of the ultrasound frequency and of reflective material, to help in the resonance and minimize energy lost.

This, in principle should work. However, my concerns would be on:
<ul>
	<li>Overall energy lost in the emitter to create the ultrasounds.</li>
	<li>Dependence on prevalent wind, distance, air density and humidity.</li>
	<li>Side effects like loosening of the device parts due to the induced vibrations.</li>
	<li>Efficiency of the piezos.</li>
	<li>Possible sparks due to the high concentration of opposite voltages inside the receiver.</li>
</ul>
Next morning I looked up on NPR the <a href="http://www.npr.org/2011/08/23/139854129/young-entrepreneur-has-a-better-idea-now-what">news piece</a> my friend mentioned. She was right, it was ultrasound. Quite impressive to know how young the inventor is (and glad she is a woman). Her name is <a href="http://www.linkedin.com/profile/view?id=56344842&amp;authType=NAME_SEARCH&amp;authToken=eN-g&amp;locale=en_US&amp;srchid=4e00e504-41e3-4e7c-aeb2-126d92f5e5b1-3&amp;srchindex=1&amp;srchtotal=1&amp;goback=%2Efps_PBCK_Meredith+Perry_*1_*1_*1_*1_*1_*1_*2_*1_Y_*1_*1_*1_false_1_R_true_CC%2CN%2CG%2CI%2CPC%2CED%2CL%2CFG%2CTE%2CFA%2CSE%2CP%2CCS%2CF%2CDR_*2_*2_*2_*2_*2_*2_*2_19328_*2_*2_*2_*2_*2_*2_*2_*2_*2_*2_*2_*2&amp;pvs=ps&amp;trk=pp_profile_name_link">Meredith Perry</a> (@meredithperry) , and the newly created company is <a href="http://ubeam.com/">Ubeam</a>. I cannot find the design concept, but I wonder If I came close.

Either way, <strong>congratulations</strong> Meredith. I wish you best of luck! If you ever pass by DC, I´d love to chat with you about this and other ideas!!
