#import "resume-lib.typ": *
// #import "fa-lib.typ": *
#show: resume.with(
  author: (
      firstname: "Tasnimul", 
      lastname: "Hasnat",
      email: "orkhasnat@gmail.com", 
      phone: "+880-1731969827",
      github: "orkhasnat",
      linkedin: "tasnimul-hasnat-37515025a",
      // positions: (
      //   "Software Developer",
      //   "Cybersecurity Analyst", 
      //   "Open Source Enthusiast"
      // )
  ),
)

= About Me
I'm a final semester undergraduate student with a keen interest in open-source projects. I actively seek out opportunities to learn and grow, especially within collaborative team environments where I can contribute to technological innovations. Adept at bug hunting and vulnerability detection, I excel at performing under tight deadlines and pressure.
= Education

#resume-entry(
  title: "Islamic University of Technology",
  location: "B.Sc in Computer Science & Engineering",
  date: "Jan 2020 - Present",
  description: "CGPA: "+text(fill:color-darkgray)[3.77]+" out of 4.00 | Position: "+text(fill:color-darkgray)[19#super("th")]
)
#resume-entry(
  title: "Dhaka Residential Model College",
  location: "Higher Secondary Certificate",
  date: "2017 - 2019",
  description: "GPA: "+text(fill:color-darkgray)[5.00]+" out of 5.00"
)
#resume-entry(
  title: "Dhaka Residential Model College",
  location: "Secondary School Certificate",
  date: "2015 - 2017",
  description: "GPA: "+text(fill:color-darkgray)[5.00]+" out of 5.00"
)
#v(4pt)
= Experience
#resume-entry(
  title: "Beetles Cyber Security Ltd.",
  location:"PenTest Intern",
  date:"",
  description:[
    // #v(2pt)
    Became familiarized with vulnerability assessment and malware development.]
)
#v(4pt)

= Achievements
// #resume-achievement[
//   #let t = text.with(weight:"black")
//   - #t[BUET CSE Fest CTF 2023]
//     - *Champion* among 100+ teams.
//   - #t[DU Cefalo ITVerse CTF 2023]
//     - *4#super[th]* among 60+ teams.
//   - #t[RITSEC International CTF 2023]
//     - *7#super[th]* among 710+ _international_ teams.
//   - #t[SUST SWE Technovent CTF 2023]
//     - *6#super[th]* among 40+ teams.
//   - #t[RIOT Flaghunt CTF 2022]
//     - *8#super[th]* among 80+ teams.
//   - #t[Awarded IUT-OIC Partial Scholarship]
//     - Ranked *195#super[th]* amongst 4200+ participants. 
//     - Scholarship awarded for 3 Years equivalent to *\$13500*.
// ]


#resume-achievement2[
BUET CSE Fest CTF 2023][
  *Champion* among 100+ teams.]

#resume-achievement2[DU Cefalo ITVerse CTF 2023][*4#super[th]* among 60+ teams.]

#resume-achievement2[RITSEC International CTF 2023][*7#super[th]* among 710+ _international_ teams.]

#resume-achievement2[SUST SWE Technovent CTF 2023][*6#super[th]* among 40+ teams.]
#resume-achievement2[RIOT Flaghunt CTF 2022][*8#super[th]* among 80+ teams.]
 #resume-achievement2[Awarded IUT-OIC Partial Scholarship][
//  Ranked *195#super[th]* amongst 4200+ participants. \
Scholarship awarded for 3 Years equivalent to *\$13500*.]



= Projects

#resume-project(
  title: "Abaash",
  location: github-link("orkhasnat/Abaash"),
  stack: "EJS, ExpressJs, MariaDB, Bulma"
)
#resume-item[
Abaash is a user-friendly web application designed to facilitate flat searches and rentals for IUT students, while simplifying property management for flat owners.]
#resume-project(
  title: "Broke_No_More",
  location: github-link("orkhasnat/Broke_No_More"),
  stack: "Python, Keras, Pandas"
)
#resume-item[
Developed an LSTM-based deep learning model to forecast stock price movements in the Dhaka Stock Exchange, enhancing investment decision-making with accurate predictions.
]
#resume-project(
  title: "Fox's Tale",
  location: github-link("orkhasnat/Foxs-Tale"),
  stack: "C++, SFML"
)
#resume-item[
A modern tribute to the classic Rapid Roll game, built with SFML. Players control a ball navigating through rising platforms while avoiding obstacles and collecting bonuses. With updated graphics, sound effects, power-ups, and achievements.]
#resume-project(
  title: "Outbreak",
  location: github-link("orkhasnat/Outbreak"),
  stack: "C++, SFML"
)
#resume-item[
Developed a viral simulator to model virus spread, incorporating parameters like transmission rate, mortality rate, and incubation period. Users can adjust these parameters to analyze their impact on virus transmission dynamics.]
#resume-project(
  title: "ISC-BD",
  location: github-link("orkhasnat/ISC-BD"),
  stack: "Astro, TypeScript, Tailwind"
)
#resume-item[
  #set text(hyphenate: false)
  Developed a comprehensive full-stack portfolio website for a non-profit NGO. Managed the entire development lifecycle, from initial conceptualization to deployment.
]

= Skills

#resume-skill-item("Programming Languages", ("C","C++", "Java", "Go", "Python", "JavaScript","SQL","x86 Assembly"))
#resume-skill-item("Libraries & Frameworks", ("Astro","React","Tailwind","SFML","ExpressJS","Pandas","Keras"))
#resume-skill-item("Other Tools", ("Git","Bash","Linux","Docker","Excel","Burp Suite","UML","LaTeX"))
#resume-skill-item("Database",("Oracle","MySQL","MariaDB"))

= Co-Curriculars
#resume-cocurr[
  - Member of #link("https://ctftime.org/team/175924")[_IUT Genesis_], team ranked #text(weight:"bold")[1#super("st")] in #link("https://ctftime.org/stats/2023/BD")[_CTFtime_] in Bangladesh (2023).
  - Organizer and Problem Setter of IUT 11#super("th") National ICT Fest 2024.
  - Problem Setter at KnightCTF 2023.
  - Organizer and Problem Setter of Intra IUT Coderush Competition 2023.
  - Volunteer at Intra IUT Hackathon Competition 2023.
  - Instructor at IUT CTF Club.
  - Participated in various national and international CTF (Capture the Flag) competitions since 2022.
]

// = Research
// = Reference