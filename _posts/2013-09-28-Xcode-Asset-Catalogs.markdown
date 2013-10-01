---
layout: post
title:  "Xcode Asset Catalogs"
date:   2013-10-01 09:12:09
---

### Basics

This year at WWDC Apple introduced [Asset Catalogs](https://developer.apple.com/wwdc/videos/?id=400). Asset Catalogs are meant to reduce clutter in your project navigator and bring clarity to how images are being used. The idea is that instead of having all your images listed out, you have one or more asset catalogs in which you can drag and drop the images into the correct spot.

<div class="text-center screen_shot">
  <img src="/img/asset_catalog/xcode_drag_and_drop.png" alt="Asset Catalog" />
</div>

In addition to using it for the app icon and launch images, you can use it for arbitrary images. Images can be used universally or device specific. This is super handy because you don't need to remember all the [file naming conventions](http://stackoverflow.com/a/14859877/2802413) for iPhone vs iPad vs retina vs 4inch vs etc.

<div class="row">

  <div class="text-center screen_shot span6">
    <p class="caption">Universal</p>
    <img src="/img/asset_catalog/universal.png" alt="Universal Asset" />
  </div> 

  <div class="text-center screen_shot span6">
    <p class="caption">Device Specific</p>
    <img src="/img/asset_catalog/device_specific.png" alt="Device Specific Asset" />
  </div> 
</div>

### Slicing and Resizing

Asset Catalogs also allow you to do slicing. This tells iOS and Xcode how to stretch the image when the view it is filling is larger than the underlying image. This functionality has always been supported in iOS with a few different methods on UIImage the most recent is [resizableImageWithCapInsets:](https://developer.apple.com/library/ios/documentation/uikit/reference/UIImage_Class/Reference/Reference.html#//apple_ref/occ/instm/UIImage/resizableImageWithCapInsets:). One big improvement is that Interface Builder will now show the stretching maintaining the insets correctly. As always, the images can be stretched vertically, horizontally or both.

One thing that is actually great about slicing in Xcode is that the designer can provide you an image as wide as they want. You don't have to explain to them how slicing off end caps and a middle two pixels works. After some quick tests, I have determined that Xcode produces the smallest image in needs at build time. Which means it is slicing off all the unneeded bits before it packages it for you. That leaves you with the best of both worlds, when you look at it in Xcode it looks big, but it packages the minimum amount needed.

[For reference here is Apple's guide to image slicing.](https://developer.apple.com/library/ios/recipes/xcode_help-image_catalog-1.0/SlicinganImage/SlicinganImage.html#//apple_ref/doc/uid/TP40013303-CH4-SW1)

### Technically

I haven't dug into this too much but it looks like all your Asset Catalogs are being put into one file called **Assets.car**. I don't know the specific binary format being used to pack all the images and slicing data, but I would guess one advantage would be that you don't have wasted block fractions. As you probably know the smallest amount of space you can allocate to a file is 1 block. Since the block size on iOS is 8k, if an image is 12k, it takes up 1.5 blocks, leaving half a block wasted. Multiply that by 1000 images and are talking about a real savings. That will speed up download times for your users.

There is some overhead associated with loading Asset Catalogs. I would guess that the app would load all your assets into memory, this could lead to having images in memory that aren't being used. That said, you probably don't have enough images to be problematic. One important thing you should be doing anyway is removing unused images. I use a the [Slender](https://itunes.apple.com/us/app/slender/id493656257?mt=12&at=11lbUE) Mac app. It doesn't support Asset Catalogs yet, hopefully in the future it will.

### Updating and Diffing Images 

The biggest issue I have with Asset Catalogs is updating images. Many times when I am working with a designer they will iterate 2 to ∞ times to make sure the app looks and feels perfect. Typically I will get a new set of images from the designer and drop them into the project and start using them. As far as I can tell, you have to drop the image into the correct box in the Asset Catalog if you want to update it, which is less than ideal. Currently, I don't have a simplified solution to improve the new workflow. Since the point of Asset Catalogs is abstracting away the file name conventions, I don't see how Xcode would know where to put those images.

Another issue is diffing. You used to be able to look at the the old image and the new image side by side in Xcode's "version editor." With Asset Catalogs it shows the whole catalog as different even if only 1 image has changed. This is mostly a non issue for me since I use Black Pixel's [Kaleidoscope](http://www.kaleidoscopeapp.com/) for all my diffing needs. Kaleidoscope still diffs the images as good as ever. But it is a bit of a drag to not be able to glance at the project navigator to see what has been changed.

### Localization and Translation

Images get localized and translated like other things in the application. At this point I don't see a way to localize Asset Catalogs. This is probably not that big of a deal because image localization should only occur when an icon means a different thing in a different country. That happens, but not enough to let it stop you from using Asset Catalogs. If you do need to translate an image you can do it the old way.

### iOS 6

This is mostly a non issue since most people are going iOS 7 only so quickly. But if you choose to target iOS 6 for backwards compatibility, it will include the Assets.car file and all the image files. I didn't research how this would affect the resizing. It doesn't really matter, because if you are targeting iOS 6 you probably shouldn't use Asset Catalogs due to the increased app size.