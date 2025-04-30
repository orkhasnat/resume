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

// = About Me

// I'm a recent graduate with a passion for technology and a strong interest in open-source development. I flourish in collaborative environments, actively seeking opportunities to learn and grow while excelling under pressure and tight deadlines. Eager to apply my skills and enthusiasm to contribute meaningfully to innovative projects aimed at the betterment of society.

= Education

#resume-entry(
  title: "Institute of Business Administration (IBA)",
  location: "Masters in Business Administration",
  date: "April 2025 - Present",
  // description: "CGPA: "+text(fill:color-darkgray)[3.77]+" out of 4.00"
  description: "Dhaka University",
)
#resume-entry(
  title: "Islamic University of Technology",
  location: "B.Sc in Computer Science & Engineering",
  date: "Jan 2020 - Jun 2024",
  description: "CGPA: " + text(fill: color-darkgray)[3.77] + " out of 4.00",
)
#resume-entry(
  title: "Dhaka Residential Model College",
  location: "SSC & HSC",
  date: "2017 & 2019",
  description: "For both, GPA " + text(fill: color-darkgray)[5.00] + " out of 5.00",
)


= Work Experience
#resume-entry(
  title: [Therap BD Ltd.],
  location: [Assistant Software Engineer, QA],
  date: "July 2024 - Present",
  description: [
    - Worked in the Business Intelligence team.
    - Tested data pipelines and visual analytics using enterprise BI tools similar to Power BI.
    - Used Cypress to scrape data for BI dashboards and reports.
    - Performed UI and regression testing with Playwright.
    - Parallelized CI/CD automation testing pipelines using Jenkins.
    - Developed custom workflow automation using Google Sheets.
    - Contributed to early-stage testing of NLP based features, gaining exposure to ML testing.
    - Automated routine QA and CI/CD tasks, reducing manual workload and improving team productivity.
  ],
)

#resume-entry(
  title: "Beetles Cyber Security Ltd.",
  location: "PenTest Intern",
  date: "May 2023 - Jun 2023",
  description: [
    - Became familiarized with vulnerability assessment and malware development.
  ],
)


= Skills
#resume-skill-item(
  "Programming Languages",
  ("C", "C++", "Python", "JavaScript", "TypeScript", "Java", "SQL", "x86 Assembly"),
)
#resume-skill-item(
  "Frameworks",
  ("Cypress", "Playwright", "Jenkins", "Pandas", "Seaborn", "Astro", "Tailwind"),
)
#resume-skill-item("Database", ("Oracle", "MySQL", "MariaDB", "UML"))
#resume-skill-item(
  "Tools",
  ("Git", "Bash", "Linux", "Docker", "Google Sheets", "Postman", "Burp Suite", "Jira"),
)


= Projects
#resume-project(
  title: "Abaash",
  location: github-link("orkhasnat/Abaash"),
  stack: "EJS, ExpressJs, MariaDB, Bulma",
)
#resume-item[
  Abaash is a user-friendly web application designed to facilitate flat searches and rentals for IUT students, while simplifying property management for flat owners.]
#resume-project(
  title: "Broke_No_More",
  location: github-link("orkhasnat/Broke_No_More"),
  stack: "Python, Keras, Pandas",
)
#resume-item[
  Developed an LSTM-based deep learning model to forecast stock price movements in the Dhaka Stock Exchange, enhancing investment decision-making with accurate predictions.
]
#resume-project(
  title: "Fox's Tale",
  location: github-link("orkhasnat/Foxs-Tale"),
  stack: "C++, SFML",
)
#resume-item[
  A modern tribute to the classic Rapid Roll game, built with SFML. Players control a ball navigating through rising platforms while avoiding obstacles and collecting bonuses. With updated graphics, sound effects, power-ups, and achievements.]
// #resume-project(
//   title: "Outbreak",
//   location: github-link("orkhasnat/Outbreak"),
//   stack: "C++, SFML",
// )
// #resume-item[
//   Developed a viral simulator to model virus spread, incorporating parameters like transmission rate, mortality rate, and incubation period. Users can adjust these parameters to analyze their impact on virus transmission dynamics.]
#resume-project(
  title: "ISC-BD",
  location: github-link("orkhasnat/ISC-BD"),
  stack: "Astro, TypeScript, Tailwind",
)
#resume-item[
  #set text(hyphenate: false)
  Developed a comprehensive full-stack portfolio website for a non-profit NGO. Managed the entire development lifecycle, from initial conceptualization to deployment.
]



// -----------------------------------------------------------------------



= Co-Curriculars
// #v(padf * 4)
#resume-cocurr[
  - Member of #link("https://ctftime.org/team/175924")[_IUT Genesis_], team ranked #text(weight: "bold")[1#super("st")] in #link("https://ctftime.org/stats/2023/BD")[_CTFtime_] in Bangladesh (2023).
  - Organizer and Problem Setter of IUT 11#super("th") National ICT Fest 2024.
  - Problem Setter at KnightCTF 2023.
  - Organizer and Problem Setter of Intra IUT Coderush Competition 2023.
  - Volunteer at Intra IUT Hackathon Competition 2023.
  - Instructor at IUT CTF Club.
  - Participated in various national and international CTF (Capture the Flag) competitions since 2022.
]


= Achievements
// #v(padf * 4)
// #resume-achievement[
//   #let t = text.with(weight: "black")
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
// ]


#resume-achievement2[
  BUET CSE Fest CTF 2023][
  *Champion* among 100+ teams.]

#resume-achievement2[DU Cefalo ITVerse CTF 2023][*4#super[th]* among 60+ teams.]

#resume-achievement2[RITSEC International CTF 2023][*7#super[th]* among 710+ _international_ teams.]

#resume-achievement2[SUST SWE Technovent CTF 2023][*6#super[th]* among 40+ teams.]
#resume-achievement2[RIOT Flaghunt CTF 2022][*8#super[th]* among 80+ teams.]

// = Reference

// #resume-ref(
//   "Dr. Md Moniruzzaman",
//   "Assistant Professor",
//   [Computer Science and Engineering Department\ Islamic University and Technology],
//   "+8801618054411",
//   "milton@iut-dhaka.edu",
// )
// #resume-ref(
//   "Imtiaj Ahmed Chowdhury",
//   "Lecturer",
//   [Computer Science and Engineering Department\ Islamic University and Technology],
//   "+8801838929161",
//   "imtiajahmed@iut-dhaka.edu",
// )
