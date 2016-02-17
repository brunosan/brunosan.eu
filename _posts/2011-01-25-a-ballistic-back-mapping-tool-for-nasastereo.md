--- 
filename: _posts/blog/2011-01-25-a-ballistic-back-mapping-tool-for-nasastereo.md
category: blog
layout: post
status: publish
published: true
type: post
tags: 
- Outreach
- Science
- technology
title: A [ballistic back-] mapping tool for NASA/STEREO
---
{% youtube Lia9nhdjoRA %}

> The video above shows the map of the Sun from 2007 to 2010. The map calculates the image <strong>as if</strong> neither the Sun or the Earth rotated, leaving thus a black region that corresponds to the section of the Sun that can´t be seen from Earth. But they do rotate, so the black region shifts in time. The interesting bit is that the solar features remain in place. This allows us to see that certain features survive several months and are indeed recurrent.

[Warning, this post is fairly technical, not really outreach. Comments and questions are always welcomed.]

<!--more-->During my last months at the <a href="http://spacescience.nrl.navy.mil/">Space Science Division</a>, before departing to the <a href="http://nas.edu/">National Academies</a>, I invested quite many hours developing <a href="http://bsan.eu/map-euvi">this tool</a>: "A ballistic back-mapping tool using in-situ and remote sensing simultaneously with both STEREO spacecrafts". In essence what it does is to measure the solar wind and calculate the time that wind left the Sun, and then create a projection of the whole solar corona at that time. I also created a trimmed down version that creates the mapping for any given time.

Both scripting tools work and are used by colleagues and in conferences. I refused to be co-author on the publications or talks, as I consider this a tool, not an <a href="http://en.wikipedia.org/wiki/Research_ethics">essential contribution</a> to their work. Unfortunately, there never was a paper about the tools or documentation. In the lack of a proper one, this post will serve as one. You can also reference this post on your articles as <a href="http://bsan.eu/map-euvi-doc">bsan.eu/map-euvi-doc</a>.
<h3>The mapping tool is available here:  <a href="http://bsan.eu/map-euvi">solar mapping</a></h3>
<h2><strong>Abstract:</strong></h2>
The web service shows the largest Coronal image of the Sun at all EUVI wavelengths integrating both NASA/STEREO points of view. Individual images and spacecraft sub-solar positions are also shown. The user can also request frames from the start of the mission to the last available data, and run the movie on the browser. Movie controls allow for looping and swing-mode. All frames are the result of an automatic pipeline that request the data to the STERO databases, preps it, makes the coordinates translation and projection,  and  the JavaScript interface. All automatic. It is also prepared to work on environment with several running CPU, speeding the process, and also allows to re-calculate individual frames if the raw data is changed.
<h2><strong>Interface</strong>:</h2>
The tool, by default, loads the 284 Å EUVI channel, the last available 100 frames and starts looping the video. On load, it preloads the frames on memory for fast performance. Depending on the network connection, the process lasts around a minute.

Controls:

[caption id="attachment_1327" align="aligncenter" width="587" caption="Movie Control Section."]<a href="http://nasonurb.files.wordpress.com/2011/01/screen-shot-2011-01-11-at-21-42-25.png"><img class="size-full wp-image-1327" title="Controls" src="http://nasonurb.files.wordpress.com/2011/01/screen-shot-2011-01-11-at-21-42-25.png" alt="" width="587" height="117" /></a>[/caption]
<ul>
	<li>First row: The slider indicates the current frame, but it can also be moved directly with the mouse for close inspection of a particular event.</li>
	<li>Second row: Controls to start, pause. Also to run faster or more slowly. The fastest rate is imposed by your computer to handle the frames (each image is ~0.5 Mb, so it won´t probably run faster than ~24 fps). 'Reverse' button changes direction, while 'swing mode' reverses the direction at the end instead of looping.</li>
	<li>Third row: While loading, it show the progress. After loading, indicates the exact date for the current frame. Also available on the frame itself. The exact timing between STEREOs is the closest point to the requested time when the pipeline was run.</li>
	<li>Fourth row: Allow trimming of the video to loop within the selected frames.</li>
</ul>
User Input:

