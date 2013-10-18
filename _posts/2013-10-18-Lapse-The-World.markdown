---
layout: post
title:  "Lapse the World"
date:   2013-10-18 11:33:09
---

## Origin Story

I am excited to announce my first new personal project in awhile. It is called [Lapse the World](http://lapsetheworld.com/). It is a app for making time lapses on your iPhone. It is my first (completed) project that involves [AVFoundation](https://developer.apple.com/av-foundation/). It took me way out of my comfort zone in the best possible way.

It started as a proof of concept because a job required me make extensive use of a framework I wasn't comfortable with. I didn't end up getting the job for a variety of reasons. I did end up getting a taste for audio and video programming. It is different than the usual consume web services and do something on the device. My friend calls this type of programming being a "bit dump truck driver". 

I knew I wanted to finish this project, I also knew that I sucked at finishing things on my own. I recruited my friend, Seth, to help with the code and keep me motivated. Between the two of us we were able to wrap this up and get it launched.

<div class="row">

  <div class="text-center screen_shot span6">
    <p class="caption">Lapse List Screen</p>
    <img src="http://lapsetheworld.com/img/1.png" alt="Lapse List Screen" />
  </div> 

  <div class="text-center screen_shot span6">
    <p class="caption">Recording Setup Screen</p>
    <img src="http://lapsetheworld.com/img/2.png" alt="Recording Setup Screen" />
  </div> 
</div>

## The Recording Process

Many time lapse apps record the video in real time then compress it later. This is good for some reasons and bad for others. The best part about this approach is that you can choose how fast to make the video look after it has been recorded. The downside is that the recording is stored in it's original size which is a deal breaker for me since the iPhone is storage constrained.

We decided to go a different route. We let you specify a number of different compression ratios before you start recording and only record the frames that are needed. A normal video is recorded at 30 frames per second. Say you want to make a recording that appears 30 times faster than real time. So, we grab 1 frame per second instead of 30. Then when you play the video back, you view it at 30 frames per second making 30 seconds fly by in 1 second.

We are allowing you to pick up to 3 compressions while you record, because if you are like us, you don't really know what compression to use to make it look cool. As you can see in the above screen shot, we have a couple presets and a way to customize it if you want to experiment, or know what you are doing.

## Other Stuff

We decided to make it free with In App Purchase. Enough digital ink has been spilled talking about app store pricing and the race to the bottom, so I am not going to go into further detail about it. But suffice to say, since Seth and I don't have huge internet followings, we thought it would sell better if it were free and people could pay to export their videos after they have tried it out.

Seth also build a custom video scrubber that shows frames from your lapse. It is awesome and Seth will be open sourcing it shortly. For time lapses, it isn't that cool because most time lapses kinda look the same throughout the video, but if you use [Lapse the World](http://lapsetheworld.com/) while you are driving or something the scrubber should help you see different parts of your video while you are scrubbing.

## Finally

If you make any lapses with the app [drop us a line](mailto:support@lapsetheworld.com) we would love to see them.

<div class="row">

  <div class="text-center screen_shot span12">
    <a href="https://itunes.apple.com/us/app/lapse-the-world/id712798885?ls=1&mt=8&at=11lbUE&ct=schlu_org"><img src="/img/Available_on_the_App_Store_Badge_US-UK_135x40.png" /></a>
  </div>
</div>
