---
layout: post
title:  "Real Quick: Template Images"
date:   2013-10-15 11:17:50
---

iOS 7 introduced the concept of image templates. This builds on the idea of an app having a tint color. When you use a template image any **nontransparent pixels** get colored to your application's *tintColor*. 

In order to support this concept *UIImages* have the concept of *renderMode*. There are three unique render modes:

- UIImageRenderingModeAutomatic
- UIImageRenderingModeAlwaysOriginal
- UIImageRenderingModeAlwaysTemplate

As you can guess, automatic is default. In the documentation, Apple says that automatic render mode is context sensitive. The context in this case is the type of *UIKit* element the image is rendered in. For instance, *UIBarButtonItems* render in template mode when you use the automatic render mode.

The general rule is that if you are interacting with the element, automatic mode will probably render as a template. Elements that follow this rule are:

- UIBarButtonItem
- UISegmentedControl
- UIButton (foreground images)

One borderline exception to this rule is background images for *UIButtons*. They act like *UIImageViews*, automatic mode acts like original mode.

Overall it is pretty straight forward. Below are two images showing these items rendered with different tint colors and only 1 image packaged. I shared the code for this post [github](https://github.com/schlu/TemplateImageTest).


<div class="row">

  <div class="text-center screen_shot span6">
    <p class="caption">Blue Tint Color</p>
    <img src="/img/template_images/blue.png" alt="Blue Tint Color" />
  </div> 

  <div class="text-center screen_shot span6">
    <p class="caption">Red Tint Color</p>
    <img src="/img/template_images/red.png" alt="Red Tint Color" />
  </div> 
</div>