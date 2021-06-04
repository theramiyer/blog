---
title: "How to Pick Privacy-friendly Services"
subtitle: "simple steps to take back your privacy"
date: 2021-05-22T20:26:34+05:30
description: |
    Everyone talks of privacy, but how do you pick privacy-friendly products and services? This post gives a picture of what the privacy-friendly world looks like, and what to look for in a service—all in simple steps.
tags:
- privacy
- tracking
- internet
- open source
---

The topic of privacy came up today in a conversation about picking a cloud storage for documents like journals and other writing. Given the fact that services can recognise handwriting, where is a good place to store your notes?

The larger question was, how do you pick privacy-friendly services?

{{< toc >}}

Let us start simple: Google owns Google Drive, Microsoft owns Microsoft OneDrive. They are both into advertising, though Microsoft is not as aggressive as Google is. Dropbox is solely a cloud storage company, with no known ties with the advertising world. Dropbox scores better here. Despite Dropbox's security issues,{{< sidenote dropbox-pw >}}Dropbox Security Bug Made Passwords Optional For Four Hours ([TechCrunch](https://techcrunch.com/2011/06/20/dropbox-security-bug-made-passwords-optional-for-four-hours/)){{< /sidenote >}} I have found it reliable. The drawback is that you start with a meagre {{< smallcaps "2 GB" >}} of storage. Sure, if you plan to store text documents and not much more, {{< smallcaps "2 GB" >}} is not bad; if you plan to store scanned documents, pictures, etc., you must look elsewhere.

But we are not answering specific alternatives; we are looking at the principles that help you choose an online service.

## Encryption

When you look for storage or other services, you will see a lot of them talk about end-to-end encryption, making you think your data is safe in their hands. That is not necessary.

In non-tech terms, encryption is the process of scrambling your data in a specific way. For example, take the phrase, `Hello, world!` and say, you have a key, `mykey`. If you encrypt your phrase with your key, your data could look like:

`OntswB9A+64RgMuNu+Any2EC1o7RKa5wzArjwmQ=`

To decrypt this, you could use the same key (`mykey`) and you would get `Hello, world!`. Encryption ensures that a third party is unable to read your phrase. What we saw was an example of _symmetric key encryption_: you use the same key for encryption and decryption. We also have _asymmetric key encryption_ where encryption and decryption use different keys.

Without getting into the technicalities, when a service encrypts your data, others will see it as garbled content, and would not be able to make sense of it. This gives you a great degree of protection from prying eyes.

In case of storage services with end-to-end encryption, they encrypt the data _before_ it leaves your device. This gives your data a great deal of security during transit. But this is not the whole picture.

Most services that offer end-to-end encryption also hold the decryption keys. This is a serious issue, because, the two ends for a stream of data is your device and the service's cloud storage. End-to-end encryption takes care of the data in transit. But what about data at rest? As in, the data that exists within the cloud storage? Is that encrypted or does the service decrypt any data that it receives from the users at its servers? Some services offer "encryption at rest" as well.

What we should be looking for is _zero-knowledge encryption_.

Most services that offer end-to-end encryption and encryption-at-rest, _hold the keys to the encrypted data_. This means that if or when they decide to read your data, they can read your data. In case of zero-knowledge encryption, you hold the decryption keys. Your service provider gets the encrypted data, stores encrypted data, and sends you back encrypted data. Your client (or, app) decrypts the data for you.

The caveat here is that if you lose your password, you lose your encryption keys along with it, and your data often becomes irretrievable. As an example, Bitwarden (a password manager) uses zero-knowledge encryption of your password safe. In their case, if you lose your master password, you lose your entire password vault.

Like they say, the most secure solutions are also the most inconvenient.

Storage providers holding encryption keys does not necessarily equate to malice, but you must know what you are getting into.

## Core business

The next most important aspect of a service is the service provider's core business. The simplest example is Google. Google offers a plethora of products including a mobile operating system. But the core business of Google is advertising.

