#import "resume-lib.typ": *

#show: resume.with(
  author: (
    firstname: "Tasnimul",
    lastname: "Hasnat",
    email: "orkhasnat@gmail.com",
    phone: "+880-1731969827",
    github: "orkhasnat",
    linkedin: "tasnimul-hasnat-37515025a",
  ),
)

= About Me
//I'm a final semester undergraduate student with a keen interest in open-source projects. I actively seek out opportunities to learn and grow, specially within collaborative team environments where I can contribute to technological innovations. Adept at bug hunting and vulnerability detection, I excel at performing under tight deadlines and pressure.

I'm a recent graduate with a passion for technology and a strong interest in open-source development. I flourish in collaborative environments, actively seeking opportunities to learn and grow while excelling under pressure and tight deadlines. Eager to apply my skills and enthusiasm to contribute meaningfully to innovative projects aimed at the betterment of society.
= Education

#resume-entry(
  title: "Islamic University of Technology",
  location: "B.Sc in Computer Science & Engineering",
  date: "Jan 2020 - Jun 2024",
  description: "CGPA: "
    + text(fill: color-darkgray)[3.77]
    + " out of 4.00", // | Position: "+text(fill:color-darkgray)[19#super("th")]
)
#resume-entry(
  title: "Dhaka Residential Model College",
  location: "Higher Secondary Certificate",
  date: "2017 - 2019",
  description: "GPA: " + text(fill: color-darkgray)[5.00] + " out of 5.00",
)
#resume-entry(
  title: "Dhaka Residential Model College",
  location: "Secondary School Certificate",
  date: "2015 - 2017",
  description: "GPA: " + text(fill: color-darkgray)[5.00] + " out of 5.00",
)

= Research Experience
#resume-entry(
  title: "Binary Function Clone Detection Using MBA Simplification",
  location: "Ongoing",
  date: "",
  description: [
    - Proposed a novel approach to binary function clone detection utilizing MBA (Mathematical Boolean Arithmetic) simplification.
    - Trying to employ dynamic symbolic execution to coalesce assembly instructions into mathematical expressions.
    - Conducting benchmark study against other methods of binary clone detection to evaluate the performance of the proposed model.
  ],
)

= Work Experience
#resume-entry(
  title: "Beetles Cyber Security Ltd.",
  location: "PenTest Intern",
  date: "",
  description: [
    Became familiarized with vulnerability assessment and malware development.
  ],
)


= Projects

#resume-project(
  title: "Abaash",
  location: github-link("orkhasnat/Abaash"),
  stack: "EJS, ExpressJs, MariaDB, Bulma",
)
#resume-item[
  A web-based platform that simplifies the process of finding and renting flats for non-residential IUT students. It offers a user-friendly interface for flat owners and tenants, while providing students with a one-stop solution for accommodation and dining needs, including the management of cafeteria coupons.
]
#resume-project(
  title: "Broke_No_More",
  location: github-link("orkhasnat/Broke_No_More"),
  stack: "Python, Keras, Pandas",
)
#resume-item[
  Developed a deep learning model to forecast stock price movements in the Dhaka Stock Exchange, enhancing investment decision-making with accurate predictions. Employed a comprehensive methodology, encompassing data acquisition, pre-processing techniques, and proposed a RNN-LSTM forecasting model.
]
#resume-project(
  title: "Fox's Tale",
  location: github-link("orkhasnat/Foxs-Tale"),
  stack: "C++, SFML",
)
#resume-item[
  A modern tribute to the classic Rapid Roll game, created using the SFML library. It adds new features such as updated graphics, sound effects, obstacles, power-ups, and achievements to the original game. Nostalgic fan or a new player, it provides an engaging gaming experience that tests your reflexes, agility, and strategic thinking.
]
#resume-project(
  title: "Outbreak",
  location: github-link("orkhasnat/Outbreak"),
  stack: "C++, SFML",
)
#resume-item[
  Outbreak is a viral simulator developed in C++ and SFML. It models the spread of viruses based on parameters such as transmission rate, mortality rate, and incubation period. Users can manipulate these parameters to see how they affect the spread of the virus.
]

#pagebreak()


