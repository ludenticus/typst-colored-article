# typst-colored-article
[Typst](https://typst.app) template for articles, useful to deliver reports with some colors.

## Features

1. **Colors**: Title, author, chapter/section, running header with page number, footnotes & captions
2. **Layout**: title, author, abstract, margins
3. **Fonts**: _Source Serif Pro_ for the body and _Source Sans Pro_ for the rest of the elements.

![Screenshot from template](https://github.com/ludenticus/typst-colored-article/assets/813198/c8e16a6e-8718-4910-abc1-767d3d08ff54)


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

## Use case
This typst template can be useful to produce reports and student works.

## Limitations
- Only two levels of headers
- Static header

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