<a href="http://nasonurb.files.wordpress.com/2011/01/screen-shot-2011-01-13-at-22-17-16.png"><img class="aligncenter size-full wp-image-1339" title="Screen shot 2011-01-13 at 22.17.16" src="http://nasonurb.files.wordpress.com/2011/01/screen-shot-2011-01-13-at-22-17-16.png" alt="" width="640" height="51" /></a>
<ul>
	<li>By default, the script loads the last available frames 100 frames, with the highest cadence (6 hours).</li>
	<li>Start index 1 means the first STEREO image pair 15/2/2007 11:27 UT. The last frame is calculated as the 100th frame using the selected cadence (in units of 6 hours). The script validates the entries to avoid loading invalid frames. New parameters are loaded using the 'Load range' blue button</li>
	<li>The hard coded 100 frames is set to limit excessive load on the client.</li>
	<li>The info on the second column show the equivalent date for the selected frame indexes.</li>
</ul>
<h2><strong>Pipeline Flow Diagram</strong></h2>
[caption id="attachment_1326" align="aligncenter" width="640" caption="Ballistic Back-mapping flow chart, see below"]<a href="http://nasonurb.files.wordpress.com/2011/01/talk-008.jpg"><img class="size-full wp-image-1326 " title="Talk.008" src="http://nasonurb.files.wordpress.com/2011/01/talk-008.jpg" alt="" width="640" height="480" /></a>[/caption]

The tools is actually an IDL .pro script. This the (almost) full rundown. You simply call

<strong>IDL&gt; .r fullmission-script </strong><strong> </strong>[all parameters are optional and inherited]

It sets the parameters and calls fullmission.pro  It uses a ticketing system by which each processing iteration is first checked against a common pool, and then ticketed for execution. If another instance of the programs runs into the same folder they will speed up the process, as they always look if another instance is already calculating each frame. Also, the script can be stopped at any time and resumed with almost no time penalty. If re-processing of a particular frames is required you only need to delete those and then re-run the command.

After running through each frame, it creates the HTML code with the JavaScript. It also encodes a movie with all the frames for the whole mission. Finally, it rsyncs only the new files to the web server.

<span style="color:#000000;">By default the script uses the full mission up to today and creates an array of UT date with a 6 hours cadence. It also selects a wavelength, output </span>folder and other options. All these options can be changed. It is therefore possible to concentrate in a particular time range with higher cadence and only on particular EUVI channel.

<em>Flow</em>:

For each requested UT time and wavelength the script looks for the closest, in time, instance when both STEREO spacecrafts have both images available, and they are too much apart one from the other. If no image pair is found it returns a 'skip frame' message. The 'map' time keyword correspond to the mean time of observations of both s/c (usually seconds apart and up to a minute apart from the requested time).

<a href="http://nasonurb.files.wordpress.com/2011/01/orbits.png"><img class="aligncenter size-full wp-image-1341" title="orbits" src="http://nasonurb.files.wordpress.com/2011/01/orbits.png" alt="" width="375" height="187" /></a>

The script then calls the prep sub-pipeline for each STEREO individual frame. This makes all the dark, flat-field and corrections. It sets the LEVEL-1 (0.9) data by converting pixels coordinates into physical coordinates in the META headers. After this step we have the calibrated position and spectrograms for each s/c.

<a href="http://nasonurb.files.wordpress.com/2011/01/frame1.png"><img class="aligncenter size-full wp-image-1342" title="FRAME" src="http://nasonurb.files.wordpress.com/2011/01/frame1.png" alt="" width="640" height="134" /></a>

Then the script translates the images into Stonyhurst projections maps. STEREO A (ahead) sees the Sun from a standpoint that reaches further towards the East [earth] solar limb. STEREO B (Behind) sees beyond the other limb on the other side. Thus STEREO B observes a section of the Solar disc before the Earth does. The solar disc as seen from Earth is therefore seen by both s/c.

The script situates both maps into a fixed solar frame. As if neither the Sun or s/c or the Earth rotated. As the s/c separate from Earth, the black (unobserved) region gets smaller.

On the central common subfield (the section directly in front of the Earth) we use the minimum value (the corona is optically thin and both images are considered simultaneous, therefore there is no point in calculating the mean). The minimum value corresponds to the most radial viewpoint.

In the image below, the s/c are almost in opposition and therefore the black stripe is very small and most of the Sun corona is observed when plotted together. Note the position of each s/c and Earth, centered on each FoV and on the separator, respectively.
<p style="text-align:center;"><a href="http://nasonurb.files.wordpress.com/2011/01/frame.png"><img class="aligncenter size-full wp-image-1324" title="FRAME" src="http://nasonurb.files.wordpress.com/2011/01/frame.png" alt="" width="640" height="434" /></a></p>
Longitude coordinates corresponds to the Carrington system, not Earth centered. This means that the map remains 'anchored' to the Solar corona at mid latitudes (due to differential rotation).

