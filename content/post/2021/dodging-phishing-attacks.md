---
title: "Dodging phishing attacks"
subtitle: "A practical guide to protection from the most common email scams"
date: 2021-01-17T08:02:54+05:30
description: |
    Phishing scams are on the rise. A recent incident of note was Nidhi Razdan’s job offer from Harvard, which she claims she could not spot for almost a year, because "they are so real". How do you spot a phishing scam? Read the non-tech guide to protecting yourself from it.
tags:
- Internet
- security
- email
- communication
- scam
- technology
---

I have worked with Microsoft Exchange for over five years. Handling emails scams like phishing was part of the job. If the term sounds like Greek or Latin to you, no worries. I will explain everything tech in non-tech terms.

Those that invented and developed email as a mode of communication, did it keeping in mind the "nice ones"---those who knew not to listen in on others, who respected people's privacy, and were, in general, civilised. Email became available for the wider world in the nineties.

Soon came along the bad guys.

{{< toc >}}

## Wait, what is phishing

Phishing is what it sounds like: "fishing" for information. Information like the credentials to your social networking accounts, your email account, bank account, etc. are data points that some are waiting to get their hands on, so that they can use them to their benefit.

In most cases, this involves money. In cases like bank accounts, they get access to your money directly. In other cases, the attacker could gain access to, say, your social media account, change password (so you cannot access it anymore) and then blackmail you. Another way is to lure you and make you send them money. Even if two hundred victims send the scammer $10, s/he makes $2,000.

## Who gets phished

Believe it or not, not only are phishing scams everywhere, but even those who are smart with the workings of the Internet fall victim to it.