How do you identify the core business of a company? Follow the money. About 80% of the global revenue of Google in 2020 was from advertisement.{{< sidenote google-revenue >}}Google - Statistics & Facts ([Statista](https://www.statista.com/topics/1001/google/)){{< /sidenote >}} Contrast this with Microsoft, 82% of whose revenue was from sale of software{{< sidenote microsoft-software >}}Microsoft - Statistics & Facts ([Statista](https://www.statista.com/topics/823/microsoft/)){{< /sidenote >}} (revenue from search advertising was 5.41%{{< sidenote microsoft-search >}}Annual Report ([Microsoft](https://www.microsoft.com/investor/reports/ar20/index.html)){{< /sidenote >}}). This is not to say that Microsoft is not part of the data economy; it merely means that Microsoft does not have enough incentive to mine your data, as of now.

## Open source software

The general idea that people have is that open source software is dangerous, because everyone can see the code, which---people think---makes it easy for attackers to find holes that they can exploit. The opposite is true. When a large community is able to see the code, they will be able to find the vulnerabilities and offer fixes for them. Security experts can audit the code for security issues and report them, which the community can pick up to fix.

Linux is open source, Windows is not. When you learn of serious security vulnerabilities that affect your computer irrespective of its operating system, you see Linux getting an update to fix the vulnerability sooner than Windows. Also, there have been instances of companies not letting users of their products know about a vulnerability until they could fix it; all the while, malicious entities exploit the vulnerability. This does not happen in the open source world, unless:

### Not truly open source

Not all companies open source their entire solution. For example, Signal is open source, but it did not share updates to its code for almost a year.{{< sidenote signal-os >}}Signal updates open-source server code after it failed to for nearly a year ([Android Police](https://www.androidpolice.com/2021/04/06/it-looks-like-signal-isnt-as-open-source-as-you-thought-it-was-anymore/)){{< /sidenote >}}

To make sure that I get the right message out, Signal is open source, but the article above makes one think that the solution is not fully community-driven. This means that the company has its own developer team, and a lot of the development happens in-house. Once in a while, the company pushes out updates to their open source code.

A community-driven open source project works differently: the community fully drives the project. They discuss all the issues out in the open, and all development happens in the open. Linux is an example of such an open source project. Projects like Signal are still good, but there may be disparity between the published code and the code that the company actually uses on its servers. In general, community-driven open source projects are more transparent. (Of course, that is not to say that non-community-driven open source projects are untrustworthy.)

## Free products and services

Be wary of free services. No business makes money by giving away their products or services for free. Anything that needs hosting needs a server to run. Servers run on hardware, and you need money to buy hardware. Servers also have a running cost: electricity, maintenance, salary for the engineers who look after the servers, etc. Cloud also, ultimately, runs on hardware---the likes of Amazon, Google and Microsoft have massive datacentres spanning hectares. They house millions of servers, which serve you their cloud service. Operating these costs money.

Again, it comes down to the core business. As an example, the core business for Microsoft is software and enterprise solutions. Hosting a couple of billion home users is not a concern for them, because the majority of their money comes from enterprises. What they offer you as free storage is merely unused storage in their massive pools of storage which they primarily use for enterprises---more like spare capacity.

Apple is different; their core business is hardware. They offer {{< smallcaps "5 GB" >}} of storage to back up your device content and settings. They charge you for storage of photos and documents beyond the {{< smallcaps "5 GB" >}} limit. Apple has little incentive in mining your data (as of now). Of course, we cannot say for sure that Microsoft and Apple will not mine data.

Working around these is easy for the tech-savvy, because the tech-savvy can encrypt their data even before the upload begins. After that, it would not matter if the service encrypted the encrypted data or not. But that is not everyone's cup of tea. For the non-tech-savvy, the simplest way is to follow the principles above within practical limits. You cannot possibly control every app that you have on your phone, every service you use, or make your own apps for these purposes.

## On-device and peer-to-peer alternatives

Most providers upload content to their servers and process it there. For example, Google Assistant, Siri, Cortana, Alexa, all upload your voice queries to their respective servers to process them. Or, Adobe Scan uploads your scanned documents into its cloud to detect text and process them. Or Zoom routes conference calls through its servers. This means that user data reaches the servers owned by a service.

Some apps perform all the processing on the device, without sending data to the servers. The problem with this approach is that the apps must be that capable.  That is not always possible, given that capabilities such as voice processing need their own set of code libraries, which will take up a lot of space on your devices. Even if updates to these apps were incremental, you are still looking at hundreds of megabytes of binaries getting transferred. Besides, some of these capabilities may use a lot of computing power; not all devices would have them.

The third kind of apps are peer-to-peer apps. As an example, four people trying to get on a video conference over a peer-to-peer video conferencing solution would connect directly to each other's phones without the involvement of a server, except for the initial routing. This drastically increases privacy and reduces costs because the service need not process any information other than the connection metadata, nor do the users need to share personal data including their voice with the service.

## Privacy-friendly alternatives

Privacy could cost. We are all used to this free model of the Internet where we get everything for free. We have learnt to not appreciate the concept of private data. Your reaching this point in this post would surprise me. But privacy is important. Your data and data about you is nobody's business. I am not getting into governments being able to snoop your data; that is the next level. I am talking about taking control of your data so that nobody makes your private data their business. To that end, let me list out some of the services that I use (I have listed them before, but this is a more layman list). This list is not exhaustive, nor are these recommendations. No one other than you can judge what is good for you. This is not a sponsored post either.

### Linux

Linux has had this reputation of being the operating system for the tech-savvy, that you need to remember commands to use Linux. This view is almost as obsolete as the Y2K problem. In fact, over 70% of cell phone users use Linux---Linux is the basis of Android.

Linux has hundreds of "distros". Some of them are beginner-friendly to such an extent that you can use them without ever having to open the terminal emulator. [Elementary OS](https://elementary.io/), [Pop!_OS](https://pop.system76.com/) and [Ubuntu](https://ubuntu.com/download) are some of the most beginner-friendly Linux distributions with a great UI and a vibrant community. Elementary and Ubuntu use the pay-what-you-want model, while the makers of Pop!_OS make money selling fantastic hardware. You can pay if you want. I would encourage you to, because developing these distributions takes a lot of time and effort. Every dollar makes a difference.

### ProtonMail

[ProtonMail](https://protonmail.com/) has had its share of criticism, but at the end of the day, you can rest assured that Proton is not going to mine your data to sell advertisements or share your data with other corporations. Their product gives a tough competition to the best players in the email arena. ProtonMail is free to use, with some limitations on the free account. With the paid account, you get access to a lot more features and storage. Again, pay if you want to, or continue using the free version.

With the free account, as of writing this post, you get {{< smallcaps "500 MB" >}} of mailbox space limited to 150 messages per day. This should work for most people. I used a free ProtonMail mailbox for three or four years, until I decided that I liked it and would like some more features like alias email addresses, more folders and labels, etc., and felt I should pay for the service. I started with the Plus plan for email that costs $79/2 years.

### Signal

[Signal](https://www.signal.org/) has been around for some time now, and ever since the WhatsApp fiasco of 2021, it gained more users and traction. While I have my reservations about their code not being fully open sourced (or at least, the open sourced code not being current), I still think Signal is a fantastic app. The app has full end-to-end encryption. But I am also evaluating [Session](https://getsession.org/).

Signal is still great, because it does not store your data on its servers. It aims to be "as zero knowledge as possible", including the contact discovery being zero-knowledge. Security experts and privacy watchdogs alike endorse Signal. Signal may have its limitations, but is still a great practically private solution.

### Firefox

The Firefox browser is no stranger. Sure, it does not have the slick user interface that Google Chrome does, but is _one helluva workhorse_. Firefox is fast, fully open source (and community-driven), and in my view, much more transparent to users and privacy-focused than other browsers. Plus, from the web typography standpoint, Firefox is better.

---

Update (04/01/2021): Firefox gets a design overhaul. Looks good!

---

### Cryptee

Journalling is a private activity. Your journal could reveal a lot about you. And online journalling services could potentially leverage all that data for targeting and advertisement.

I am not much of a note-taker. And I seldom write using pen and paper. I am more of a keyboard person. And for that, [Cryptee](https://crypt.ee/) works well. Cryptee gives you {{< smallcaps "100 MB" >}} of space to store your notes and pictures. (It creates elegant picture albums, by the way.) You can buy more storage if you choose to.

I have a different photo storage strategy (which is too "techy" for most people; I want to keep this simple), but I use Cryptee for notes. You could use it for journalling as well, if you are a keyboard person. It uses zero-knowledge encryption, which makes your data private and safe.

### DuckDuckGo

Yes, [DuckDuckGo](https://duckduckgo.com/) is not fully open source yet. But again, this is something the privacy community swears by. The way DuckDuckGo works with privacy is a little different. While not a search engine that has its own index pages, it aggregates search results in a way that anonymises you and your search terms.

DuckDuckGo serves advertisements (which is how it makes money), but does not use your personal profile; instead, it uses the keywords you entered, to show you relevant advertisement (much like how Google used to work before it started its "Don't be evil" rhetoric).

## In closing

Privacy is complex. Nobody fully "gets" it. The free services overpower the private ones. Like I keep saying, living in the forest, out in the open does not cost money. Building a home, getting yourself a room does. Online privacy is similar. You must pay for the services that you use, to incentivise the service providers to protect your data.

When you do not pay, understand that the service that is giving you something for free is, in reality, selling something to someone to allow you to use its service for free. In case of Microsoft that something is software and enterprise services and the someone is the enterprises; in case of Google, that something is your eyeballs and attention and the someone is the advertisers. Companies must do this because their developers need a roof over them, and food on their table. What is wrong is using something that is not theirs; your data is yours. Choose the services that charge you upfront. 

Of course, that is not to say that every service that charges you will not use your data. One must keep their eyes open.

Did I miss anything? Let me know on [Twitter at @iamramiyer](https://twitter.com/iamramiyer/).
