---
layout: post
title:  "Time for Xcode to Grow Up"
date:   2014-04-17 09:03:40
---

It is fair to say that Xcode has gotten immeasurably better since the early times of Xcode 4. Long forgotten are the days of selecting a different */Developer* directory to install Xcode betas. Soon forgotten will be the days of random crashes. Everything seems reasonably snappy, you don't have to wait 15 seconds if you hit *CMD-T* on accident (or on purpose).

The whole system seems much more predictable. That said things are not perfect. You still don't want to press a button that says *Fix* when it comes to provisioning, because (spoiler alert) it doesn't fix your problem. Sometimes restarting Xcode fixes random things, sometimes you have to sweet talk Xcode* into compliance.

Since Xcode has stabilized so much people are tentatively optimistic about its future. We are currently in a Renaissance of Xcode plugins. Unfortunately, the best plugins have yet to be written. Companies are hesitant to build plugins because there is no official support from Apple. Every new version of Xcode is likely to break your plugin. As a company it is difficult to do capacity planning if there is no official api or support from your platform owner.

A formalized system benefits apple in a few (mostly theoretical) ways:

* If developers are able to be more productive, they can spend extra time creating more amazing things for the platform.
* The more comfortable developers are using a tool, the less they want to switch. Creating voluntary vendor lock in for mid to junior developers.
* If a company had an official Xcode plugin you can be sure they would put an Xcode logo on their website, subtly extending apple's brand.

But I think an official plugin api for Xcode is highly unlikely. Apple has a track record of supporting people who make apps, but not people who support app makers. Helping tool makers doesn't make Apple more money, in the short. Not having to support an official plugin architecture allows them to iterate more quickly. If I were running Apple I might make the same choice. But I still pine for a streamlined workflow that supported plugins could partially provide.


<sub>* this doesn't work, I've tried</sub>