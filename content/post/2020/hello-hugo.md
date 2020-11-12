---
title: "Hello, Hugo"
date: 2020-07-05T20:08:24+05:30
tags:
- development
---

My blogs have been built with static site generators for a long time now. When I first got this domain and configured my WordPress blog to use it, a friend told me about Jekyll, the most popular static site generator. Static site generators are known for their uncomplicated nature, load speed and security. How? This is something any piece of writing that introduces you to static site generators will tell you---when you open a blog post on Medium or WordPress or Tumblr, the Medium, WordPress or Tumblr server takes in your request to serve a page, generates a page just for you and serves it. That page is personalised based on your interests, your past interactions with the provider (Tumblr or Medium) and other such factors. A more apparent example is Facebook---your news feed is personal to you even though you and a billion others access the same {{< smallcaps URL >}}.

To give you that experience, the providers collect and store your data. Also, such systems have moving parts (such as the {{< smallcaps LAMP >}} stack). And the number of attack surfaces increases with the number of moving parts. Static site generators generate plain {{< smallcaps HTML >}} pages that have already been uploaded to a simple web server. When you don't have a database or don't process user information, what is the worst an attacker can do? And why even? Since all that the server has to do is show you a pre-built page, the process is fast.

Jekyll is a fantastic site generator. It's powerful. The community is great. Every time I needed a feature, the community already had a solution for it or I was comfortable enough with the templating language that I could write it myself.

But I'm not a Ruby developer, and because of that, I wasn't comfortable enough to work with the gem dependencies. The last update I made to my theme almost broke the theme _gem_.

Meanwhile, I heard of the "blazing fast" Hugo. My Jekyll site would take three seconds to build. That wasn't long time by any standard, but the main gain with Hugo is avoiding the dependency issue. Hugo packs most of the features within itself. I thought, why not try building the blog with Hugo? Of course, I did not have the time to build it from scratch.

