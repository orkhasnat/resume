// ------- Rule Set --------------------
#set page(
    paper: "a4",
    // margin: (
    //     left: 1.2cm,
    //     right: 1.2cm,
    //     top: 1.2cm,
    //     bottom: 1.2cm,
    // ),
)
#set text(font:"Atkinson Hyperlegible",size:12pt,hyphenate: false,lang: "en")
#show par: set block(spacing: 2em)
#set par(justify: true,linebreaks: "optimized")

// variables 
#let position = "Lecturer of CSE"
// #let employer = "United International University"
#let employer = "Central Women's University"
// #let location = "United City, Madani Avenue, Dhaka-1212"
#let location = "6 Hatkhola Road, Dhaka-1203"


#let date= datetime.today()
// #let date= datetime( year: 2024, month: 5, day: 10)


// ---- Begin Coverletter ---------
#align(center)[
  #text(weight: "black",size:32pt,fill:black.lighten(20%))[
    Tasnimul Hasnat
  ]\
  #v(1pt)
  #text(style: "italic",fill:eastern.darken(50%),weight:"light",
    link("tel:+8801731969827")
    + "  |  " +
    link("mailto:orkhasnat@gmail.com")
  )
  #v(1cm)
]


#date.display(
  "[month repr:short] [day], [year]"
)\
To\
The Registrar\
#employer\
#location


Sir,
// Dear HR,


I, Tasnimul Hasnat, am a fresh graduate from the Department of Computer Science and
Engineering (CSE) at Islamic University of Technology (IUT). I am writing this letter to express
my interest in the position of #position at #employer. I came to know
about the vacancy from your website and I consider myself as a suitable candidate for the role.


Throughout my studentship, I indulged myself in academics which not only helped me build a
solid foundation in computer science but also allowed me to graduate with an outstanding result.
As a recent graduate, I have a unique advantage in understanding the mindset of the students
allowing me to connect with them on a deeper level. From the minor experience I have in
tutoring high school students, I learned that no two students are the same and the key to
delivering knowledge effectively lies in adapting my teaching style to accommodate the
differences. Beyond my qualifications, I possess a genuine dedication to the success of my
students with the goal of inspiring them to strive for excellence in their chosen fields. I firmly
believe that these qualities will make me a good teacher fit for your esteemed institution.


With this document, I have attached my curriculum vitae which provides a comprehensive
overview of my academic background. I hope you will review my application favorably and
consider me for further evaluation at your convenience.


Thank you for your time and consideration.

Yours sincerely,\
Tasnimul Hasnat
// #text(style: "italic","Tasnimul Hasnat")
