---
title: "Are WhatsApp chats private"
subtitle: "Understanding WhatsApp’s response"
date: 2021-01-14
description: |
    After WhatsApp updated its privacy policy in January 2020, a lot of confusion started going around, to which, WhatsApp responded with what it can and cannot do. Read on to understand if you still need to worry about WhatsApp sharing information with Facebook.
tags:
- privacy
- tracking
- advertising
- social media
---

On the 13th of January, WhatsApp put out a tweet in which they said they wanted to make something "100% clear". The post said what WhatsApp does not or cannot do:

1. WhatsApp cannot see your private messages or hear your calls and neither can Facebook.
2. WhatsApp does not keep logs of who everyone is messaging or calling.
3. WhatsApp cannot see your shared location and neither can Facebook.
4. WhatsApp does not share your contacts with Facebook.
5. WhatsApp groups remain private.
6. You can set your messages to disappear.
7. You can download your data.

This was perhaps in response to the rumble around the world, and the backlash that WhatsApp received. Perhaps a response what to some news channels in our country aired. Something like this:

{{< youtube BSKZ1LrpfFI 116 140 >}}

{{< toc >}}

My [previous post]({{< ref privacy-and-you.md >}}) already talks about what this new privacy policy means for you. In this post, I will tell you what this response of WhatsApp's means for you.

## WhatsApp's response to the rumble