A message in a group chat that I am member of, said that [Nidhi Razdan's Harvard job offer was a sophisticated phishing attack](https://www.ndtv.com/blog/how-i-fell-for-a-phishing-attack-my-story-by-nidhi-razdan-2353395). One of the members of the group commented, 'What kind of senior journalist falls for this?' An opinion piece in a magazine even [called her "gullible"](https://www.outlookindia.com/website/story/opinion-nidhi-razdan-phishing-and-three-hard-lessons/370865).

> But these scams succeed because they look so real.  
> ---Nidhi Razdan (former Executive Editor at {{< smallcaps NDTV >}})

The real world works differently. Anybody could be a victim of such scams---no matter how learned or informed. I do not know much about Razdan, nor do I watch her shows. I cannot judge how good or bad a journalist she is, but having worked with mail exchange for long enough, I can tell you that her falling victim to this scam *does not* make her stupid.

Let us now look at the different ways scammers phish, and see how we can protect ourselves from falling victim.

## How to spot phishing

Phishing is a social engineering attack, which means that the attacker uses his / her interpersonal skills to get information from you. It could be a single email, either with suspicious links to web pages that make you enter information, or a plain email with a premise, asking you for information. In some, the attacker interacts with you (like what Razdan alleges happened with her). Phishing attacks have become sophisticated over time, and scammers combine techniques to increase the chances of success. While in some cases, your intuition is your sole "BS detector", in the rest, all you have to do is look. I will deal with the latter in this post.

### It's in the name

As trivial as it may sound, we do not look at the email address itself when we see emails---we look at the name instead. Why? Because we treat the email “from” the way we treat our phone calls: if we have the caller’s number saved on our phones, the name appears and not the number. We never bother to look at the number to reverify because we take it for granted---and we should, because we saved it.

The problem arises when we apply the same logic to email.

Emails behave slightly differently. Email have what we call a ‘header’, which is technical information email clients (like Outlook or Thunderbird on your desktop) and email services (like Gmail) understand. The header is analogous to an envelope. Like how an envelope contains the source and the destination of the package, along with the route it took (ever notice the black stamps on the envelope?) emails also record this information as they jump from server to server.

For good reason or bad, the header allows the sender to include their name. This way, anyone can enter any display name against their email address when sending the email.

Most email providers of today, including Gmail, show the email address within the message details. All you have to do is click on “Show details” or something similar (this varies based on the provider---Gmail on the web has this little downward triangle right next to `me`) in the "from-to" area. If you use an email client like Microsoft Outlook, you would see the email address right next to the name along with other details.

{{< figure src="https://blogfiles.ramiyer.me/2021/images/gmail-details.png" alt="A sample of details on Gmail" caption="A sample of details on Gmail" >}}

Always check this before you interact with emails.

Some scammers also use domain names (the part after `@` in the email address) that look like their legitimate counterparts, for example, `grnail.com` instead of `gmail.com`, or `paypa1.in` instead of `paypal.in`. Some use subdomains like `microsoft‌.com.123-lsd.com`---this email is not coming from Microsoft, but from some `123-lsd.com`. The sans-serif fonts used by these services make it difficult to discern an l from I, and scammers use this to their benefit. Some even use more techniques like `pay.pal.com`, which is technically a subdomain of `pal.com`, and may have nothing to do with PayPal. Others may use a hyphen or an underscore to separate the words in the domain name, like `pay_pal.com`. The possibilities are a little short of endless.

### Links may not be what they seem

Be cautious when using links in emails. On a desktop or a laptop, you have slightly better protection because you have an option to hover over a link (although phones have their own benefits). Three points to keep in mind:

1. A link that looks like a naked link, may not be one. You can embed any link under any text, and what may look like https://blog.ramiyer.me/ on an email may actually lead you to http://you-have-been-scammed.com.
2. Hypertext links are a little less dangerous (most people do not think that a naked link could be a mind game). Hover over such links and look at the bottom-left (or sometimes bottom-right) of your browser window. It will tell you where the link leads. This works in most modern browsers including Chrome and Firefox.
3. Remember the domain name tricks you saw above.

Let us practice this. Hover over [https://blog.ramiyer.me/](<https://en.wikipedia.org/>) and also [this text](<https://en.wikipedia.org/>) and look at the bottom-left of your browser to see where these lead. If you are reading this on an iPhone, you might feel tempted to long-press the link, but _do not do that_; it will load the entire page in the preview, including trackers or other malicious content.

Also, here are examples of a couple of deceptive links:

```text
- https://account‌.outlook‌.com‌.libna‌.ml
- https://amazon‌.in‌.forgotpassword‌.com
```

Notice how similar they look to `amazon.in` and `account‌.outlook‌.com`.

### Remote content

Remote content is a fancy word for images, webfonts, styles and other non-textual elements in an email. Images and other content embedded in emails make a call to the image store (a remote server). This remote server may track the number of calls it gets and from where, and can know if you opened the email.

What is the big deal, you ask? Scammers (and spammers) often send out emails in bulk, without knowing which among them would hit real mailboxes. They can use these remote calls to know which email addresses are real, and they can target their next emails better.

Disable auto-download of remote content and manually download them whenever required, after checking the origin of the email. You can change this within [Images in Gmail](https://support.google.com/mail/answer/145919) and if you are using Outlook Web, [you may be out of luck](https://support.microsoft.com/en-us/office/external-image-protection-in-outlook-com-43c0c17e-8fd1-41c6-93fe-ffe54638e82b). Go with Protonmail if you want better protection.

### The “via” part

In the screenshot above, the email has come from _Supr Daily_ via onedirect.in. This may be legitimate, and in most cases, your email provider will alert you if it detects any foul play. Most reputed email providers can read {{< smallcaps SPF >}} records of the domain sending the email, and decide whether this “via” is legitimate or not. Getting into what {{< smallcaps SPF >}} records are would make this too technical for common people.

In any case, handle any sensitive email with caution.

### "Your account is compromised"

Some phishing emails claim that your account is compromised, and ask you to protect your account. Do not click on the links in such emails.

Sites and services sometimes undergo data breach events. These services do send you emails that there has been a data breach, and ask you to change your password. No reputed site would store your password as plain text, but they tell you to change your password to avoid a possible account compromise. In such cases, go to the site and change the password yourself; make it a practice not to use the link given in emails.

"Forgot password" emails that *you* kick off are an exception. Even in that case, watch where the link takes you.

You could also use a service such as [Firefox Monitor](https://monitor.firefox.com/) to know if your email has appeared in a known breach.

Secondly, no reputed site would ask you to lower the security on your account, such as disabling two-step authentication on their service. If you see an email asking you to lower the guards on a site, do not oblige.

Another common technique attackers use is telling you that your mailbox is full, asking you to clean it up to continue to use email. Do not click on those links. Log into your mailbox by manually entering the web address of your email provider and check the quota. You can find this under your mailbox settings. Gmail displays this at the bottom of your Inbox page.

Of late, the simplicity of logon pages that the likes of Microsoft and Google use has led to attackers making such attacks more frequent. Scammers create spoof pages, ask you to enter your username and password, collect the details and redirect you to a legitimate Google or Microsoft help article upon clicking "Submit". The easiest way to have [_some_ protection](<https://www.wired.com/story/chrome-yubikey-phishing-webusb/>) against such attacks is to use [devices like a Yubikey](https://amzn.to/3ivASil){{< sidenote "yubikey" >}}Buying the Yubikey using the affiliate link above will get my friends at [Meraki Post](https://instagram.com/merakipostofficial/) a small commission at _zero added cost_ to you. This helps cover costs.{{< /sidenote >}}. But that is not for everyone (at least not in India, because these devices do not come cheap, but if you can afford one, go for it).

### Watch the urgency

Most phishing attacks show a sense of urgency: "Do this within the next 16 hours". When the stakes are high, you do not stop to think or research; instead, you dive right in. I have seen employees fall victims to what they think is an email from the {{< smallcaps CEO >}} asking for gift cards bought for the season, or a supplier saying that their account has changed and that they did not receive the last payment, asking the team to transfer the money "by {{< smallcaps EOD >}}" to the new account to avoid legal issues.

As a side, once an executive from Purchase contacted us saying that she found the tone used in the email a little unusual, and asked us to check the authenticity of the email (a phishing attempt, indeed, using domain spoofing). She had spotted this using her intuition. We even sent technical recommendations to the supplier to prevent this in the future.

### The language

This is also a common symptom. The claim we see in Exchange admin circles is that most of these attackers are not native English speakers (I am not, either, but---), and use a translator to compose emails. Others who do not use a translator are not good at writing. This often results in poor sentence structure or unusual phrases.

For example, one of the customers of a client I worked for, pointed out that no American would use the phrase "our esteemed customer", while Asians (people of Asia, not the race) did, implying that the email she had received, ostensibly originating in the US, was from somewhere in Asia. Another case of intuition and a fruit of global interactions. (The case not being a domain spoof, we could not do much. But she was right; the email had originated from India.)

### Do not open attachments

Sometimes, an attack bundled into an email may contain attachments; something like `Invoice-2301993f003.PDF.exe`. Note that this is an {{< smallcaps EXE >}} file, not {{< smallcaps PDF >}}. In other cases, attachments may indeed be {{< smallcaps PDF >}} or {{< smallcaps HTML >}} files, but contain malicious code in them. There have been instances of [malicious code bundled into even {{< smallcaps JPEG >}} files](<https://www.wired.com/2004/09/malicious-code-hides-in-jpegs/>). As a rule of thumb, do not open attachments that come in unsolicited emails.

Unsolicited
: Not asked for
: Not requested

### Government emails

Some phishing emails seem to come from government agencies, asking for tax information, or giving a link to file tax returns. But such emails come either from public email services (Gmail, Outlook, Yahoo) or non-government domains. As such, legitimate emails from Indian Central or State government agencies use a `gov.in` or an `nic.in` address. That said, some of our government offices do---unwittingly---use a public email address sometimes. Be careful with such emails. Know that you will have enough time to act upon any government notification (other than {{< smallcaps "8 PM" >}} speeches), such as filing tax returns. No government organisation in India works with a notice of minutes or hours.

### Padlock is not a sure shot

I know, it sucks. {{< smallcaps HTTPS >}} (or {{< smallcaps HTTP >}}, secure) implements a secure connection using a certificate, prompting the browser to show the padlock icon. But a padlock icon by itself merely means, 'This page encrypts content sent to the server.' Such certificates are free, and everyone (including scammers) can get these. These do not verify the _person_ or the _organisation_ that owns the domain or the site. The certificates that the likes of Internet banking sites use, though, are of a different class; they are expensive, and the issuers verify the _organisation_ that they issue these to.

In short, do not let the padlock fool you. A padlock is not a testament to the legitimacy of the domain.

### Unsubscribe is a lie

Emails come with an 'unsubscribe' link in them. In some cases, these links directly unsubscribe you, while others take you to a page that asks you to enter your email address, and click the Unsubscribe button.

But, if you receive an email from an entity that you do not remember signing up for, do not click on Unsubscribe, because doing so would confirm to the sender that your email address exists, and they will target you for more emails.

Instead, click on the "Report spam" button (and do not choose to unsubscribe). This will help in two ways: First, the provider (like Gmail) will remove the spam message from your inbox, and second, the algorithms in the system will learn to identify such spam emails better.

### Sensitive information over email

Remember that email is as secure as physical post; not the most secure way to communicate. Legitimate organisations would not have you send them details like your bank account number, tax information, usernames, passwords, or other sensitive data over email---they would make a secure form collect such information instead. (Razdan said that the perpetrators of the phishing attack sought her personal information. She did not make the mode of collection clear.)

Never share personal information over email. And do not fill a Google Form either---no reputed organisation will collect sensitive information using a Google Form. In any case, think about whom you share personal information with. And always observe the address bar of your browser. Do not fill forms that do not have a padlock. If the bar does show a padlock, verify the authenticity of the domain.

Do not let logos fool you.

## What to do if you are a victim

Do not panic. What information has gone, has gone. What you can do now is damage control. Here are some simple steps you can take:

### Passwords

If you shared passwords, reset them by going to the respective password reset page. Again, do not use the password reset link that you received in an unsolicited email. Generate a fresh "reset password" link and use it to reset your password.

Never---never use the same password across sites. If the password you use across sites gets compromised, you would put all your accounts at risk.

No human can remember 387 complex passwords. Use a password manager to store your passwords, and lock it with a long, complex password and multi-factor authentication. You will need to remember no more than one password. [Bitwarden](https://bitwarden.com/) is an open source password manager, [audited by independent auditors](https://bitwarden.com/help/article/is-bitwarden-audited/). You can use it for free. If you would like to support the project, buy a $10/year subscription, or donate to the project.

### Be transparent

If your work account gets compromised, inform your IT department. No good employer will penalise the victim. Telling your IT department about the breach would prepare them for the next steps to safeguard organisational data.

Be honest about what you received and what you sent.

### Block financial instruments

If you gave out financial information, or you see unusual financial activity on any of your accounts, contact the customer service at once and explain the situation. With reputed credit cards, the customer has zero liability towards fraudulent transactions. Informing Customer Care would make them take the necessary steps to protect your financial interests.
