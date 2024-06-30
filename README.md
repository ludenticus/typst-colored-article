# typst-colored-article
Typst template for articles, useful to deliver reports with some colors.

## Characteristics

1. **Colors**: Title, author, chapter/section, running header with page number, footnotes & captions
2. **Layout**: title, author, abstract, margins

## Variables

|  | Description |
|--|--|
| title | Document title |
| name | Author |
| article_header | Running header from page 2 onwards |
| abstract | Abstract |
| language | Default: "en" |
| bibliography | Bibliography file. Default style: "chicago-notes" |
| paper | Paper size. Default: "a4" |
| doc | Document body |


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
