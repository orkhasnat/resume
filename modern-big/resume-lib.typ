#import "fa-lib.typ": *

// font sizes
#let bf = 9.5pt
#let h1f = bf+4pt
#let h2f = bf+2pt
#let h2secf = bf+1pt
#let h3f = bf - 1pt

#let markerf = 7pt
#let sepf = markerf - 2pt
#let padf = 2pt
#let spf= 1em

// const color
#let color-darknight = rgb("141E1E")
#let color-darkgray = rgb("213131")
#let default-accent-color = rgb("2C7865")
#let color-lightgray = rgb("415161")

// const icons
#let linkedin-icon = box(fa-icon("linkedin", fill: color-darknight))
#let github-icon = box(fa-icon("github", fill: color-darknight))
#let phone-icon = box(fa-phone(fill: color-darknight))
#let email-icon = box(fa-icon("at", fill: color-darknight))

/// Helpers

#let __justify_align(left_body, right_body) = {
  set text(fill:color-lightgray )
  block[
    #left_body
    #box(width: 1fr)[
      #align(right)[
        #right_body
      ]
    ]
  ]
}

#let __justify_align_3(left_body, mid_body, right_body) = {
  block[
    #box(width: 1fr)[
      #align(left)[
        #left_body
      ]
    ]
    #box(width: 1fr)[
      #align(center)[
        #mid_body
      ]
    ]
    #box(width: 1fr)[
      #align(right)[
        #right_body
      ]
    ]
  ]
}

#let github-link(github_path) = {
  set box(height: 11pt)
  
  align(right + horizon)[
    #fa-icon("github", fill: color-darkgray) #link("https://github.com/" + github_path, github_path)
  ]
}

#let secondary-right-header(body, accent_color: default-accent-color) = {
  set text(accent_color, size: h2secf, style: "italic", weight: "medium")
  body
}

#let tertiary-right-header(body) = {
  set text(weight: "medium", style: "italic", size: h3f)
  body
}

#let justified-header(primary, secondary) = {
  set block(above: spf*0, below: spf)
  pad[
    #__justify_align[
      == #primary
    ][
      #secondary-right-header[#secondary]
    ]
  ]
}

#let secondary-justified-header(primary, secondary) = {
    __justify_align[
      === #primary
    ][
      #tertiary-right-header[#secondary]
    ]
}
/// --- End of Helpers

#let resume(
  author: (:), 
  accent_color: default-accent-color, 
  body) = {
  set document(
    author: author.firstname + " " + author.lastname, 
    title: "resume",
  )
  
  set text(
    font: ("Atkinson Hyperlegible"),
    lang: "en",
    size: bf,
    fill: color-darkgray,
    hyphenate: false,
    fallback: true
  )

  set page(
    paper: "a4",
    margin: (left: 15mm, right: 15mm, top: 10mm, bottom: 10mm),
    footer-descent: 0pt,
  )
  
  // set paragraph spacing
  set par(justify: true,linebreaks: "optimized",spacing: spf)

  set heading(
    numbering: none,
    outlined: false,
  )
  
  show heading.where(level:1): it => [
    #set block(above: spf*0, below: spf)
    #set text(
      size: h1f,
      weight: "regular"
    )
    #align(left)[   
    // Simple Design
      #text(fill:default-accent-color)[#strong[#it.body]]
    // Fancy Deesign
      // #text[#strong[#text(accent_color)[#it.body.text.slice(0, 3)]]]#strong[#text[#it.body.text.slice(3)]]
      #box(width: 1fr, line(length: 100%))
    ]
  ]

  show heading.where(level: 2): it => {
    set text(color-darkgray, size: h2f, style: "normal", weight: "bold")
    it.body
  }

  show heading.where(level: 3): it => {
    set text(size: h3f, weight: "bold")
    smallcaps[#it.body]
  }
  
  let name = {
    align(center)[
        #block[
          #set text(size: 32pt, style: "normal", font: ("FreeSerif"))
          #text(accent_color, weight: "regular")[#author.firstname]
          #text(weight: "bold")[#author.lastname]
        ]
    ]
  }

  let contacts = {
    set box(height: markerf)
    
    let separator = box(width: sepf)

    align(center)[
      #set text(size: h2f, weight: "regular", 
      style: "normal",fill:default-accent-color)
      #block[
        #align(horizon)[
          #phone-icon
          // #box[#text(author.phone)]
          #box[#link("tel:" + author.phone)[#author.phone]]
          #separator
          #email-icon
          #box[#link("mailto:" + author.email)[#author.email]]
          #separator
          #github-icon
          #box[#link("https://github.com/" + author.github)[#author.github]]
          #separator
          #linkedin-icon
          #box[
            #link("https://www.linkedin.com/in/" + author.linkedin)[#author.firstname #author.lastname]
          ]
        ]
      ]
    ] 
  }

  name
  // positions
  contacts
  body
}