Note also that, since the corona is optically thin and due to the 3D nature of the coronal structures,  there is geometrical distortion. Features closer to the local limb on each s/c integrate more line-of-sight plasma. In particular loops appear slanted towards the local limb, as can be seen below.

<a href="http://nasonurb.files.wordpress.com/2011/01/screen-shot-2011-01-13-at-23-10-36.png"><img class="aligncenter size-full wp-image-1344" title="Screen shot 2011-01-13 at 23.10.36" src="http://nasonurb.files.wordpress.com/2011/01/screen-shot-2011-01-13-at-23-10-36.png" alt="" width="640" height="458" /></a>

This geometrical distortion is also responsible for the dimming of coronal holes towards the local limb. Coronal Hole appear darker when directly below the s/c and gradually seem to disappear towards the limb. Using the minimum value on the overlap region minimizes the problem but, in turn, creates a much more visible geocentric solar meridian. For easier visualization of this effect, we have added the locations of the STEREO s/c and the Earth. We also added a mark, on the individual images, the sub-s/c position of the respective s/c. This marker moves towards the limb in the images as the Sun coverages increases, until the marker disappear beyond the limb. when the s/c reach 90º separation.

{% youtube EdY7f6Z7sks %}
<h2><strong>Some Data Interpretation points</strong></h2>
<ul>
	<li>Using both dataset we achieve maximum solar coverage, and observation of both polar caps simultaneously.</li>
	<li>Using the Carrington longitude as an anchor, one can observe recurrent emerging Active regions around certain equatorial location. As if the Sun nor the Earth rotated. Specially If you look at this fast paced version (on the web tool, just choose a cadence of 60 or more units of 6 hours)</li>
	<li>Using this tools it is much easier to now follow the temporal evolution of coronal features, with a mostly static Sun.</li>
	<li>One could create a solar variability map for a certain period by calculating the spatial variance for each point of the map, and compare that over time with solar dynamo models.</li>
</ul>
[youtube=http://www.youtube.com/watch?v=PmCRIe5DFw4&amp;hd=1]
<h2><strong>Ballistic back-mapping</strong></h2>
<strong><a href="http://nasonurb.files.wordpress.com/2011/01/a14428833.png"><img class="aligncenter size-full wp-image-1347" title="a14428833" src="http://nasonurb.files.wordpress.com/2011/01/a14428833.png" alt="" width="640" height="640" /></a></strong>

The tools becomes real interesting once we add another layer of data: in-situ solar wind.

The idea is to relate the coronal features with the Solar wind parameters. Light arrives to the spacecraft from the Sun in  just 8 minutes, but the solar wind takes a few days. Solar wind travel at around 200-800 km/s and different coronal features emmanate different solar wind speeds and density. For example the open magnetic field lines from coronal holes provide faster speeds than the closed lines over 'quiet Sun'.

To investigate this,  we added a layer into the script, and some plots for the in-situ data. The new script runs as follows:
<ol>
	<li>Every 6 hours we read the in-situ solar wind speed from, say, STEREO A spacecraft.</li>
	<li>Knowing the distance to the Sun, and assuming ballistic propagation, we regresses in time to the moment the solar wind left the Corona (~2.5 times the photospheric Solar radii).</li>
	<li>We create the Stonyhurst projections maps for <em>that</em> previous time, using both s/c. We have the image of the solar corona at the time the plasma hitting the wind detectors left the Sun.</li>
	<li>As we run in time we see the evolution of the solar wind, wich corresponds to a non inyective correlation of images. If the solar wind increases it can overtake the previous but slower wind, which is then seen as a regression in time for the coronal images. If the solar wind decreases, the it can leave a trail where the corresponding images are the same for a long period of time.</li>
	<li>Since it is interesting to see the footpoints of the emanating solar wind, we added a subfield showing a FoV about 30º around the solar wind footpoint. We also added markers ("0") to the individual coronal for the STEREO views.</li>
	<li>We have also added a marker  "|" for the sub-s/c (central meridian) at the moment of the in-situ observation. If the solar wind speed were infinity, the marker would lie in the center of the square. Ad the solar winds slows down, the square lies further behind. If the solar wind increases, the square chases the marker closer.</li>
	<li>On the plot, the solid line is the solar wind speed in km/s, and the dotted line is the proton density in #/cm3.</li>
</ol>
[youtube=http://www.youtube.com/watch?v=9f_rrMq3u_U&amp;hd=1]
<h3>The mapping tool is available here:  <a href="http://bsan.eu/map-euvi">solar mapping</a></h3>
