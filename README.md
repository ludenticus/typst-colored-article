# typst-colored-article
Typst template for articles, useful to deliver reports with some colors.

## Use

```typst
#import "colored_article.typ": *
#show: doc => conf(
  name: [
    Big Boss
  ],
  title: [
    #lorem(9)
  ],
  article_header: [
    Running header
  ],
  abstract: [
    #lorem(78)
  ],
  bibliography: bibliography("refs.bib"),
  doc,
)


= One of my arguments

#lorem(60)
#footnote("Some footnote.")

#lorem(10)
@netwok2020

== Some explanation

#lorem(20) @AhrensSmartNotes

#lorem(30) @AhrensSmartNotes[20]

== Some detail

#figure(image(width:100%, 
  "Glacier.jpg"),
  caption: "Glacier melting",
  placement: top,
) <glacier>

In @glacier you see. #lorem(30)
```
