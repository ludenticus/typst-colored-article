#let references = bibliography
#let conf(
  name: [Name],
  title: [Title],
  article_header: [Short title],
  abstract: [],  
  language: "en",
  bibliography: none,
  doc,
) = {

  
//----- Footnotes ----- //
show footnote.entry: it => {
  set text(
    luma(100),
    font: "Source Sans Pro",
    size: .85em
  )
set par(hanging-indent: 1.6em)
  let loc = it.note.location()
  numbering(
    "1. ",
    ..counter(footnote).at(loc),
  )
  it.note.body
}
set footnote.entry(
  separator: none,
  clearance: 1.6em,
)


//----- Headings ----- //
show heading: set text(
  blue,
  weight: "regular",
  font: "Source Sans Pro",
  size: .8em,
)

show heading.where(
  level: 1
): it => [
  #set align(center)
  #set text(1em, weight: "regular")
  #block(width: 100%, breakable: false, above: 2.4em,below: 1.6em)[#smallcaps(it.body)]
]

show heading.where(
  level: 2
): it => [
  #set text(1.1em, weight: "regular")
  #block(width: 100%, breakable: false,below: 1.6em,above: 1.6em)[#h(1.6em)#it.body]
]



//----- Body, abstract, page number ----- //
show par: set block(spacing: .8em)

set text(
  font: "Source Serif Pro",
  size: 12pt,
  number-type: "old-style",
  number-width: "proportional",
  lang: language,
)
set page(
  "a4",
  footer: context {
    if counter(page).get().first() == 1 [
    #set align(right)
    #set text(
      size: .8em,
      fill:maroon,
      font: "Source Sans Pro",
    )
    #counter(page).display(
      "1/1",
      both: true,
    ) ]
  },
  margin: (
    top: 2.5cm,
    left:3.2cm,
    right:3.2cm,
    bottom:4cm
  ),
  header: context {
  if counter(page).get().first() > 1 [
    #h(1fr)
    #set text(
      size: .8em,
      fill: maroon,
      font: "Source Sans Pro",
    )
    #article_header
    #counter(page).display(
      "      1/1",
      both: true,
    )
    #v(1em)
  ]
}
)


//----- Figures ----- //

show figure.caption: it => {
    set align(right)
    set text(
      luma(100),
      size: .8em,
      font: "Source Sans Pro",
      )
    smallcaps(it.supplement)
      if it.numbering != none {
      [ ]
      it.counter.display(it.numbering)
      }
    "     "
    it.body
}

 
//----- Title, author, abstract ----- // 
align(center)[
  #block(width:90%,[#set par(justify: false)
  #set text(
    size: 1.6em,
    font: "Source Sans Pro",
    hyphenate: false,
    fill: olive,
  )
  #title
  #v(1em)
])]
align(right)[
  #set text(
    font: "Source Sans Pro",
    size: 12pt,
  )
  #set text(fill: fuchsia)
  #name
  #v(5em)
]

set par(
  justify: true,
  leading: .8em,
  linebreaks: "optimized",
)

align(center)[#block(width:90%,emph[#align(left)[
#abstract
]
])
]

set par(
  justify: true,
  first-line-indent: 1.6em,
  leading: .8em,
  linebreaks: "optimized"
)


doc


//----- Bibliography ----- //
set par(
  first-line-indent: 0em,
  hanging-indent: 1.6em,
)
if bibliography != none {
  set references(
      title: text("References"),
      style: "chicago-notes" 
    )
    bibliography
}
}
