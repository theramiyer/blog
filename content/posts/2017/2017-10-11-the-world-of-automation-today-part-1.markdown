---
date: "2017-10-11T00:00:00Z"
tags:
- automation
title: The World of Automation Today (Part 1)
---

Hey, there! It's good to be back here. The everchanging world of IT is keeping us all on our toes. And the sub-world within IT that I'm part of, is evolving at a rate faster than we're used to. We're moving further into automation, and a faster rate than before.

So what better a time to discuss about automation than now?

From what I've seen, many of us are scared of the implications of automation. We fear that automation may reduce the importance IT engineers have, today. While one cannot completely disagree on that, we have to understand that automation gives us more time to concentrate on things that we would not have time for, if we do those things ourselves. And as an example, let's look at one of the real-life blogs and talk about automations we've implemented there.

My friends and I run a book blog. In May, we decided to go all out and switch to a more flexible, more secure, and a more efficient platform, from Google's Blogger. We moved over to a site built by Jekyll, and hosted by GitHub Pages. Ever since, here are the things we've introduced, and parts we've automated:

- Collaboration
- Content Management and site build
- Social interactions

## Collaboration

The first thing we introduced, even before we moved to the new platform was [Slack](https://slack.com/). Slack is a collaboration platform, which helps teams communicate, and along with that, do a whole lot of work, without even leaving the app. The very first thing you'd notice about Slack is its messaging interface. But you'd be way off base to think that Slack is just that. Slack features hundreds of integrations with hundreds of services out there, and is open enough to let you create your own integrations with APIs (Application Programming Interfaces). Of course, the core of Slack is messaging in channels. There's quite a lot of argument going on about whether Slack can replace email. However, we've chosen the more conservative stand there, and stuck with email as well.

The first part of the Slack implementation project was to set up everybody with Slack, and then, create proper channels where we'd like communication happening. We created a couple of channels apart from the default ones, for _human_ communication, where we thought we'd discuss the design and posting aspects of the blog.

In addition, we also created a couple of channels that would receive communication and notifications from _bots_ (I'll come to these in the [next post]({{< ref "/posts/2017/2017-10-12-the-world-of-automation-today-part-2" >}})). This made our conversations much smoother.

Why not use iMessage or WhatsApp or Facebook Messenger or any of those? Consider this scenario: my friend asks me to make a few changes to the recent post I made. As soon as I read the message, I entered the underground Metro, and in a few seconds, lost network connectivity. I continued listening to music, and thirty minutes later, arrived home. And completely forgot about the change. On Slack, though, I can simply press-and-hold the message, and select `Remind me in an hour`. I'd be reminded about the change. I can create tasks, assign them a due date, see the same in a calendar through Trello, and so on. All this, without leaving the app. If you'd like to take a look at the ever-growing directory of apps Slack supports, you can go over to [their Apps Page](https://slack.com/apps), and check them out! Until the [next post]({{< ref "/posts/2017/2017-10-12-the-world-of-automation-today-part-2" >}}), bye!
