#import "./lib.typ": template, front-matter, main-matter, back-matter, cover_page, fill-line, createSection
#show: template.with(author: "Cognome Nome")

#let current_year = datetime.today().year()
#let initials = "M. S."

#set page(numbering: none)

#cover_page(
  title: "Titolo della tesi", author: "Cognome Nome", supervisor: "Prof. Cognome Nome", department: "DIPARTIMENTO DI INGEGNERIA DELL'INFORMAZIONE", degree: "CORSO DI LAUREA IN INGEGNERIA INFORMATICA", academic_year: "2023-2025",
)

#pagebreak()
#pagebreak()

// Dedication
#align(right + horizon)[
  Wings are a constraint that makes\
  it possible to fly.\
  --- Robert Bringhurst
]

#v(4cm)

#align(center + horizon)[
  To my parents...
]

#show: front-matter

#createSection(title: "Acknowledgements", content: [
  #lorem(100)
  #linebreak()
  #linebreak()
  #lorem(50)
  #parbreak()
  #fill-line([_Padova, #current_year _], [#initials])
])

#createSection(title: "Preface", content: [
  #lorem(200)
  #parbreak()
  #v(10pt)
  #grid(columns: 2 * (1fr,), align: (left, right), [
    _Padova, #current_year _
  ], [
    #initials
  ])
])

#createSection(title: "Abstract", content: [
  #lorem(200)
  #parbreak()
  #v(10pt)
  #grid(columns: 2 * (1fr,), align: (left, right), [
    _Padova, #current_year _
  ], [
    #initials
  ])
])
// #include "head/acknowledgements.typ"
// #include "head/preface.typ"
// #include "head/abstracts.typ"

#outline(title: "Contenuti")
#outline(title: "Elenco delle figure", target: figure.where(kind: image))
#outline(title: "Elenco delle tabelle", target: figure.where(kind: table))
#outline(title: "Elenco dei listati", target: figure.where(kind: raw))

#show: main-matter

#include "main/ch1_introduction.typ"
#include "main/ch2_figures_tables.typ"
#include "main/ch3_math.typ"
#include "main/ch4_more_text.typ"
#include "main/ch5_the_others.typ"

#show: back-matter

#include "tail/appendix.typ"
#include "tail/biblio.typ"
// #include "tail/cv/cv"
