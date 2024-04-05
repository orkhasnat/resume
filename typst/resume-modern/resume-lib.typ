#import "fa-lib.typ": *

// const color
// #let color-darknight = rgb("131A28")
#let color-darknight = rgb("141E1E")
#let color-darkgray = rgb("213131")
// #let default-accent-color = rgb("333ECC")
#let default-accent-color = rgb("2C7865")
#let color-lightgray = rgb("415161")
// const icons
#let linkedin-icon = box(fa-icon("linkedin", fa-set: "Brands", fill: color-darknight))
#let github-icon = box(fa-icon("github", fa-set: "Brands", fill: color-darknight))
#let phone-icon = fa-phone()
#let email-icon = box(fa-icon("at", fill: color-darknight))

/// Helpers

// layout utility
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

/// Show a link with an icon, specifically for Github projects
/// *Example*
/// #example(`resume.github-link("DeveloperPaul123/awesome-resume")`)
/// - github_path (string): The path to the Github project (e.g. "DeveloperPaul123/awesome-resume")
/// -> none
#let github-link(github_path) = {
  set box(height: 11pt)
  
  align(right + horizon)[
    #fa-icon("github", fa-set: "Brands", fill: color-darkgray) #link("https://github.com/" + github_path, github_path)
  ]
}

/// Right section for the justified headers
/// - body (content): The body of the right header
/// - accent_color (color): The accent color to color the text with. This defaults to the default-accent-color
#let secondary-right-header(body, accent_color: default-accent-color) = {
  set text(accent_color, size: 9pt, style: "italic", weight: "medium")
  body
}

/// Right section of a tertiaty headers. 
/// - body (content): The body of the right header
#let tertiary-right-header(body) = {
  set text(weight: "medium", style: "italic", size: 7pt)
  body
}

/// Justified header that takes a primary section and a secondary section. The primary section is on the left and the secondary section is on the right.
/// - primary (content): The primary section of the header
/// - secondary (content): The secondary section of the header
#let justified-header(primary, secondary) = {
  set block(above: 0em, below: 0.5em)
  pad[
    #__justify_align[
      == #primary
    ][
      #secondary-right-header[#secondary]
    ]
  ]
}

/// Justified header that takes a primary section and a secondary section. The primary section is on the left and the secondary section is on the right. This is a smaller header compared to the `justified-header`.
/// - primary (content): The primary section of the header
/// - secondary (content): The secondary section of the header
#let secondary-justified-header(primary, secondary) = {
    __justify_align[
      === #primary
    ][
      #tertiary-right-header[#secondary]
    ]
}
/// --- End of Helpers

/// ---- Resume Template ----

