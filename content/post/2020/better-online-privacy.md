---
title: "Better Online Privacy"
subtitle: "using a counter-intuitive approach"
date: 2020-12-01T08:17:59+05:30
draft: true
tags:
- internet
- privacy
- millennials
- advertisement
- tracking
---

Privacy is a myth. We have all heard that. Some of us agree, some disagree, most could not care less. The most common response I have gotten to statements about privacy is "Well, not like I have anything to hide." Yes, you probably do not. But would you be comfortable if your Uber driver could tell the brand of underwear you wear? Yes, we all wear one, they make them in a small set of colours, and a specific set of models, but yet, it makes you uncomfortable---even for a second---when someone points out what you are wearing, even as a guess. That, my friend, is our sense of privacy.

In the same context, let me tell you how it works on the Internet. Imagine you went to a Jockey store in your locality to buy your favourite innerwear. The man at the counter takes down your details. And then, every time another store owner---any store owner, including the one that sells coconuts near your flat---goes to the store (not even to buy innerwear), the man at the counter shows him the list of customers in the locality and tells him what they bought, which includes details about you and what you bought---and how frequently you buy. This coconut seller then correlates this information about you with your last date, and the next time you go to buy coconut from him, he asks you, 'So, when are you giving us the news?'

Right. Creepy.

Welcome to the world of Data. This is how it works online. What is worse? Creating a fake identity is illegal, and services that do not want to link your actual identity to the identity on their site are rare. The two equations combine to give you the impression that your person and your online presence are the same.

No, they need not be.

{{< toc >}}

## How tracking works

If you know a little about how browsers work, you would know about cookies. If you do not, that is fine. A cookie is a little text file, which contains information that sites can read. Cookies can contain varied information, including whether you have visited a site, whether you have signed into a site, what items you have in your shopping cart and so on.

When the same site that creates the cookie reads the cookie, that is not much of an issue. In the analogy above, the man at the store knowing what you buy from him is probably okay; him telling others what you buy is not.

Let us go through the different types of cookies, though, so that the term itself does not make you paranoid.

### Session cookies

Session cookies store information for the web session you are running at the moment. For instance, unless I have removed Google Analytics from this site (which you can read about in my [privacy policy]({{< ref "/page/privacy.md" >}})), is what Google stores to tell me someone visited my site, and how long you spent on which page(s). No, I cannot personally identify you---I cannot even tell the difference between you and your cat that loves your keyboard. I care about others' privacy as much as I care about mine if not more.

The point is, once you close your browser session, these cookies get discarded.

### First-party persistent cookies

These are cookies stored by sites to identify you and "make your experience better", like cookies that save your login to the site, what data you have filled in a form on the site, or some sites store what you have in your shopping cart, so that if the session closes for some reason or you get distracted and go away to a different site, you will have the products in the cart when you go back to the site.

These cookies are generally harmless. Think of these cookies as the man at the store that waves at you when he sees you when you return to the store (and does not talk to anyone about anyone).

### Tracking cookies

These cookies are infringement on privacy. These cookies watch your browsing activities including where you go, what links you click, etc. The makers of these cookies "give you a better experience" by tracking your browsing habits and showing you what you like---this includes advertisements.

But this is nothing new.

You would notice that when you watch sports channels, you get advertisements about beer. Daily soaps have "relevant" advertisements. This has started happening at a much larger scale now, and with much more personal data.

These sites that track you, can create a personal profile of you. And no, I am not saying it without basis---I experienced it personally.

## But there is more

Beyond serving you "relevant" advertisements, companies used this information to turn political opinions of people. Ever since the Cambridge Analytica scandal came out, people removed a good chunk of personal information from their Facebook profiles, and yet, you would have noticed that what Facebook shows you is still relevant. How does that work?

Enter: Browser fingerprinting

In theory, sites can uniquely identify every browser. Even without cookies. A browser fingerprint is a combination of factors such as your browser name, browser version, the operating system that you run, the time zone you are in, your system language, the preferred language on your browser, etc. Together, they form a unique profile.

Also, in theory, as of now Google and Facebook are the companies that have enough capability to identify you by browser across sites[^brax-browser]. You get a great explanation of a browser fingerprint in this video (do not worry, your watching the video below will not affect your YouTube history or pattern). Do you want to know if your browser fingerprint is unique? Go to [Cover Your Tracks](https://coveryourtracks.eff.org/) by Electronic Frontier Foundation to see for yourself.

[^brax-browser]: [Which browser should I use?](https://www.youtube.com/watch?v=9z3_Em4S99g)

{{< youtube "uH-oSU1W5lk" >}}

## Privacy, the conventional way

Conventionally, we block cookies, or use Private Window (or Incognito Mode, or InPrivate Mode) when we do not want cookies stored and tracked. That should work for most sites, but we also need to remember that Google and Facebook are the largest ad agencies in the world, and while they may not care about us as a person, they still would build a profile of us to serve us most relevant ads so that they get the largest number of click-throughs, and thus, revenue.

If---if---they share this data with others, the others could use the data for different other purposes. None of these is in our best interests. And while this does seem like a conspiracy theory, any security expert will tell you that I am right (more so because what I am saying rests on the shoulders of such security researchers, who have been in the field for decades).

You could install tools like Privacy Badger by Electronic Frontier Foundation, or Ghostery or something else, and think that you are safe. While they do give you some level of safety, they cannot protect you from browser fingerprinting.

Like Mr Braxman says, if you sign into Google on a browser and Google gets the browser fingerprint, the effect gets multiplied. As an example, imagine that you visited some thirty sites on a certain day in a session. Assume that all the thirty sites have some or the other Google tracking mechanism, including Google Analytics configured to use persistent storage. Assume that you have not signed into Google on this browser yet. In the first of those thirty sites, Google saw you as a new person. The second site onwards, it said, 'Oh, I have seen you before', using your browser fingerprint.

Imagine that you decide to check your email after all this activity and you sign into Gmail. And there, Google has now linked all that activity to your Google profile. It now knows who accessed what.

Privacy the conventional way is not the best. At least it does not work with Google and Facebook.

The problem with these companies creating your profile is that you may be using an Android phone that has all Google Ecosystem applications, such as Google News, which could show you specific news pieces based on your interest profile. This is not healthy for healthy democracies. Google using your interest profile to merely sell products or advertisements is still not innocuous, because advertisers may get this data, use cohort analysis and influence content. Again, not healthy.

And need I say anything about Facebook?

## My problem with the conventional way

Not that I personally have a problem with the conventional way. The problem is, I use Linux at home. The market of desktop linux is depressingly small, which makes me a minority anyway. Add other browser parameters to it and making my browser not unique becomes impractical.

## Privacy, the new way

If anyone looked at my dock, they would think I am a browser collector. I use Firefox, Chrome, Chromium, Opera, Brave and Edge.

Browser isolation.

The basic idea is to separate {{< smallcaps GAFAM >}} from each other, and the others.

GAFAM
: Google, Apple, Facebook, Amazon, and Microsoft

These five companies have the largest amount of your data and have the power to process it all. Google, Apple and Microsoft have their operating systems; Apple and Amazon are two of the largest retail forces[^e-tail]; Microsoft, Apple and Google have their browsers and browser platforms; Google and Facebook are the largest ad agencies in the world; Facebook is the largest social network with its apps everywhere---Instagram, Facebook, Messenger, WhatsApp; Google, Amazon and Microsoft have the largest cloud services ... in short, these are powerful entities.

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
