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

// Obvious links
#let aLink(uri, content) = link(uri, underline(text(blue)[#content]))

#grid(
  columns: (2.5cm, 1fr),
  gutter: 0.5cm,
  col_hed[Contact\
    Information],
  [
    / Email: #link("mailto:quick.lock9947@fastmail.com")
    / GitHub: #aLink("https://github.com/RossSmyth")[GitHub.com/RossSmyth]
    / LinkedIn: #aLink(
        "https://www.linkedin.com/in/rosssmyth",
      )[LinkedIn.com/in/rosssmyth]
  ],

  col_hed[Overview],
  [Software developer who is passionate about making software that
    makes sense. At ElectroCraft primarily writing embedded firmware for motor drives.
    Primarily using C, Rust, and Nix to make coherent software suites from the bare-metal firmware,
    to user-facing software. Major open-source contributor, primarily to #aLink("https://github.com/NixOS/nixpkgs/")[Nixpkgs],
    the project behind the NixOS Linux distribution.],

  col_hed[Education],
  [
    #aLink("https://www.mtu.edu/")[*Michigan Technological University*],
    Houghton, MI B.S. Engineering, May 2021
  ],

  col_hed[Experience],
  [
    #aLink("https://www.electrocraft.com/")[*ElectroCraft*], Saline, MI #h(1fr)
    February 2023 to Present\
    #underline[Embedded Software Engineer] #h(1fr)\
    #stuff_list(
      [End-to-end firmware development lifecycle of two launched products:
        one a consumer-facing off-the-shelf product, the other a multi-million dollar contract for a lab equipment supplier.],
      [Turned around many bug fixes for customers within minutes at best, leading to great customer relations.],
      [Created all software infrastructure from the ground-up. Previously there was not any revision control.
        Now each project I work on gets migrated into GitHub, has continuous-integration added,
        and tests created and automated in CI. All infrastructure uses GitHub Actions and Nix.],
    )
    #aLink("https://orbionspace.com/")[*Orbion Space Technology*], Houghton, MI
    #h(1fr) May 2019 to February 2023 \
    #underline[Lead Test Software Engineer] #h(1fr)\
    #stuff_list(
      [Developed extensive data analysis and visualization tools for internal
        testing. Streamlined the time it took for engineers to see data in a presentable format from days or weeks, to hours.
        A popular program was one that ingested coordinate-measuring machine data, and output a portable HTML file that showed a 3D model of
        the thruster and a heatmap of the measured erosion.],
      [Took a decade old graduate-student project, and led a rewrite to a more modular and maintainable solution.
        Able to complete a feature-parity rewrite in three-months, and a superior version with pluggable drivers,
        a domain-specific language, and continuous limit monitoring in six months.],
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

  col_hed[Hobbies],
  stuff_list(
    [Translating manga],
    aLink("https://ebird.org/profile/OTYxNzQ2NQ/US-MI")[Birding],
    aLink(
      "https://github.com/NixOS/nixpkgs/pulls/RossSmyth",
    )[Open-source contribution,]
      + [ primarily improving the developer experience for Nixpkgs],
    aLink("https://cats.rsmyth.net/")[Playing with my cats],
  ),
)
