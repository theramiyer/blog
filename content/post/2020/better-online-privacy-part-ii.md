---
title: "Better Online Privacy (Part Two)"
subtitle: "using a counter-intuitive approach"
date: 2020-12-01T15:17:59+05:30
description: |
    Guarding one's privacy online could be as simple as applying some basic principles to browsing. A slight change in behaviour can have a drastic effect on your online privacy. This post has simple steps that you can use to guard your privacy online, including working with browser fingerprinting.
tags:
- internet
- privacy
- millennials
- advertisement
- tracking
---

In [the previous post]({{< ref "better-online-privacy-part-i.md" >}}), we saw what we mean by privacy, why it matters, and why we say privacy is a myth in today's world of connected services. We also looked at what methods companies use to track us online. We saw that the conventional methods of protecting our privacy online does not work in cases such as Google and Facebook. In this post, we look at how to handle tracking by large corporations like Google and Facebook, who track you using your browser fingerprint. We will look at the techniques to handle browser fingerprinting, and look at what we will need to keep in mind to protect our privacy, when using devices like our cell phone.

And you need not be a "techie" or an enthusiast to do this---these are simple-to-understand steps that a normal person can use. And these are all free or freemium products and services.

{{< toc >}}

## Privacy, the new way

If anyone looked at my dock, they would think I am a browser collector. I use Firefox, Chrome, Chromium, Opera, Brave and Edge.

Browser isolation.

The basic idea is to separate {{< smallcaps GAFAM >}} from each other, and the others.

GAFAM
: Google, Apple, Facebook, Amazon, and Microsoft

These five companies have the largest amount of your data and have the power to process it all. Google, Apple and Microsoft have their operating systems; Apple and Amazon are two of the largest retail forces[^e-tail]; Microsoft, Apple and Google have their browsers and browser platforms; Google and Facebook are the largest ad agencies in the world; Facebook is the largest social network with its ubiquitous apps---Instagram, Facebook, Messenger, WhatsApp; Google, Amazon and Microsoft have the largest cloud services ... in short, these are powerful entities.

