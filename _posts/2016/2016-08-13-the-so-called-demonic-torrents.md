---
layout: post
title: The so-called demonic torrents
date: '2016-08-13T12:51:00.000+05:30'
author: ram
tags:
---

Torrents have never been out of the limelight, nor will they be for the foreseeable future. As long as there’s data, there would be data sharing, and so, torrents will come into picture until they’re replaced by a better technology. But thanks to popular misunderstanding, torrents are considered _bad_, and anyone who backs them is considered a pirate without a second thought. While that may sound like a no-brainer, I’d just say that it is not justified to term every torrent user a pirate; the logic is flawed. Let’s look at what torrents really are in order to understand whether they can or should be demonised.

### What are torrents?

We need to understand what a 'protocol' is before we begin to understand torrents. A protocol is just a set of rules and methods that are followed to accomplish a certain task. For instance, if you want to buy a pizza, one of the protocols is to call the phone number for the pizza shop, ask for the menu, listen while the person recites it, choose your base, choose the size, choose the toppings, choose the add-ons, choose the sides, and place the order. Then, wait for the delivery person to to bring the pizza, open the door when the doorbell rings, accept the pizza, pay him, tip him, and then thank him.

Similarly, your browser uses a protocol to deliver this page to you—it is called the _Hypertext Transmission Protocol (Secure)_, a.k.a., HTTPS. HTTP/HTTPS typically works as a server-client system, wherein a file is present on a server, which you connect to using your browser, and initiate the transfer. The file, in this case, typically gets transferred from the server to your computer.

For instance, if you download a copy of Google Chrome, you connect to https://www.google.com/chrome, which is owned by Google. You click on the blue button which tells Google that you want a copy of the Chrome browser. The page connects you to one of Google's file servers. The server sends the file to your computer (client) via HTTPS.

BitTorrent is one such protocol, which works a little differently: here, the file gets transferred from one client computer to another. The files are not stored on a server in this case; only the _tracking information_ is. BitTorrent divides the file into _chunks_, and then keeps track of what chunk was transferred to whom. The server does not store the file itself; the file is stored in peers' computers. Literally speaking, if you shot a video with your friends, and would like to share it with them over BitTorrent, your friends would download the file from your PC. Then, once they have copies of the file, subsequent downloads can happen from their PCs as well.

Another example of peer-to-peer file transfer is SHAREit. SHAREit is a form of peer-to-peer transfer, which is one-to-one, using the Local Area Network (LAN).

### Why torrents?

Because it minimises the cost of transfer, drastically—because the storage and transfer parts are offloaded to the _peers_!

Typically, when thousands of users connect to a server to download a certain file, the server gets loaded. Also, the network channel size (bandwidth) should be large enough to cater to the users.

For example, let’s say that there are a billion computers trying to download Windows&nbsp;10. The size of the installable is typically about 3.5&nbsp;GB. So, Microsoft has to transfer _3.5 billion gigabytes_ in order to give Windows&nbsp;10 to those billion customers. Even if there were a cluster of a thousand servers to do this, every server still has to transfer three-and-a-half million gigabytes!

Now imagine that Microsoft pushed out Windows&nbsp;10 to 10,000 computers directly from the servers. The servers would only have to transfer 35&nbsp;GB each. Although now, there are a total of 11,000 computers having the Windows&nbsp;10 installation files. These then give another 20,000 computers (10,000 from the 1,000 servers, and 10,000 from the 10,000 home computers who’ve already received Windows 10) the files by means of peer-to-peer transfer. Wasn’t the load drastically reduced? The servers have, so far, only transferred 70&nbsp;GB each, and the client computers have sent out 3.5&nbsp;GB each. This goes on and the copies multiply, and so, the load on the server is kept very low. Microsoft actually used P2P transfer to distribute Windows&nbsp;10.

### Are torrents really bad?

Well, is the Internet bad?

It depends on what you use them for. There are legitimate sites that use the BitTorrent protocol to deliver downloads to users. elementary OS, Ubuntu, GNU Image Manipulation Program (or GIMP), etc. use the BitTorrent protocol to deliver downloada to users, apart from the traditional server-client transfer using HTTP. They’re not "bad" in this case.

However, nothing is all rainbows. Yes, the BitTorrent protocol, today, is _also_ used for transferring pirated software, pirated movie files, pirated music… you name it.

> ‘Yes, that’s why torrent was shut down.’

It’s just a popular belief that torrent was "shut down". “Shut[ting] down torrents” doesn’t make sense. It’s something like saying, ‘Closing the sea’. One cannot just “shut down” a protocol.

> But then weren’t they banned? Didn’t owners of these sites face legal challenges?

Torrent ditribution sites such as Kickass Torrents, The Pirate Bay, etc. have faced legal challenges. And that’s one of the primary reasons for the misunderstanding as well. 'Each of these sites gave out torrents. They were shut down, so how can torrents not be shut down?' That’s where the confusion lies.

A torrent file, which is typically what these sites give you, are tiny _tracker files_. These files just keep track of what chunk you download from where. These files are used by the torrent clients (such as BitTorrent, μTorrent, Torrex, Transmission, etc.) to communicate with the tracker server, and also the peers who have the actual files. To oversimplify the concept, the tracker server allots a tracking number to your download, and decides what packets you should get, and from whom.

### So then what is blocked by my ISP?

The torrent search engines and the public torrent tracker file download sites are _blocked_ by your ISPs, by means of discouraging the addition of the DNS entries to these sites. In a manner of speaking, your ISP has the map to different places on the Web—the route to reach these sites (called the DNS). In that sense, the ISP has just erased the areas of the map that contained routes to these sites. So you cannot directly go to these sites with their names.

What if you are one among the handful who know the exact address to these sites? If your ISP has decided to discourage you from accessing these sites despite running the risk of becoming unpopular, they probably have a very strong reason to do this, and you should respect that. Not to mention that the law in some countries force the ISPs to do this. 

### Then, can I not use torrents?

Far from it. You can definitely use torrents, but not for piracy. If you want to share your work freely, and by means of peer-to-peer transfers, you’re free to do that, provided you’re the owner of your work—just like anything on the Internet. So if, say, you made a movie, and would like to give it off to everyone in the world for free, but don’t want to pay some file storage and download provider to do it, you can very well create a torrent file and share it across. The download will first begin from your laptop. Then the copies will multiply. This is legitimate, and is allowed.