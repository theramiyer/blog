---
date: "2017-10-13T00:00:00Z"
tags:
- automation
title: The World of Automation Today (Part 3)
---

Having had the [communication]({{< ref "/posts/2017/2017-10-11-the-world-of-automation-today-part-1" >}}) and the [build]({{< ref "/posts/2017/2017-10-12-the-world-of-automation-today-part-2" >}}) taken care of, we wanted a streamline social communication as well. This was a relatively new thought. And this part is so small, we could do a mini case study within this post. So let's dig in.

## Communication

Social communication is an important part of running a blog. Given the dwindling number of readers today, it's all the more important to reach the right audience, and in good number. Otherwise, there's no point in running the site at all. But, there were a few issues we identified, in this area.

### Problem statement

We're the most active on three social channels:

1. Twitter
2. Instagram
3. Facebook

Every time a post goes live, we go to the site, copy the link, open Twitter, paste the link, write a short description, post. Open Facebook (or Facebook Page), paste the link, add the description, and post it. Instagram, we handle separately anyway.

### Possible solutions

There are some simple ways to do this, like connecting the Twitter account to the Facebook page. But this way, the posts on Facebook don't carry all that they should. We didn't want inter-social-network posting. We were left with two options:

1. dlvr.it
2. Buffer

Buffer seemed like a better option, in our case. We wanted a personal touch added to each post we made to these networks. But, was there a way we could do this without leaving Slack? Because Slack is something we use all the time to handle the site.

### The chosen solution

We created a profile on Zapier. Next, we connected our social accounts. After this, we created _Zaps_ which could do what we wanted done.

1. We created a listener Zap to watch for new content on the site, using the site's RSS feed.
2. We created a step in the same Zap to make a post to our Slack channel, as soon as there's new content on the site. This way, we were notified as soon as a new post went live. Apart from this, we configured the step to also give us the URL of the new post.
3. We created two Zaps, one each for Facebook Page, as well as Twitter. We configured this Zap to post Slack profile-created (and not bot-created) content to Twitter as well as Facebook.

This way, what we now do is copy the URL from the message the RSS Zap sends us, create a new message in the channel with a short custom description of what the new post is about, paste the link at the end of the message, and hit Send. Right. From. Slack. No need to switch between apps! In a second or two, posts about the new blog post appears on the Facebook Page, as well as Twitter!

Now, with all this in place, we can simply concentrate on what we care about the most: reading, reviewing, and discussing. So when someone asks for automation, this is what they want. They want to concentrate more on what they care about, at the core of their businesses. Is it good for IT engineers? Well, that's something time would tell. Yes, many of us will lose our jobs because as many of us as there are in the industry would not be required anymore. But is it healthy to stunt progress because of that? I'm not sure. Perhaps, it's better to wait and watch, before we decide.
