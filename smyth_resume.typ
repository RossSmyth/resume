#set par(justify: true)
#set page(
  paper: "us-letter",
  header: text(12pt)[
    *Christopher Ross Smyth*
    #h(1fr)
    *Résumé*
  ],
  numbering: "p. 1 of 1",
)

// Headers for the left column of the page
#let col_hed(cont) = heading(outlined: true, bookmarked: true)[
  #text(11pt, weight: "regular")[#smallcaps[#cont]]
]

// Lists of stuff
#let stuff_list(..stuff) = list(indent: 1em, ..stuff)

#grid(
  columns: 2,
  gutter: 0.5cm,
  col_hed[Contact\ Information],
  grid(
    columns: 2,
    gutter: 1fr,
    [
      Ross Smyth \
      16006 Black Sheep Lane \
      Manchester, MI 48158 USA
    ],
    [
      Cell: #link("tel:1+734-657-5853") \
      Email: #link("mailto:crs2017@gmail.com") \
      GitHub: #link("https://github.com/RossSmyth")[GitHub.com/RossSmyth] \
      LinkedIn: #link("https://www.linkedin.com/in/rosssmyth")[LinkedIn.com/in/rosssmyth]
    ],
  ),

  col_hed[Overview], [Software developer],
  col_hed[Education],
  [
    #link("https://www.mtu.edu/")[*Michigan Technological University*], Houghton, MI
    \
    B.S. Mechanical Engineering, May 2021 #h(1fr) GPA: 3.57 (4.0 scale)
    #stuff_list(
      [Specialization in signals, systems, and control (focus on space systems)],
      [Minor in Aerospace Engineering],
    )
  ],

  col_hed[Experience],
  [
    #link("https://www.electrocraft.com/")[*ElectroCraft*], Saline, MI #h(1fr) February
    2023 to Present \
    #underline[Embedded Software Engineer] #h(1fr) February 2023 to Present \
    #stuff_list(
      [Developed firmware for two products in C],
      [Developed customer-facing desktop software in Rust],
    )
    #link("https://orbionspace.com/")[*Orbion Space Technology*], Houghton, MI #h(1fr) May
    2019 to February 2023 \
    #underline[Lead Test Software Engineer] #h(1fr) June 2021 to February 2023 \
    #stuff_list(
      [Developed & maintained data processing software],
      [Architect and author of new software suite for testing company's product],
    )
  ],

  col_hed[Skills],
  box(height: 6em, columns(3, gutter: 3pt)[
    - Python
    - Data visualization
    - Numpy, SciPy, Pandas
    - Matlab
    - Simulink
    - Rust
    - .NET
    - C
    - git
    - GitHub
    - Some Docker
  ]),

  col_hed[Leadership],
  [
    *ADC Systems Engineer*, #link("https://aerospace.mtu.edu/enterprise/")[MTU Aerospace Enterprise] #h(1fr) December
    2018 to April 2021 \
    #par(
      first-line-indent: 1em,
      hanging-indent: 1em,
    )[Technical lead of a team of 5-10 student engineers responsible for designing,
      architecting, and testing the attitude determination and control subsystem of
      small spacecraft.]
    *Eagle Scount*, Troop 425

  ],

  col_hed[Work History],
  [
    - *Intern*, Orbion Space Technology #h(1fr) May 2019 to June 2021
    - *Intern*, Keweenaw Research Center #h(1fr) May 2018 to April 2019
  ],
)