#let resume-item(body) = {
  set text(size: bf, style: "normal", weight: "light")
  set par(leading: spf*0.75)
  body
}

#let resume-entry(
  title: none, 
  location: "", 
  date: "",
  description: ""
) = {
  pad[
    #justified-header(title, location)
    #secondary-justified-header(description, date)
  ]
}

#let resume-skill-item(category, items) = {
  set block(below: spf*0.65)
  set pad(top: padf)
  
  pad[
    #grid(
      columns: (25fr, 70fr),
      gutter: 15pt,
      align(right)[
        #set text(hyphenate: false)
        == #category
      ],
      align(left)[
        #set text(size: h2secf, style: "normal", weight: "light",fill:default-accent-color,)
        #items.join(",  ")
      ],
    )
  ]
}

/// ---- End of Resume Template ----

// My custom functions
#let resume-achievement(body) = {
  // let t = text.with(weight:"black")
  set list(
  tight:true,
  marker: ([#box(height:markerf,fa-trophy(fill:color-lightgray))],[])
  )
  body
}
#let resume-achievement2(title,rank) = {
    __justify_align[
      === #fa-trophy(fill:color-lightgray) #text(fill:color-darkgray,weight:"black")[#title]
    ][
      #tertiary-right-header[
        #text(fill:default-accent-color)[#rank]
      ]
    ]
  // secondary-justified-header(fa-trophy()+title,rank)
}

#let resume-cocurr(body) = {
  set list(
  tight:true,
  marker: [#box(height:markerf,fa-award(fill:color-lightgray))]
  )
  body
}

#let resume-project(
  title: none, 
  location: "", 
  stack:""
) = {
  pad[
    #justified-header(title, location)
    #set text(fill:color-lightgray,weight:"bold")
    #set list(
      tight: true,
      marker:[#box(height:markerf,fa-code(fill:default-accent-color))],
      indent: padf,
      body-indent: spf* 0.5
      )
    #v(padf)
    - #stack
  ]
}

#let resume-ref-iut(name,position,mail)={
  resume-entry(
  title: name,
  location: [
    #link("mailto:"+mail)[#box(height:markerf,fa-envelope(fill:color-lightgray)) #mail]
  ],
  date: "",
  description:[
    // #v(padf)
    #position \
    Computer Science and Engineering Department\
    Islamic University of Technology
  ]
)
}

#let resume-ref(
  name,
  position,
  PoE,  // PoE - Place of Employment
  phone,
  mail
) = {
  v(-2*padf)
  table(
    columns: 2,
    // inset: (0pt,5pt), // same as below
    inset:(
      x:0pt,
      y:5pt,
    ),
    stroke: none,
    column-gutter:  1fr,
    align:(left,right),
    [== #name],
    [
      #tertiary-right-header([
      	#set text(fill:default-accent-color)
        #box[#fa-phone(fill:color-lightgray) #link("tel:" + phone)[#phone]]
      ])
    ],
    [ 
      #text(color-lightgray,size: h3f, weight: "bold")[#position]\
      #text(color-lightgray,size: h3f, weight: "bold")[#PoE]
    ],
    [#if mail!="" {
      tertiary-right-header([
      	#set text(fill:default-accent-color)
        #box[#fa-envelope(fill:color-lightgray) #link("mailto:" + mail)[#mail]]
      ])
    }]
  )
}