[^e-tail]: [Apple, Not Amazon, Is The Largest Online Retail Force](https://www.forbes.com/sites/danrunkevicius/2020/08/17/apple-not-amazon-is-the-largest-online-retail-force/?sh=be2651f64cb2)

## Browser isolation

Separate these five into five different browsers. Use all Google services on a single browser, remain signed into Google on that browser---it will not matter as long as you do not visit non-Google sites on the same browser. You cannot take back your data from Google; it already has your data. It has embedded itself too deep in our lives with their products and services---Google Search, Google Chrome, Android, Google Meet, Hangouts, Google Photos, Google Duo, Google Analytics, Google AdSense and AdWords, Google Translate, Google Pay, Google Maps, YouTube, Google Home ... the list is almost endless. The point is, they are so good at what they provide, that we do not look for alternatives. It does not make sense to run away from Google (a.k.a. De-Google). Use Google services, but do not mix them with others.

Use Amazon on a separate browser---Amazon shopping, Prime Video, Music, Kindle on browser, Amazon Web Services, etc. Amazon in general likes to keep its data to itself. Your data on Amazon is probably safe from Google and others, but again, sites using Amazon's services may get this data.

Use Microsoft and allied services on a separate browser. Remember, Microsoft acquires companies and does not rebrand them. Know that SwiftKey, LinkedIn, GitHub, etc. are Microsoft products and services. If you use your Microsoft ID for these services, use them all on the same browser, and do not use them on any other browser.

You get the idea.

And then, use a browser for everything else. I do not remain logged in anywhere, because I don't care. I have password managers, and when needed, I can enter the password. You can choose to clear cookies when closing the browser session. To protect yourself from cookies that sites can use to track you, you may want to use Firefox for "everything else", and use Firefox Containers to separate your activity from each category. Firefox's privacy features are, in general, better than other browsers'.

For some of the activities (yes, other legal activities) such as banking, you may want to use a live system[^live-os]. But this is for better security rather than privacy.

[^live-os]: [How to Create Ubuntu Live USB in Windows](https://itsfoss.com/create-live-usb-of-ubuntu-in-windows/)

## Communication

Email communication is something we may overlook. But is some advice on protecting your privacy and sanity by channelling the communication:

1. In general, do not use a Google or Microsoft ID for social networking. If you have no other choice, at least disable email notifications for your activities. Better yet, limit email notifications to security notifications. Social networks sharing profile data about you to competing services, while still a possibility, is unlikely.
2. Have a separate, non-Google or non-Microsoft ID for shopping. Preferably, use a private email provider like ProtonMail. These privacy-respecting providers do not read or analyse your data.
3. Use a separate email for person-to-person communication. This way, even if a service builds your profile based on your contacts and their activities, you limit the data.
4. Look at what financial data about you is available with whom and accordingly, separate financial communications into a different service. Communication from financial organisations contain financial information that is gold to these services. Your financial profile, combined with your political profile and your online behaviour is valuable.
5. Never open your password-protected financial statements within the mail services. Download these statements and open them outside of your browser environment, in a reader that is not signed into any service. The woman who made your wok does not need to know what you ate for dinner.
6. Do not use the email ID that you use for social networks, to sign into shopping sites.

## Phone notifications

Another point we overlook is our phone. For example, any notification you receive on your Android phone gets sent through GApps. Depending on the app's privacy policy, the app may or may not share information with Google, in which case, browser isolation will become less effective.

The solution is to turn off notifications, right?

Yes, but not within Android, but within the app. Turning off notifications within Android settings merely stops the _phone_ from showing the notification to you; the app still sends the notification to Google, and your phone still receives the notification. And no, notifications do not directly come from the apps; the apps send the notification to a Google or Apple service, which in turn sends it to your phone.

You may get some level of privacy by turning off the notification within the app. If the notification settings redirect you to Android settings, well, good luck.

De-Googling is not an option for most, including me.

## The right ad blocker

Use a network-level ad-blocker. AdGuard and Pi-Hole are two great options, which are open source.

## Be careful

Remember which browsers you use for what, and make sure you do not sign into the services not meant to run on that particular browser.

## Enable data deletion

Automatic deletion of data is an option available with most major service providers now. The services design these features to not be discoverable. But you can find out about these features in the documentation of the services you use. Find these settings and enable automated deletion of data. At one point, you will starve these services of your data, and the "AI algorithms" in these services will pick up any little bit of data as a pattern---you will find it easy to manipulate what data these services have about you, after a point---remember not to fall for the suggestions, though, because the algorithm _will_ pick up on that and start building a legitimate, usable pattern.

## But what about the fingerprint

One way to approach unique fingerprints is to make yourself not-so-unique---evade the browser fingerprinting technique by making yourself more common. But that could be too much of a cost to pay, because then you would have to choose an operating system that the masses run, a browser that the masses run, and take a chance at installing those extensions that the masses install. The price you are paying here is the experience you will have with the operating system and the browser.

The other way is to use a browser and the extensions of your liking but change the fingerprint every now and then. The simplest way to do this is to not maximise your browser, and change the window size frequently. If every session of yours is unique, you will never be "seen again" by a service.

## Browsing on the phone

While most apps run within their containers, your operating system can still see a lot of your data. Also, devices have device fingerprints, and evading that is much more difficult than a browser fingerprint. Limit the use of the browser on your device as much as possible. Do not use Chrome to browse non-Google sites on that device if you are using Chrome for Google services on your computer. More importantly, do not sign into the browser you use to generally browse the web. You may miss out on the 'Send to phone' feature, but that is a small price to pay.

Of course, none of this fully protects your data. But still, people seeing you step into the Jockey store is better than your coconut seller knowing more personal details of yours.

Also, remember: Protecting data is one way to handle privacy, while flooding a service with confusing data is another. Use that tool when it makes sense. But again, the algorithms are getting smarter by the day, because the business of the corporations that crunch your data, depends on this data---they will not rest.

Also, [paying for services](https://protonmail.com/pricing) may offer better privacy (no, my blog is not popular enough for someone to sponsor posts).