WhatsApp issued [full front-page advertisements](https://www.ndtv.com/india-news/whatsapp-respects-your-privacy-full-page-newspaper-ads-amid-row-2351692) on most of India's leading newspapers. A full front-page advertisement is expensive. Buying the front page on most of India's leading dailies means a lot of money. If WhatsApp has gone that distance, this is serious, and understanding the implications is important for you.

### WhatsApp cannot read your private chats

The big one.

What {{< smallcaps NDTV >}} India showed is perhaps what most people think this is about. But no, WhatsApp is right in saying that it cannot read your private messages---it cannot read your _private_ messages. Under the hood, WhatsApp uses Signal's protocol to transfer messages, which ensures end-to-end encryption. But, of course, since WhatsApp has not made its code open source, independent security specialists cannot verify if this is the case.

Assuming that WhatsApp is being honest about the protocol it uses---which I think is the case---messages that you send to your friends and family are safe, including those that you send in groups.

Then where is the problem?

This is _not about your private messages_. This is about business messages. [In my previous post]({{< ref privacy-and-you.md >}}), I wrote about WhatsApp for Business, which also has an {{< smallcaps API >}} that businesses can use to send you messages. This is in cases where a business has a large number of customers, and a team manages customer communication, or in cases where the business needs to automate messaging, such as delivering account updates to you.

WhatsApp's privacy policy says that businesses can choose to share even the messages (as in the message text) with WhatsApp (which WhatsApp can now in turn share with Facebook).

WhatsApp and Facebook can read these messages and make sense of them. These messages could include anything, including what you bought, how much you bought it for, and so on. If your bank chooses to send you account updates over WhatsApp, good luck---now one of the two largest advertising companies---and data machines---in the world knows how much you earn every month, how much you spend where, what your investments are, etc.

Why would businesses use WhatsApp? Because sending messages over WhatsApp is much more reliable, and cheaper than regular {{< smallcaps SMS >}}.

This is a problem because an advertising company knowing you like cars is one thing; knowing what car you may buy based on your financial situation is entirely another. Why would Facebook want this information? Because using this, it would place you in a specific target group, and try to sell products of that category to you. Advertisers can utilise this data to their benefit---this is not information you want advertisers to know (this is information you keep them guessing about). Sharing such information will open new possibilities for them, and create new privacy problems.

### WhatsApp does not keep logs of whom you message

As per [their privacy policy](https://www.whatsapp.com/legal/updates/privacy-policy/?lang=en), this information is one of the 'automatically collected' pieces of information.

> Usage And Log Information. We collect information about your activity on our Services, like service-related, diagnostic, and performance information. This includes information about your activity (including how you use our Services, your Services settings, how you interact with others using our Services (including when you interact with a business), and the time, frequency, and duration of your activities and interactions), log files, and diagnostic, crash, website, and performance logs and reports.  
> ---WhatsApp Privacy Policy

The point is, you have agreed to let WhatsApp log this information. Perhaps it does not _yet_ log this information. But given that they have already mentioned this in their privacy policy and you have agreed to it, WhatsApp is not required to ask for permission again.

### WhatsApp cannot see your shared location

Again: it says it cannot see your _shared_ location. Remember that WhatsApp does collect location information for 'analytics'. Apple App Store's privacy labels can tell you this. In other words, WhatsApp need not read what location you share with others; it would rather collect it from your phone.

### WhatsApp does not share your contacts with Facebook

Notice that WhatsApp does not say that it does not upload contacts. In fact, its privacy policy makes it clear that WhatsApp does upload your contacts periodically, and that it even manages your contacts. It says that it also manages contact information about those not using its services, although in a way that ensures it cannot identify them.

But, it does not say that WhatsApp will not share the information with Facebook. By agreeing to the updates privacy policy, you allow WhatsApp to share your contacts with Facebook. The policy generally states that it will share data with Facebook; it does not specify that contacts is among the information it will not share with its parent company.

The rest of the points are not worthy of commentary in this context.

## It goes beyond Facebook

If you read the privacy policy, you would know---and this is something the commentators seem to have missed---that WhatsApp can now share data with third parties for processing. They do mention that Facebook companies bind third parties by legal agreements which also detail how the third-parties can handle your data. But we must remember that this opens possibilities for breaches and data leaks.

Every company that gets into agreements to handle data says it will take all necessary steps to guard the data. When data leaks happen, companies wash their hands off and give us suggestions like changing our password.

One point worth mentioning, is that Facebook will be careful about what data it gives to third parties, because it would not want the third party to become a competitor who got data with a much smaller investment.

## The options

I saw that on the Internet, people were offering solutions, helping you continue to use WhatsApp without having to worry about these changes to the privacy policy. Here are some of the solutions given. I will add a point or two to consider, if you are considering that option.

### Tighten privacy controls

This is the most frequent suggestion given to limit information that WhatsApp gathers about you: Go into your phone settings and control the amount of information WhatsApp gets from your phone.

- Use a {{< smallcaps VPN >}} to hide your IP address.
- Turn off location sharing with WhatsApp so it cannot grab your location.
- Turn off automated backup of chats.
- Turn on disappearing messages.
- Remove personally identifying details from your profile.

Yes, some of this _may_ help you gain back some privacy, but the big hole here is _messages sent to you by businesses_.

Secondly, we must all understand that smartphones started sharing data about WiFi access points long, long ago. Google, Facebook, Microsoft, Apple, etc. have this information already. When you allowed your phone to keep looking for WiFi hotspots (so that they can notify you of free hotspots), your phones collected names of access points along with their locations (because nobody turns off location services) and shared these details with these companies. WhatsApp can see your network details (meaning, the {{< smallcaps SSID >}} of your WiFi). Now think about if a {{< smallcaps VPN >}} can help you. Tracking the IP address is a method to know your approximate location. When you have the {{< smallcaps SSID >}} information which you can correlate with the accurate location, why would you bother with the IP address?

Turning off chat backups can prevent Apple and Google from reading your data; it makes no difference to WhatsApp or Facebook. As for disappearing messages, like WhatsApp has made it amply clear, it does not care about your private chats; turning on disappearing messages has no effect on WhatsApp learning whom you message, how frequently you message, for how long you message, etc. Also, Facebook already has personally identifiable details about you; all it needs is the phone number to correlate your Facebook information with your WhatsApp chats. Even if you change your phone number, Facebook by now knows who you are, based on the unique identifier that WhatsApp uses to identify your account. This unique identifier will not change when you use the 'Change phone number' feature of WhatsApp. And remember, WhatsApp can store your historical phone number for legal reasons.

This correlation may slightly vary if you chose not to let WhatsApp share data with Facebook.

### Business and financial interactions

We can categorise the next set of suggestions under financial privacy:

- Do not use WhatsApp Payments.
- Do not interact with businesses.

The first is fully in your control. And it cannot be any simpler. Do not turn on WhatsApp payments. As a result, you do not give direct access to your bank account, thereby preventing WhatsApp from reading information such as your bank balance. This in my view is a legitimate option.

I do not think the second one is a legitimate way to escape financial surveillance. I know a handful of apps that have a little tickbox wherever you have any account related transaction, saying, 'Get updates on WhatsApp'. If you miss unticking this box even once, you do not see this box anymore, and the business starts routing all communication through WhatsApp. You must contact the customer care to disable WhatsApp communication and enable {{< smallcaps SMS >}} communication. And there is no guarantee that the customer care team will oblige.

Although, of course, you have the option to not use WhatsApp for shopping. But again, there is no telling that your bank will not route account-related communication through WhatsApp in the future. They will look at WhatsApp as a cheap, reliable communication solution.

### The major revelation

One of the points put forth by some on the Internet was how Facebook, Facebook Messenger and Instagram were collecting way more data than necessary to provide their services. Zak Doffman posted their Apple App Store privacy labels on Twitter:

{{< figure src="https://blogfiles.ramiyer.me/2021/images/whatsapp-fb-insta.jpeg" alt="Information that Facebook family of apps collect" caption="Information that Facebook family of apps collect | Credit: [Zak Doffman](https://www.forbes.com/sites/zakdoffman/2021/01/12/you-can-use-whatsapp-after-facebook-apple-imessage-and-signal-backlash-but-change-this/?sh=64166ced798f)" >}}

True, Facebook, Facebook Messenger and Instagram are way out of line. But I still disagree with that WhatsApp is benign. Remember that while Facebook's other apps do collect way more information compared to WhatsApp, going forward, WhatsApp is going to be the nitrous booster to the ad engine that Facebook is, by getting your business interactions.

Google seems much better, doesn't it? Here is something for you to think about:

Apple made it mandatory for app makers to use their privacy labels to tell users what data they collect from users’ phones. Facebook complied but complained---[created a lot of noise](https://techcrunch.com/2020/12/16/facebook-apple-small-business). Google went silent. Google apps on the Apple app store have not received updates in a month---not one Google-made app has received an update in a month.

As for me, I have not had Google and Facebook apps for weeks now, WhatsApp being a temporary exception, because if I have to reinstall it for some reason, I will have to accept the new privacy policy, which I will not. I would rather wait until the end of the month, and utilise the platform to campaign against it, while I can.

This awakening about privacy might change the way we look at smartphones, and somehow, that is heartening.
