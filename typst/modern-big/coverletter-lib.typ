
/// ---- Coverletter ----

/// Cover letter template that is inspired by the Awesome CV Latex template by posquit0. This template can loosely be considered a port of the original Latex template. 
/// This coverletter template is designed to be used with the resume template.
/// - author (content): Structure that takes in all the author's information
/// - profile_picture (image): The profile picture of the author. This will be cropped to a circle and should be square in nature.
/// - date (date): The date the cover letter was created
/// - accent_color (color): The accent color of the cover letter
/// - body (content): The body of the cover letter

#let default-accent-color = rgb("333ECC")


#let coverletter(
  author: (:), 
  profile_picture: image,
  date: datetime.today().display("[month repr:long] [day], [year]"),
  accent_color: default-accent-color,
  body
) = {
  set document(
    author: author.firstname + " " + author.lastname, 
    title: "resume",
  )
  
  set text(
    font: ("Source Sans Pro"),
    lang: "en",
    size: 11pt,
    fill: color-darkgray,
    fallback: true
  )

  set page(
    paper: "a4",
    margin: (left: 15mm, right: 15mm, top: 10mm, bottom: 10mm),
    footer: [
      #set text(fill: gray, size: 8pt)
      #__justify_align_3[
        #smallcaps[#date]
      ][
        #smallcaps[
          #author.firstname
          #author.lastname
          #sym.dot.c
          #"Cover Letter"
        ]
      ][
        #counter(page).display()
      ]
    ],
    footer-descent: 0pt,
  )
  
  // set paragraph spacing
  show par: set block(above: 0.75em, below: 0.75em)
  set par(justify: true)

  set heading(
    numbering: none,
    outlined: false,
  )
  
  show heading: it => [
    #set block(above: 1em, below: 1em)
    #set text(
      size: 16pt,
      weight: "regular"
    )
    
    #align(left)[   
      #text[#strong[#text(accent_color)[#it.body.text.slice(0, 3)]]]#strong[#text[#it.body.text.slice(3)]]
      #box(width: 1fr, line(length: 100%))
    ]
  ]
  
  let name = {
    align(right)[
      #pad(bottom: 5pt)[
        #block[
          #set text(size: 32pt, style: "normal", font: ("Roboto"))
          #text(accent_color, weight: "thin")[#author.firstname]
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
    align(right)[
      #smallcaps[
        #author.positions.join(
          text[#"  "#sym.dot.c#"  "]
        )
      ]
    ]
  }

  let address = {
    set text(
      size: 9pt,
      weight: "regular",
      style: "italic",
      fill: color-gray
    )
    align(right)[
      #author.address
    ]
  }

  let contacts = {
    set box(height: 9pt)
    
    let separator = [#box(sym.bar.v)]
    
    align(right)[
      #set text(size: 8pt, weight: "light", style: "normal")
      #block[
        #align(horizon)[
          #stack(dir: ltr, spacing: 0.5em,
              phone-icon,
              box[#text(author.phone)],
              separator,
              email-icon,
              box[#link("mailto:" + author.email)[#author.email]],
              separator,
              github-icon,
              box[#link("https://github.com/" + author.github)[#author.github]],
              separator,
              linkedin-icon,
              box[
                #link("https://www.linkedin.com/in/" + author.linkedin)[#author.firstname #author.lastname]
              ]
          )
        ]
      ]
    ] 
  }

  let letter-heading = {
    grid(columns: (1fr, 2fr), 
      rows: (100pt),
      align(left+horizon)[
        #block(clip: true, stroke: 0pt, radius: 2cm, 
        width: 4cm, height: 4cm, profile_picture)
      ],
      [
        #name
        #positions
        #address
        #contacts
      ]
    )
  }

  let letter_conclusion = {
    align(bottom)[
      #pad(bottom: 2em)[
        #text(weight: "light")[Sincerely,] \
        #text(weight: "bold")[#author.firstname #author.lastname] \ \
        #text(weight: "light", style: "italic")[Attached: Curriculum Vitae]
      ]
    ]
  }

  // actual content
  letter-heading
  body
  linebreak()
  letter_conclusion
}

/// Cover letter heading that takes in the information for the hiring company and formats it properly.
/// - entity_info (content): The information of the hiring entity including the company name, the target (who's attention to), street address, and city
/// - date (date): The date the letter was written (defaults to the current date)
#let hiring-entity-info(entity_info: (:), date: datetime.today().display("[month repr:long] [day], [year]")) = {
  set par(leading: 1em)
  pad(top: 1.5em, bottom: 1.5em)[
    #__justify_align[
      #text(weight: "bold", size: 12pt)[#entity_info.target]
    ][
      #text(weight: "light", style: "italic", size: 9pt)[#date]
    ]

    #pad(top: 0.65em, bottom: 0.65em)[
      #text(weight: "regular", fill: color-gray, size: 9pt)[
        #smallcaps[#entity_info.name] \
        #entity_info.street_address \
        #entity_info.city \
      ]
    ]
  ]
}

/// Letter heading for a given job position and addressee.
/// - job_position (string): The job position you are applying for
/// - addressee (string): The person you are addressing the letter to
#let letter-heading(job_position: "", addressee: "") = {
  // TODO: Make this adaptable to content
  underline(evade: false, stroke: 0.5pt, offset: 0.3em)[
    #text(weight: "bold", size: 12pt)[Job Application for #job_position]
  ]
  pad(top: 1em, bottom: 1em)[
    #text(weight: "light", fill: color-gray)[
      Dear #addressee,
    ]
  ]
}

/// Cover letter content paragraph. This is the main content of the cover letter.
/// - content (content): The content of the cover letter
#let coverletter-content(content) = {
  pad(top: 1em, bottom: 1em)[
    #set par(first-line-indent: 3em)
    #set text(weight: "light")
    #content
  ]
}

/// ---- End of Coverletter ----
