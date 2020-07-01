---
date: "2017-10-12T00:00:00Z"
tags:
- automation
title: The World of Automation Today (Part 2)
---

In the [previous post]({{ page.previous.url }}) in the series, we saw an overview of what we've done over at our blog to handle team communication. I did not give a complete listing or an in-depth idea of how we've enabled team communication using Slack. It was purposeful, considering that the series is just an overview of what automation can help us achieve, or what are the small ways we can start at implementing automation.

However, it's noteworthy that offloading all of the communication to Slack was indeed a relief from setting up and managing a boatload of communication that can happen, when you're a group of people, managing something from different locations. The last time the entire crew met was perhaps sometime in the beginning of 2016. And after that, we performed a complete overhaul of the site, and almost everything we own as the group, and we didn't have to meet even once.

Anyway, that's the communication part. The next part I'd like to talk of is:

## Content Management and site build

Most of us bloggers are used to opening a web page like the Blogger Editor, or the Wordpress Editor, adding content, and then hitting "Publish". We moved away from all that, in order to modularise our site, and keep the content and the design and the _platform_ separate and change-able. We wanted a bunch of custom parts on the site, and we wanted those our way. keeping all this in mind, we switched the platform from Blogger, and went platform-agnostic. It doesn't matter anymore, where our site runs or is hosted from. We can simply carry the entire site on a small flash drive, and host it from any host of our choice (which currently is GitHub Pages). But, GitHub has applied some restrictions on how Jekyll sites are built on GitHub. In other words, Jekyll runs in "safe" mode on GitHub. So, custom Ruby plugins that we may have for cutsom functionality would not work.

However, that was the least of our problems. As book bloggers, we stay about two blog posts ahead of the live site. At any point in time, you could visit our repository, and see that there are posts up there, for the future. The challenge was, Jekyll being a static site generator, generates the site only when there's a `commit` made to the repository on GitHub. So, if we committed the new content this evening, but the post is to go live the day after tomorrow, we would have to make a `commit`-and-`push` to the repo the day after tomorrow as well, so that the post goes live at the desired time.

Travis&nbsp;CI came to the rescue. Travis&nbsp;CI is a _Continuous Integration_ system, whose job is to keep an eye on the GitHub repository where the site's code is hosted, and as soon as there's a push, pick up the code and _build_ the site, and push it back to the repo, to a different branch from where the website is hosted. All we had to do was create a `YAML` configuration file for Travis&nbsp;CI, called `.travis.yml`. Based on the configuration you set on it, it would pick up the code, build it, and then, if the build is successful, push the built site contents to the branch; if unsuccessful, it would simply abort the process and notify the owner of the failure. We instead configured a Cron job on Travis&nbsp;CI to run the build every day at 8.00&nbsp;a.m. This way, neither of us had to wake up at eight in the morning, open the Git terminal, do a `git commit --allow-empty`, and then a `git push`, just to make the new post go live.

Next, we wanted to be notified every time content was pushed, or a build succeeded or failed. Slack, again! We created a new tech channel, added the Travis and the GitHub bots to it, configured them to notify us of updates to the repo as well as about the build sessions. Now, we receive a notification from Travis&nbsp;CI every morning after a build, with its final status, as well as a notification every time someone pushes content to the repo.

The next part of it is about the social interactions, which we shall discuss in the [next post]({{ page.next.url }}).
