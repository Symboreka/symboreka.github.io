---
layout: post
title: Browser Addons that keep me sane
date: 2025-01-14
categories: [Firefox, Addons]
tags: [Firefox, adblockers, addons, youtube]
---

## Introduction
In this blogpost, I want to present the browser addons that I am currently using. They serve the main purpose of making the Internet usable again, something that in my eyes has been lost to time within the last decade.

## My Browser(s)
Firstly , I should present the browsers I use, so we get on roughly the same page. My main Browser is **Firefox**, as it still supports Manifest V2. This is necessary for good adblockers to function. Modern Chromium-based browsers start to struggle with the newer, worse Manifest V3. Mozilla claims to have no intention of ever enforcing manifest V3. Let's see how long this will hold. For now, Firefox it is'

However, while my main browser is Firefox, I still use other browsers from time to time. As for my Chromium-based browser, I prefer using Brave. It has integrated ad-blocking that mostly keeps up to speed with anti-adblocking changes and is fast enough for me to work. I have it installed on most of my PC's as a backup.

On my IPad however, I use the brave browser as my Youtube-Player. While youtube's webapp truly sucks, the integrated adblocking (which works on iPad) allows ad-free youtube on the go.

The last browser that I use from time to time is Safari, as it is the default on my iPhone and iPad. On my Mac and all other PC's, Firefox is my choice.

## Why use addons in the first place?

The reason for most people to use addons is to fix minor annoyances or block ads. My main reasons are roughly the same, but with some other cool or in my eyes necessary features. I will explain the use of each addon next to its presentation. I may also present some cool addons that I currently don't use, but have plans to or simply want to present.

## Ad-Blocking uBlock Origin
First things first, without this the Internet is unusable in my opinion.
There are many ad-blockers out there, but time and time again, it shows that **uBlock Origin** is the best one. It is updated on the fly and usually has the best ad-blocking and the fastest adaption time.

## I don't care about cookies
**I don't care about cookies** is a plugin that automatically answers all the cookie notices on websites. It works on most websites, however it does take some time until it does so. The Brave Browser had a better solution, as the cookie notices did not even pop up. If you know a plugin that solves this problem better, feel free to contact me.

## All Youtube-Based Plugins
Youtube is a special case for me, as I use this platform waaayyy too much and at times was addicted to it. Several plugins helped me with this, for Example 'Return Youtube Dislike' to spot clickbait or trash content, and 'UnHook' which helped me a lot when it comes to reducing time on youtube.

### Return Youtube Dislike
This plugin returns the feature to see how many people disliked a video. Sadly this feature was disabled by google so it became harder and harder to judge whether a piece of content was authentic, stolen or just plain wrong. This Plugin calculates a rough estimate of the downvote count using its information (the amount of people using this addon) and some math. In my opinion having this plugin is a must, as it will help the community to judge whether videos are good, bad, fake or just a waste of time.

Why? 
Imagine a video with 10.000 views. It's the only video that comes up in your search term. Well, it has over 800 likes, that's almost 10 percent of views. This must be good, right? 
I had many of those situations come up lately, only through the use of this plugin could I see that the video had over 2000 dislikes and was truly a worthless piece of content filled with misinformation and clickbait. This plugin helps detect that and judge whether it is worth spending the time to watch a video or not. Use it.

But is it accurate enough? If the addon does not have access to the actual dislike count of the videos, asking that question is very fair. The youtube channel 'Liuns Tech Tips' did an analysis of that very question. The results were astonishing, with an accuracy of 90+%. It is worth a watch.

### UnHook
When it comes down to disabling stupid features and customizing youtube's site to your desire, **UnHook** is the way to go. I use it to disable YoutubeShorts and all aspects of the Algorithm. This plugin helped me a lot with my problem of spending too much time on youtube. I disabled the Start Page at times where I need to focus, like Exam-Phase, and forever disabled the video preview of two recommended videos after each video. Also, I disabled the recommended section when watching a video, so my focus is fully on the video and not on "the next big thing". Also, I disabled the 'Trending' Section, has anyone ever seen good content there? I don't think so. Same with Shorts. Sometimes they are OK, but 99% is trash, and I don't like fishing for the 1%.
This plugin can do sooo much more, check it out.

