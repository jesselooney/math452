#import "@preview/ctheorems:1.1.3": *

#let thm = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))
#let cor = thmplain(
  "corollary",
  "Corollary",
  base: "theorem",
  titlefmt: strong,
)
#let lem = thmbox("lemma", "Lemma")
#let def = thmbox("definition", "Definition", inset: (x: 1.2em, top: 1em))
#let ex = thmplain("example", "Example").with(numbering: none)
#let prf = thmproof("proof", "Proof")

#let template-math(doc) = [
  #show: thmrules

  #set heading(numbering: "1.1.")

  #doc
]

#let iff = math.arrow.l.r.double.long

#let pd(f, x, n: none) = {
  if n == none [
    $(diff #f)/(diff #x)$
  ]
  else [
    $(diff^#n #f)/(diff #x^#n)$
  ]
}
