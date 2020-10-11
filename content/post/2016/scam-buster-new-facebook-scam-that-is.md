---
author: ram
date: "2016-04-20T12:51:00Z"
tags: null
title: 'Scam buster: A new Facebook scam that is circulating'
---

My brother received a message from one of his juniors in college, that said something like, ‘Bro, don’t click on the
message that was received from me. It is some sorta scam.’ As soon as I got up today, ‘You know, apparently, this guy
got this HTML file as a message. He clicked on that and that posted some video on his wall that he’s not able to remove
now. Also, this has sent messages to all his friends about this as well,’ my brother said.

This scam might be old news to some, but it got me curious. What could the HTML possibly contain that could do this
kinda stuff? But one thing that I did not buy is how the guy could not delete the post. But that’s fine. The HTML file
itself was pretty exciting to me. So I asked my brother if he’d received anything from the said friend of his. Lucky me,
he had. I had him send over the HTML to me. I opened up the file with [Brackets](http://brackets.io/), and here’s what
the HTML looked like:

{{< gist 541a55383349fefc5cc0b15ae3fd9570 >}}

Perfect. Now I wanted to know what the HTML _did_. I just opened up the first URL in it (in a Private Window, of
course). It downloaded another HTML, which was:

{{< gist 5c6ffd00eab6624c2918f02d87668c58 >}}

OK. Now what was that gibberish, right? Thankfully, our Internet community is very kind, and generous, and… well,
awesome. So there was a decode tool available online, which decoded the gibberish to:

{{< gist 7b5a17c323a21fb14ec5e951ed32d0b7 >}}

Nothing special, actually. Now what did this do? Apparently, this is some content hosted on Amazon Web Services (which
the creator of the HTML didn’t want the search engines to index—hence the gibberish-like encoding), by one of these
geeks, who seems to like social engineering. I just hit the URL,
https://s3-eu-west-1.amazonaws.com/video47543/red.html?erwhaererahera. It was some YouTube-lookalike page, with a video
preview-like thing, with a title, ‘18+’ or something. Obviously, there was nothing playable there (aww…). ;)

But why would someone do this? I’m not really sure. Perhaps it was one of those I-too-can-do-it kinda thing that most
nerds like to do. Perhaps it was for some study that people wanted to do to see how naïve most Facebook users are, and
to make people realise their folly. Or perhaps, it was just some fun thing that this geek did, having nothing to do one
evening. Or something more evil—who knows? LOL

I’m not going to go into the details as to how he implemented this all, like what this document.location.replace() is,
or how the encoding was done, etc. Just know that there are a lot of things happening out there, and you need to be
aware of this stuff.

This is not to say that anyone is fool-proof. Nobody is. Social Engineering is a vast thing, and there are hundreds (or
thousands) of ways one can become a victim of these—sometimes, even social engineers themselves get caught off-guard.
Just… keep and eye out.

Cheers! :)