### ShortsBlocker
Yet another plugin to disable shorts. I needed this for the random times when I accidentally opened shortslinks, this plugin makes them stop working. I personally need this. Good topics are worth spending more time than 30 seconds for a throrough explanation.

### SponsorBlock
This one was a recommendation by a friend, I cannot thank him enough. This addon automatically skips the sponsored segments from youtube videos based on community input. Truly a gods blessing. You can also customize it to do as you want, maybe just mute those segments or other things. Check it out!

That sums up all the youtube-based addons.

## My Password Manager Bitwarden
There are many good password managers out there and in my opinion it is a must to use one nowadays. Using the same password for every login is much worse than having one actually good one that you change from time to time, so all your passwords can be cryptic ones like kr^P2*gz&Z2Uhd.

Make sure to look for a password manager that can be installed on all your systems, including your phone, tablet and all PCs you might use. This ensures that your passwords can be synched on all devices, making it easier to use.

My choice is **Bitwarden** as I trust it enough to save my passwords and is available on MacOS, Windows, Firefox, iOS, Android and Linux.

## SteamInventoryHelper / SteamBooster
This plugin is for those, who take the  Steam Platform / Steam Market a little more serious. **SteamInventoryHelper** shows you additional information about your inventory and sales information that you would otherwise not be able to see. It also offers a feature to mass-autosell items, which came in very handy for me. Sadly, **SteamInventoryHelper** is a chrome-based plugin with no port to Firefox. So whenever I need to use it, I use it in Brave. The Plugin **SteamBooster** gives some of the functionality of SteamInventoryHelper on Firefox, but it's not very close to all its features.

## User-Agent Switcher
Now, why would a normal person need such a plugin? Reality is, we live in a stupid marketing driven world where Websites made by google work best with a google-based Browser (Chrome). For Example, there was a period of time, where youtube videos would load faster on chrome, than on Firefox. Turns out, that was blatantly false, and it was deliberately added by google, that if your browser was Firefox, youtube videos were slowed. People figured this out, as they switched their user-agent (the text field in your browser that tells the server what kind of browser it is) to a chrome user-agent (despite it still being Firefox), videos would load fast again. Google got sued, they paid their bill, what stuck is the image that Firefox is slow.

That is the main reason I use this plugin, but also sometimes I want to test webservers and their responses on different browsers. Another example is the windows 10 download. You cannot download the .iso file directly from the website, at least not if microsoft thinks you are on windows. If you switch your user agent to act like a linux system, suddenly the download page changes drastically, and you can get the .iso directly.

## Video Downloaders
My Plugin of choice currently is **Video DownloadHelper**. However, I am not super happy with this plugin as it needs a program installed on your PC on the side. I heared that **DownThemAll!** is better, but I have not tested it yet.

For Youtube Downloads, I do not use browser addons. Look for 'yt-dlp' instead.

## Vimium
At this point in time, I have not yet installed this plugin, but I am planning to. This allows you to navigate webpages with vim-like motions and no longer rely on a mouse or trackpad. I see that this is not necessary for most users, but as I transition to a keyboard-only lifestyle, this will help out a ton.

## ClearURLs
This is a plugin that I don't have installed, but might be very interesting to you. This plugin automatically removes trackers and unnecessary parts of a URL. If you have ever seen an Amazon URL, 90% of those URLs are trackers and unnecessary metadata. This plugin removes those trackers from your URL-Bar directly for a nicer browser experience. Do keep in mind that it might remove affiliate links too, some might not care about that but keep that in mind.

## UniversalBypass

This addon will unshorten shortened URL's. I personally don't use this plugin yet, but the advantage is clear. Some URL shorteners require you to see ads or wait for some time until you get to your actual destination. This plugin directs you straight there. I might try that very soon!


## Final Words
That sums up my current addons and some more. I will try to keep this post up-to-date as I change my browsing habits or add new addons. For now, enjoy this list and try some of them yourself!