#resume-project(
  title: "Sanctuary",
  location: github-link("orkhasnat/Sanctuary"),
  stack: "Java, JavaFX, FXML, MariaDB",
)
#resume-item[
  A user-friendly application built with JavaFX, designed to simplify the process of ﬁnding and renting flats for IUT students. It offers students the ability to find flats based on their preferences, and allows flat owners to easily manage their properties and tenants.
]
#resume-project(
  title: "ISC-BD",
  location: github-link("orkhasnat/ISC-BD"),
  stack: "Astro, TypeScript, Tailwind",
)
#resume-item[
  // #set text(hyphenate: false)
  Developed a comprehensive full-stack portfolio website for a non-profit NGO. Managed the entire development lifecycle, from initial conceptualization to deployment.
]

= Skills
#resume-skill-item("Programming Languages", ("C", "C++", "Java", "Go", "Python", "JavaScript", "SQL", "x86 Assembly"))
#resume-skill-item("Libraries & Frameworks", ("Astro", "React", "Tailwind", "SFML", "ExpressJS", "Pandas", "Keras"))
#resume-skill-item("Other Tools", ("Git", "Bash", "Linux", "Docker", "Excel", "Burp Suite", "UML", "LaTeX"))
#resume-skill-item("Database", ("Oracle", "MySQL", "MariaDB"))



= Co-Curriculars
#v(padf * 4)
#resume-list(fa-award)[
  - Member of #link("https://ctftime.org/team/175924")[_IUT Genesis_], team ranked #text(weight: "bold")[1#super("st")] in #link("https://ctftime.org/stats/2023/BD")[_CTFtime_] in Bangladesh (2023).
  - Organizer and Problem Setter of IUT 11#super("th") National ICT Fest 2024.
  - Problem Setter at KnightCTF 2023.
  - Organizer and Problem Setter of Intra IUT Coderush Competition 2023.
  - Volunteer at Intra IUT Hackathon Competition 2023.
  - Instructor at IUT CTF Club.
  - Participated in various national and international CTF (Capture the Flag) competitions since 2022.
]


= Achievements
#v(padf * 4)
#resume-achievement[
  #let t = text.with(weight: "black")
  - #t[BUET CSE Fest CTF 2023]
    - *Champion* among 100+ teams.
  - #t[DU Cefalo ITVerse CTF 2023]
    - *4#super[th]* among 60+ teams.
  - #t[RITSEC International CTF 2023]
    - *7#super[th]* among 710+ _international_ teams.
  - #t[SUST SWE Technovent CTF 2023]
    - *6#super[th]* among 40+ teams.
  - #t[RIOT Flaghunt CTF 2022]
    - *8#super[th]* among 80+ teams.
  - #t[Awarded IUT-OIC Partial Scholarship]
    - Ranked *195#super[th]* amongst 4200+ participants.
    - Scholarship awarded for 3 Years equivalent to *\$13500*.
]


// #resume-achievement2[
// BUET CSE Fest CTF 2023][
//   *Champion* among 100+ teams.]

// #resume-achievement2[DU Cefalo ITVerse CTF 2023][*4#super[th]* among 60+ teams.]

// #resume-achievement2[RITSEC International CTF 2023][*7#super[th]* among 710+ _international_ teams.]

// #resume-achievement2[SUST SWE Technovent CTF 2023][*6#super[th]* among 40+ teams.]
// #resume-achievement2[RIOT Flaghunt CTF 2022][*8#super[th]* among 80+ teams.]
//  #resume-achievement2[Awarded IUT-OIC Partial Scholarship][
// //  Ranked *195#super[th]* amongst 4200+ participants. \
// Scholarship awarded for 3 Years equivalent to *\$13500*.]

= Reference
// #resume-ref-iut("Dr. Md Moniruzzaman","Assistant Professor","milton@iut-dhaka.edu")
// #resume-ref-iut("Imtiaj Ahmed Chowdhury","Lecturer","imtiajahmed@iut-dhaka.edu")

#resume-ref(
  "Dr. Md Moniruzzaman",
  "Assistant Professor",
  [Computer Science and Engineering Department\ Islamic University and Technology],
  "+8801618054411",
  "milton@iut-dhaka.edu",
)
#resume-ref(
  "Imtiaj Ahmed Chowdhury",
  "Lecturer",
  [Computer Science and Engineering Department\ Islamic University and Technology],
  "+8801838929161",
  "imtiajahmed@iut-dhaka.edu",
)
