---
layout: post
title:  "Musings on ARM Macs"
date:   2018-04-12 11:15:00
---
Recently, respected Apple pundit, [Jason Snell](https://sixcolors.com "Six Colors") published an article on [Macworld](https://www.macworld.com/article/3268029/macs/why-the-next-mac-processor-transition-wont-be-like-the-last-two.html) summarizing Apple’s previous two chip transitions from Motorola 6800 to PowerPC and then from PowerPC to Intel. The history part of the article is really good. And I think the punditry part is probably right in the very long run.

This was all in response to an article in [Bloomberg](https://www.bloomberg.com/news/articles/2018-04-02/apple-is-said-to-plan-move-from-intel-to-own-mac-chips-from-2020) about Apple designing its own chips for the mac. On [Upgrade](https://www.relay.fm/upgrade/188 "Upgrade - #188: An Elephant on the Bridge") this week Jason and Myke had a pretty in depth discussion about the future of the mac and “eventually they will just switch everyone to iOS?”

## When is eventually?
The thing I would really push back on is the timeline. Even 5 years seems too short to pull off this transition. Transitioning an operating system will never be as fast as transitioning the processor. The operating system is by definition a level (or 10) of abstraction from the chip. Apple can and does hide underlying differences from users, third-party developers and most of their own developers. When an operating system is slowly changing they have the opportunity to control how long they maintain compatibility before forcing developers and users to comply. A change as big as the OS forces everyone to deal with it and will never happen quickly or be mandatory. In Jason’s defense, he did say something like, “by the time this happens it won’t matter.” I definitely agree with that.

The last time Apple changed the operating system on the mac they were basically irrelevant in computing and macOS 9 was so inferior to the competition in most ways that it was mandatory to do something drastic. Right now I just don’t see the pressure or benefit of doing something drastic.

## Web developers
Another one of Jason’s points was that web developers are too small of a userbase to make decisions about which chip to use for the underlying OS. I would question that assertion a  bit. If the numbers were so low I don’t think there would be 3+ companies (plus docker) making software for virtual machines for the mac. 

I do not have the numbers and I am not going to search for them, but I am going to bet, that whatever percent of the userbase web developers account for does not reflect the amount of revenue the company brings in on the Mac. For example, if web developers account for \<1% of users, they probably still account for 2% of the revenue / profit. Of course, that is still all a rounding error on their quarterly numbers.

Server-side web developers are not the only people virtualizing x86. Some people still test on Internet Explorer. For a long time Microsoft Office wasn’t good enough on mac, so people would run Windows for Excel. I am sure there are lot of people buying macs that still want Windows.

## A Dell in Apple
I think it is fairly widely accepted that Apple’s biggest weak spot is services. Which guess what? They all run on intel. That is not changing anytime soon. There are too many layers of infrastructure built up over the decades based on x86. The best server developers will not want to run the same architecture on their machines as their servers. It removes one level of abstraction, allowing them to write better software, faster.

I have a hard time seeing Apple allow a Windows / Linux laptop to be used inside their own HQ for development. Even if you could find server developers who were willing to work without native virtualization, you are putting them at a competitive disadvantage by doing so. It isn’t the reason most people work at Apple, but working on a computer produced by the company you work for is a bonus that very few developers get to have.

A reason they won’t give up intel any time soon is vanity. I think they secretly love that all throughout Google, Facebook, Amazon, Netflix, etc there are shiny macs on the desks of lots of developers. Those companies don’t care what type of computers their developers use, they care that they can ship code. As soon as their developer stop asking for macs, there will be no more shiny macs on desks. Because any other platform will be cheaper for these companies.

## Well actually
If you wanted to bring iOS to the laptop and desktop, it would probably be easier to make iOS run on intel. Trivial is the wrong word, but I don’t think it would be crazy given that iOS is already running in the simulator, not emulator for development. This is something you occasionally have to deal with when writing iOS apps and testing on the simulator.

Though I don’t see any reason to do that unless they make iOS drastically more powerful. Not in terms of processing, but in terms of features. Without the ability to virtualize another OS in the background there would be almost no reason to bring out a real iOS device on intel.

## Xcode
I will start taking this transition seriously when Xcode works and more critically is good on iOS. The former is obviously going to happen. I expect that in one of the next couple WWDCs they will announce Xcode on the iPad Pro, but I assume that it will take 2 or more years before it is usable for anything but the most trivial use cases.

The thing about developing code is you need to be able to have _full_ access to your system. I just don’t see Apple changing iOS to allow that. Having access to run a local server while developing a mobile client and running a man-in-the-middle proxy to inspect your network traffic just doesn’t seem like something that is likely to change soon. (Though shoutout to [Charles Proxy](https://itunes.apple.com/us/app/charles-proxy/id1134218562?mt=8&at=11lbUE) coming to iOS)

## The best scenario
From my perspective the best scenario is probably to release the 12 inch MacBook on ARM. All the other Macs could start to get more and more ARM chips in them for background processing. Eventually the ARM chip could be the primary with an x86 coprocessor for things that don’t transition over. 
I am not a hardware expert so I don’t know how hard this is. Though I imagine it will be difficult coordinating two different architectures drawing to the same screen, but I think it is solvable.

The vast majority of computers sold are portable. This means that the carrot would presumably be customers pressuring third-party developers to be better citizens when the battery menu shames them. I would propose that over the course of 5 years you remove your x86 processor from the lower lines and herd all the “pro” customers to higher and higher end computers. Let’s be honest Apple loves driving up the average selling price on their devices. When you start herding developers will get the signal and try to figure it out how to move to ARM.

If Apple refuses to make computers that developers can use, they might as well make the transition now. I don’t know a lot of developers that are happy with Apple at the moment. Apple has been putting out wildly overpriced lackluster mac hardware for the last 2 years, it does its job, but barely.