My Jekyll theme, [Typographical](https://github.com/theramiyer/typographical), is a fork of the beautiful [Tale](https://github.com/chesterhow/tale) theme. I looked for the same theme in the Hugo theme repository. And there it was, ported to Hugo by a few members of the Hugo community. Most of my work was done. All I had to do to get a similar look-and-feel as that of my _Typographical_ theme was copy-paste the {{< smallcaps SCSS >}} directory from my Jekyll theme to this theme and add the links to the fonts used in the theme to the {{< smallcaps HTML >}} header. I had my doubts about this copy-paste business, but the first build showed that the team had retained the {{< smallcaps CSS >}} classes from the Jekyll theme. What remained was adding the features that I'd included in my theme. And this is how I went about it.

![When you decide to go all in and migrate your #blog from #jekyll to #hugo within the weekend, while retaining all the old functionality.](//blogfiles.ramiyer.me/2020/2020-07-05-hugo-migration.jpg)

## The partials and the little tweaks

Everyone starts small. I started with the minor changes like the author information in the posts, the class used for the table of contents, adding drop-cap {{< smallcaps CSS >}} etc. This is when I learned that Hugo, unlike Jekyll, has two kinds of partials---one to be used within content Markdown files---called shortcodes---and another to be used within the template {{< smallcaps HTML >}} files.

And so, the shortcodes that I use for small-caps and the partials for the share bar and the subtitle were done.

Hugo not only has most blog features built-in, but also includes shortcodes that you can use right out of the box. The YouTube shortcode is one such. But I needed some customisation to it. All I had to do to override the default behaviour was make a file with the same name as the default shortcode and place my code in the partials directory. The other shortcode I added was for Spotify to add my podcast episodes to my posts.

{{< highlight html >}}
<div class="spotify-container">
    <iframe src="https://open.spotify.com/embed-podcast/episode/{{- if $.Page.Params.spotify }}{{ $.Page.Params.spotify }}{{- else }}{{ .Get 0}}{{- end }}" width="100%" height="232" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
</div>
{{< /highlight >}}

## The larger chunks

One of the features that I loved about my theme was the _related posts_. In Jekyll, this was implemented using Liquid. A friend of mine had written the feature and [posted it on his blog](https://blog.webjeda.com/jekyll-related-posts/). It used tags in each post to find the related posts. It used a simple algorithm.

While reading the Hugo documentation, I came across this feature. Turns out, this feature is built-in. All you have to do is set a couple of parameters and make a simple partial. Include it in your post layout and you will have related posts in each of your posts. While I don't see the related posts on Hugo being as related as with my friend's algorithm, I also think it could be a configuration issue on my end.

Another such feature is Google Analytics. The Tale theme did not already have this, but all I had to do was add the code that the documentation had, in the head partial.

{{< highlight html >}}
{{ if not (in (.Site.BaseURL | string) "localhost") }}
    {{ template "_internal/google_analytics_async.html" . }}
{{ end }}
{{< /highlight >}}

What I wanted next is not built into Hugo:

1. Site search
2. Blog archive

Most sites have a 404 page to show when you try to go to a page that does not exist. In Hugo, this is a plain page with simple text in monospace font. To me, that is not good user experience. I thought it would make sense to give them a search bar so they can look for a specific post by title.

This search feature was present in my blog, although not as part of the theme. I started looking for a way to implement this in my Hugo theme---I wanted it to be a default feature. When reading about search within the site, I came across [some solutions that the community seems to use](https://gohugo.io/tools/search/). But they all seemed more than what I need. Perhaps even a little more complex than I'd like. I am a minimalist and I don't like having too many moving pieces. I wanted the ability to be local, something that does not load with every page, instant, and simple.

What my Jekyll blog had was precisely that, and something the "related posts" [friend had written](https://blog.webjeda.com/instant-jekyll-search/). It consisted of three parts:

1. A {{< smallcaps JSON >}} file with post metadata
2. A {{< smallcaps JS >}} file with code to perform the search and display results in an {{< smallcaps HTML >}} block
3. A partial (an _include_ in Jekyll terminology) to contain the search bar and the results block

All I needed to do to use the same code in Hugo was to find a way to generate this metadata {{< smallcaps HTML >}}. That turned out to be an easy task as well. I found [a snippet posted by a community member](https://xdeb.org/post/2017/06/11/make-hugo-generate-a-json-search-index-and-json-feed/) that created such a data file. Next, I had to tell Hugo to generate this {{< smallcaps JSON >}}, map it in the search {{< smallcaps JS >}}, and create a partial that contained the search bar and results block. Snapping this partial in the 404 page gave it a search bar. I made it into a partial because I wanted to use it in the archive page as well.

Finally, I needed the archive page. By this time, I had read enough documentation to handle this by myself. But to not let readers lose the flavour of the old site, I decided to translate the Liquid code into Hugo. Since I wanted the archive to be part of the theme, I decided to write a layout for it. This way, those who use the theme can easily make their archive page by creating a page in their contents directory and specifying the type as archive. They can optionally write some content in their Markdown file, which will appear right before the search bar and the post archive. Here is how I generate the post list for the archive:

{{< highlight html >}}
<section class="post-list">
{{ $MyYear := 3000 }}
{{ $MyMonth := "Something" }}

{{ range where .Site.RegularPages "Type" "in" "post" }}
    {{ $CurrentMonth := (dateFormat "January 2006" .Date) }}
    {{ $CurrentYear := (dateFormat "2006" .Date) }}

    {{ if ne $CurrentYear $MyYear}}
        <h3>{{ $CurrentYear }}</h3>
        {{ $MyYear = $CurrentYear }}
    {{ end }}

    {{ if ne $CurrentMonth $MyMonth }}
        <h4 class="archive-month">{{ substr $CurrentMonth 0 -5 }}</h4>
        {{ $MyMonth = $CurrentMonth }}
    {{ end }}
    <p class="archive-post-title"><a href="{{ .Permalink }}">{{ .Title }}</a> | {{ dateFormat "Jan 02, 2006" .Date }}</p>
{{ end }}
</section>
{{< /highlight >}}

Once I was done with all this, I realised that the drop caps were not appearing correctly in Chrome. I use Firefox; I worked on the {{< smallcaps CSS >}} based on Firefox. Turns out, the two browsers behave differently when it comes to pseudo-selectors. I went back to the way drop caps were implemented in the Jekyll site.

{{< figure src="//blogfiles.ramiyer.me/2020/2020-07-05-10-34-06.png" caption="Drop-cap render in Firefox" >}}

{{< figure src="//blogfiles.ramiyer.me/2020/2020-07-05-10-34-22.png" caption="Drop-cap render in Chrome" >}}

That was the final coat of polish to be done before I could call the theme on par with the Jekyll theme in terms of features and experience.

The next bit was making my blog content Hugo-compatible. Hugo has an import command that can import content files from an existing Jekyll site. To be honest, it felt as though the only work it did was port the post frontmatter.

Content porting involved playing a little with Regular Expressions. Goldmark, the Markdown renderer that Hugo uses, omits raw {{< smallcaps HTML >}}. Of course, this can be overridden, but I did not want to do that. I mainly used raw {{< smallcaps HTML >}} for small-caps---enclose text within a span element and specify the class. I could do this with a _parameterised shortcode_ instead. After writing the shortcode, I used simple RegEx in find-and-replace across the site, to wrap the content in the shortcode.

Another significant replacement was for internal links. Luckily, this could also be solved with a simple RegEx as well.

And in the end, what remained was the CI configuration. I had to change the Docker image used to build and deploy the site, and make some minor modifications to the CI script to suit the current configuration.

And that was it. The Hugo site was ready. Forty seconds after the push, the site was live. You can check out the [full implementation on GitLab](https://gitlab.com/theramiyer/blog), and if you like the theme, feel free to [fork it on GitHub](https://github.com/theramiyer/typographical-hugo).