/// Resume template that is inspired by the Awesome CV Latex template by posquit0. This template can loosely be considered a port of the original Latex template.
///
/// The original template: https://github.com/posquit0/Awesome-CV 
///
/// - author (content): Structure that takes in all the author's information
/// - date (string): The date the resume was created
/// - accent_color (color): The accent color of the resume
/// - body (content): The body of the resume
/// -> none
#let resume(
  author: (:), 
  // date: datetime.today().display("[month repr:long] [day], [year]"), 
  accent_color: default-accent-color, 
  body) = {
  set document(
    author: author.firstname + " " + author.lastname, 
    title: "resume",
  )
  
  set text(
    // font: ("Source Sans Pro"),
    font: ("Atkinson Hyperlegible"),
    lang: "en",
    size: 8pt,
    fill: color-darkgray,
    fallback: true
  )

  set page(
    paper: "a4",
    margin: (left: 15mm, right: 15mm, top: 10mm, bottom: 10mm),
    // footer: [
    //   #set text(fill: gray, size: 8pt)
    //   #__justify_align_3[
    //     #smallcaps[#date]
    //   ][
    //     #smallcaps[
    //       #author.firstname
    //       #author.lastname
    //       #sym.dot.c
    //       #"Résumé"
    //     ]
    //   ][
    //     #counter(page).display()
    //   ]
    // ],
    footer-descent: 0pt,
  )
  
  // set paragraph spacing
  show par: set block(above: 0.75em, below: 0.75em)
  set par(justify: true)

  set heading(
    numbering: none,
    outlined: false,
  )
  
  show heading.where(level:1): it => [
    #set block(above: 1em, below: 1em)
    #set text(
      size: 12pt,
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
    set text(color-darkgray, size: 10pt, style: "normal", weight: "bold")
    it.body
  }

  show heading.where(level: 3): it => {
    set text(size: 7pt, weight: "bold")
    smallcaps[#it.body]
  }
  
  let name = {
    align(center)[
      #pad(bottom: 5pt)[
        #block[
          #set text(size: 32pt, style: "normal", font: ("Free Serif"))
          #text(accent_color, weight: "regular")[#author.firstname]
          #text(weight: "bold")[#author.lastname]
        ]
      ]
    ]
  }

  let positions = {
    set text(
      accent_color,
      size: 9pt,
      weight: "regular"
    )
    align(center)[
      #smallcaps[
        #author.positions.join(
          text[#"  "#sym.dot.c#"  "]
        )
      ]
    ]
  }

  // let address = {
  //   set text(
  //     size: 9pt,
  //     weight: "bold",
  //     style: "italic",
  //   )
  //   align(center)[
  //     #author.address
  //   ]
  // }

  let contacts = {
    set box(height: 7pt)
    
    let separator = box(width: 5pt)

    align(center)[
      #set text(size: 8pt, weight: "regular", style: "normal")
      #block[
        #align(horizon)[
          #phone-icon
          // #box[#text(author.phone)]
          #box[#link("tel:"+author.phone)]
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
  positions
  contacts
  body
}

/// The base item for resume entries. 
/// This formats the item for the resume entries. Typically your body would be a bullet list of items. Could be your responsibilities at a company or your academic achievements in an educational background section.
/// - body (content): The body of the resume entry
#let resume-item(body) = {
  set text(size: 8pt, style: "normal", weight: "light")
  set par(leading: 0.65em)
  // set list(indent: 0.5em)
  body
}

/// The base item for resume entries. This formats the item for the resume entries. Typically your body would be a bullet list of items. Could be your responsibilities at a company or your academic achievements in an educational background section.
/// - title (string): The title of the resume entry
/// - location (string): The location of the resume entry
/// - date (string): The date of the resume entry, this can be a range (e.g. "Jan 2020 - Dec 2020")
/// - description (content): The body of the resume entry
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

/// Show cumulative GPA.
/// *Example:*
/// #example(`resume.resume-gpa("3.5", "4.0")`)
#let resume-gpa(numerator, denominator) = {
  set text(size: 12pt, style: "italic", weight: "light")
  text[Cumulative GPA: #box[#strong[#numerator] / #denominator]]
}

/// Show a certification in the resume.
/// *Example:*
/// #example(`resume.resume-certification("AWS Certified Solutions Architect - Associate", "Jan 2020")`)
/// - certification (content): The certification
/// - date (content): The date the certification was achieved
#let resume-certification(certification, date) = {
  justified-header(certification, date)
}

/// Show a list of skills in the resume under a given category.
/// - category (string): The category of the skills
/// - items (list): The list of skills. This can be a list of strings but you can also emphasize certain skills by using the `strong` function.
#let resume-skill-item(category, items) = {
  set block(below: 0.45em)
  set pad(top: 2pt)
  
  pad[
    #grid(
      columns: (25fr, 70fr),
      gutter: 10pt,
      align(right)[
        #set text(hyphenate: false)
        == #category
      ],
      align(left)[
        #set text(size: 9pt, style: "normal", weight: "light",fill:default-accent-color,)
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
  // body-indent: 0.5em,
  marker: ([#box(height:7pt,fa-trophy(fill:color-lightgray))],[])
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
  marker: [#box(height:7pt,fa-award(fill:color-lightgray))]
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
      marker:[#box(height:6pt,fa-code(fill:default-accent-color))],
      indent: 2pt,
      body-indent: 0.5em
      )
    - #stack
  ]
}