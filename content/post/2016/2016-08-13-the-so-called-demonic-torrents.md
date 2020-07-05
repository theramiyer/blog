---
author: ram
date: "2016-08-13T12:51:00Z"
tags: null
title: The so-called demonic torrents
---

Torrents have never been out of the limelight, nor will they be for the foreseeable future. As long as there’s data, there would be data sharing, and torrents will be spoken about until they’re replaced by a better technology. Thanks to popular misunderstanding, torrents are considered _bad_, and anyone who backs them is considered a pirate without a second thought. But is it justified to term every torrent user a pirate? What if the logic is flawed? Let’s look at what torrents really are in order to understand whether they should be demonised.

### What are torrents?

We need to understand what a 'protocol' is before we begin to understand torrents. A protocol is just a set of rules and methods that are followed to accomplish a certain task. For instance, if you want to buy a pizza, one of the protocols is to call the phone number for the pizza place, ask for the menu, listen while the person recites it, choose your base, the size, the toppings, the add-ons and the sides, and place the order. Then, wait for the delivery person to to bring the pizza, open the door when the doorbell rings, accept the pizza, pay him, tip him, and then thank him.

Similarly, your browser uses a protocol to deliver this page to you—it is called the _Hypertext Transmission Protocol (Secure)_, a.k.a., {{< smallcaps "HTTPS" >}}. {{< smallcaps "HTTP" >}}/{{< smallcaps "HTTPS" >}} typically works as a server-client system, wherein a file is present on a server, which you connect to using your browser, and initiate the transfer. The file, in this case, typically gets transferred from the server to your computer.

For instance, if you download a copy of Google Chrome, you connect to https://www.google.com/chrome, which is owned by Google. You click on the blue button which tells Google that you want a copy of the Chrome browser. The page connects you to one of Google's file servers. The server sends the file to your computer (client) via {{< smallcaps "HTTPS" >}}.

BitTorrent is one such protocol, which works a little differently: here, the file gets transferred from one client computer to another. The files are not stored on a server in this case; only the _tracking information_ is. BitTorrent divides the file into _chunks_, and then keeps track of what chunk was transferred to whom. The server does not store the file itself; the file is stored in peers' computers. Literally speaking, if you shot a video with your friends, and would like to share it with them over BitTorrent, your friends would download the file from your PC. Then, once they have copies of the file, subsequent downloads can happen from their PCs as well.

Another example of peer-to-peer file transfer is {{< smallcaps "SHARE" >}}it. {{< smallcaps "SHARE" >}}it is a form of peer-to-peer transfer, which is one-to-one, using the Local Area Network ({{< smallcaps "LAN" >}}).

### Why torrents?

Because it minimises the cost of transfer, drastically—because the storage and transfer parts are offloaded to the _peers_! Typically, when thousands of users connect to a server to download a certain file, the server gets loaded. Also, the network channel size (bandwidth) should be large enough to cater to the users.

For example, if ten million users were to download 3.5&nbsp;GB worth of Windows Updates from Microsoft, the total transfer would be of about thirty-five million&nbsp;GB! If ten thousand servers were available to serve the requests, each server would have to serve 3.5 terabytes!

What if each user who downloaded the updates could share the transfer load? What if I downloaded the updates and could allow my friends' computers to download the updates from my PC? Each computer added to this pool would share the load with the others! Microsoft has actually planned to use a [peer-to-peer protocol to deliver Windows&nbsp;10 updates](https://www.theverge.com/2015/3/15/8218215/microsoft-windows-10-updates-p2p)!

### Are torrents really bad?

Well, is the Internet bad?

It depends on what you use torrents for. There are legitimate sites that use the BitTorrent protocol to deliver downloads to users. Ubuntu, {{< smallcaps "GNU" >}} Image Manipulation Program (or {{< smallcaps "GIMP" >}}), etc. use the BitTorrent protocol to deliver download to users, apart from the traditional server-client transfer using {{< smallcaps "HTTP" >}}.

However, nothing is all rainbows. Yes, the BitTorrent protocol, today, is _also_ used for transferring pirated software, pirated movie files, pirated music… you name it.

> ‘Yes, that’s why torrent was shut down.’

It’s just a popular belief that torrent was "shut down". “Shut[ting] down torrents” doesn’t make sense. It’s something like saying, ‘Closing the sea’. One cannot just “shut down” a protocol.

> But then weren’t they banned? Didn’t owners of these sites face legal challenges?

Torrent distribution sites such as Kickass Torrents, The Pirate Bay, etc. have faced legal challenges. And that’s one of the primary reasons for the misunderstanding as well.

A torrent file, which is typically what these sites give you, are tiny _tracker files_. These files just keep track of what chunk you download from where. Torrent clients (such as BitTorrent, μTorrent, Torrex, Transmission, etc.) understand these torrent files and communicate with the tracker server and the peers who have the actual files. To oversimplify the concept, the tracker server allots a tracking number to your download, and decides what packets you should get, and from whom.

### So then what is blocked by my {{< smallcaps "ISP" >}}?

The torrent search engines and the public torrent tracker file download sites are blocked by Internet Service Providers. In a manner of speaking, your {{< smallcaps "ISP" >}} has a map to different places on the Web—the route to reach these sites. Blocking by {{< smallcaps "ISP" >}} means that they simply erase the routes to these sites from their map. So you cannot directly go to these sites with their names.

### Then, can I not use torrents?

Far from it. You can definitely use torrents for legitimate transfers. If you want to share your work freely, and by means of peer-to-peer transfers, you’re free to do that, provided you’re the owner of your work—just like anything on the Internet. The download will first begin from your computer. Then the copies will multiply. This is legitimate, and is allowed; knock yourself out!