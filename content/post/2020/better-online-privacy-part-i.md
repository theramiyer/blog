---
title: "Better Online Privacy (Part One)"
subtitle: "using a counter-intuitive approach"
date: 2020-12-01T08:17:59+05:30
description: |
    This post describes what privacy is, and why you should care about it. We take a layman approach to look at what online tracking is and how it works. We look at the different types of cookies, and see why not all cookies are creepy. We see how we protect our privacy conventionally, and why we face a problem now---what the problem is.
tags:
- internet
- privacy
- millennials
- advertisement
- tracking
---

Privacy is a myth. We have all heard that. Some of us agree, some disagree, most could not care less. The most common response I have gotten to statements about privacy is "Well, not like I have anything to hide." Yes, you probably do not. But would you be comfortable if your Uber driver or your personal banker could tell the brand of the inners you wear? Yes, we all wear them, they make them in a small set of colours, and a specific set of models, but yet, it makes you uncomfortable---even for a second---when someone points out what you are wearing, even as a guess---unless you're purposefully showing it as a statement (don't mean to judge). That, my friend, is our sense of privacy.

In the same context, let me tell you how it works on the Internet. Imagine you went to a store in your locality to buy your favourite innerwear. The man at the counter takes down your details. And then, every time another store owner---any store owner, including the one that sells coconuts near your flat---goes to the store (not even to buy innerwear), the man at the counter shows him the list of customers in the locality and tells him what they bought, which includes details about you and what you bought---and how frequently you buy. This coconut seller then correlates this information about you with your last date, and the next time you go to buy coconut from him, he asks you, 'So, when are you giving us the news?'

Right. Creepy.

Welcome to the world of Data. This is how it works online. What is worse? Creating a fake identity is illegal, and services that do not want to link your actual identity to the identity on their site are rare. The two equations combine to give you the impression that your person and your online presence are the same.

No, they need not be.

{{< toc >}}

## How tracking works

If you know a little about how browsers work, you would know about cookies. If you do not, that is fine. A cookie is a little text file, which contains information that sites can read. Cookies can contain varied information, including whether you have visited a site, whether you have signed into a site, what items you have in your shopping cart and so on.

When the same site that creates the cookie reads the cookie, that is not much of an issue. In the analogy above, the man at the store knowing what you buy from him is probably okay; him telling others what you buy is not.

Let us go through the different types of cookies, though, so that the term itself does not make you paranoid.

### Session cookies

Session cookies store information for the web session you are running at the moment. For instance, unless I have removed Google Analytics from this site (which you can read about in my [privacy policy]({{< ref "/page/privacy.md" >}})), a session cookie is what Google stores to tell me someone visited my site, and how long you spent on which page(s). No, I cannot personally identify you---I cannot even tell the difference between you and your cat that loves your keyboard. I care about others’ privacy as much as I care about mine if not more.

The point is, once you close your browser session, these cookies get discarded.

### First-party persistent cookies

These are cookies stored by sites to identify you and "make your experience better", like cookies that save your login to the site, what data you have filled in a form on the site, or some sites store what you have in your shopping cart, so that if the session closes for some reason or you get distracted and go away to a different site, you will have the products in the cart when you go back to the site.

These cookies are generally harmless. Think of these cookies as the man at the store that waves at you when he sees you when you return to the store (and does not talk to anyone about anyone).

### Tracking cookies

These cookies are infringement on privacy. These cookies watch your browsing activities including where you go, what links you click, etc. The makers of these cookies "give you a better experience" by tracking your browsing habits and showing you what you like---this includes advertisements.

But this is nothing new.

You would notice that when you watch sports channels, you get advertisements about beer. Daily soaps have "relevant" advertisements. This has started happening at a much larger scale now, and with much more personal data and personal targeting.

These sites that track you, can create a personal profile of you. And no, I am not saying it without basis---I experienced it personally.

## But there is more

Beyond serving you "relevant" advertisements, companies have used this information to turn political opinions of people. Ever since the Cambridge Analytica scandal came out, people removed a good chunk of personal information from their Facebook profiles, and yet, you would have noticed that what Facebook shows you is still relevant. How does that work?

Enter: Browser fingerprinting

In theory, sites can uniquely identify every browser. Even without cookies. A browser fingerprint is a combination of factors such as your browser name, browser version, the operating system that you run, the time zone you are in, your system language, the preferred language on your browser, etc. Together, they form a unique profile.

Also, in theory, as of now no companies other than Google and Facebook have enough capability to identify you by browser across sites[^brax-browser]. You get a great explanation of a browser fingerprint in this video (do not worry, your watching the video below will not affect your YouTube history or pattern). Do you want to know if your browser fingerprint is unique? Go to [Cover Your Tracks](https://coveryourtracks.eff.org/) by Electronic Frontier Foundation to see for yourself.

[^brax-browser]: [Which browser should I use?](https://www.youtube.com/watch?v=9z3_Em4S99g)

{{< youtube "uH-oSU1W5lk" >}}

## Privacy, the conventional way

Conventionally, we block cookies, or use Private Window (or Incognito Mode, or InPrivate Mode) when we do not want cookies stored and tracked. That should work for most sites, but we also need to remember that Google and Facebook are the largest ad agencies in the world, and while they may not care about us as a person, they still would build a profile of us to serve us most relevant ads so that they get the largest number of click-throughs, and thus, revenue.

If---if---they share this data with others, the others could use the data for different other purposes. None of these is in our best interests. And while this does seem like a conspiracy theory, any security expert will tell you that I am right (more so because what I am saying rests on the shoulders of such security researchers, who have been in the field for decades).

You could install tools like Privacy Badger by Electronic Frontier Foundation, or Ghostery or something else, and think that you are safe. While they do give you some level of safety, they cannot protect you much from browser fingerprinting (also, they could add to the uniqueness of your browser fingerprint, without intending to do so).

Like Mr Braxman says, if you sign into Google on a browser and Google gets the browser fingerprint, the effect gets multiplied. As an example, imagine that you visited some thirty sites on a certain day in a session. Assume that all the thirty sites have some or the other Google tracking mechanism, including Google Analytics configured to use persistent storage. Assume that you have not signed into Google on this browser yet. In the first of those thirty sites, Google saw you as a new person. The second site onwards, it said, 'Oh, I have seen you before', using your browser fingerprint.

Imagine that you decide to check your email after all this activity and you sign into Gmail. And there, Google has now linked all that activity to your Google profile. It now knows who accessed what.

Privacy the conventional way is not the best. At least it does not work with Google and Facebook.

The problem with these companies creating your profile is that you may be using an Android phone that has all Google Ecosystem applications, such as Google News, which could show you specific news pieces based on your interest profile. This is not healthy for healthy democracies. Google using your interest profile to merely sell products or advertisements is still not innocuous, because advertisers may get this data, use cohort analysis and influence content. Again, not healthy.

And need I say anything about Facebook?

## My problem with the conventional way

Not that I personally have a problem with the conventional way. The problem is, I use Linux at home; the market of desktop linux is depressingly small, which makes me a minority anyway. Add other browser parameters to it and making my browser not unique becomes impractical.

The idea is to find an approach that works, and at the same time, is practical. We will [look at that in the next post]({{< ref "better-online-privacy-part-ii.md" >}}).
