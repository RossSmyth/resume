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
  columns: (2.5cm, 1fr),
  gutter: 0.5cm,
  col_hed[Contact Information],
  [
    / Email: #link("mailto:quick.lock9947@fastmail.com")
    / GitHub: #link("https://github.com/RossSmyth")[GitHub.com/RossSmyth]
    / LinkedIn: #link(
        "https://www.linkedin.com/in/rosssmyth",
      )[LinkedIn.com/in/rosssmyth]
  ],

  col_hed[Overview],
  [Software developer who is extremely passionate about making software that
    makes sense. Current main job is writing firmware that makes motors spin
    exactly as customer's want. But also writing Rust software for interfacing
    with with said firmware, writing Nix for building everything reproducibly,
    and Typst so everything is documented. Able to make customers happy while
    also improving internal processes so that projects in the future can build
    on today's success.],

  col_hed[Education],
  [
    #link("https://www.mtu.edu/")[*Michigan Technological University*],
    Houghton, MI B.S. Engineering, May 2021 #h(1fr) GPA: 3.57 (4.0 scale)
  ],

  col_hed[Experience],
  [
    #link("https://www.electrocraft.com/")[*ElectroCraft*], Saline, MI #h(1fr)
    February 2023 to Present \
    #underline[Embedded Software Engineer] #h(1fr) February 2023 to Present \
    #stuff_list(
      [End-to-end firmware development lifecycle of two launched products],
      [Rapid prototyping of features for customers.],
      [Ability to turn around bug fixes for customers extremly fast.],
      [Stood up internal infrastructure for testing firmware],
      [Kicked-off migration of software into Git repos],
    )
    #link("https://orbionspace.com/")[*Orbion Space Technology*], Houghton, MI
    #h(1fr) May 2019 to February 2023 \
    #underline[Lead Test Software Engineer] #h(1fr) June 2021 to February 2023 \
    #stuff_list(
      [Developed extensive data analysis and visualization tools for internal
        testing],
      [Successful ground-up rewrite of main testing suite from a decade-old grad
        students' tool, to a production-ready testing software suite.],
    )
  ],

  col_hed[Work History],
  grid(
    columns: 2,
    align: (left, right),
    gutter: 5pt,
    column-gutter: 1cm,
    [- *Embedded Software Engineer* ElectroCraft], [February 2023 to Present],
    [- *Lead Test Software Engineer* Orbion Space Technology],
    [June 2021 to February 2023],

    [- *Intern* Orbion Space Technology], [May 2019 to June 2021],
    [- *Intern* Keweenaw Research Center], [May 2018 to April 2019],
  ),
)
