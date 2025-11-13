#import "template/template.typ": *
#import "utils.typ": *
#import "components/definitionStructure.typ": *
#import "components/proofStructure.typ": *
#import "components/statementsStructure.typ": *

#show: it => basic-report(
  doc-category: "Lógica | FAMAF - UNC",
  doc-title: "Combos de Definiciones, Convenciones Notacionales y Teoremas",
  author: "Ramiro Lugo Viola",
  heading-color: black,
  compact-mode: false,
  show-date: true,
  format-date: "[year]",
  it,
)

#show link: underline
#show: add_shorthands


= #smallcaps[Definiciones y Convenciones Notacionales]

#combo_title(1)

#definitionStructure(
  1,
  [Defina $n(bold(J))$ para $bold(J) in italic("Just")^+$.],
  link_apunte: "https://granlogico.com/apunteweb/7.13-teorias-de-primer-orden.html#secuencia%20de%20justificaciones",
  [
    Dado $bold(J) in italic("Just")^+$, definimos $n(bold(J))$ como el número de justificaciones que tiene la concatenación de justificaciones $bold(J)$. 
    Notar que $n(bold(J))$ está unívocamente determinado por $bold(J)$ gracias al #link("https://granlogico.com/apunteweb/7.13-teorias-de-primer-orden.html#secuencia%20de%20justificaciones")[Lema 7.43 del apunte] #footnote()[
      El lema 7.43:
      Sea $bold(J) in italic("Just")^+$. Hay únicos $n >= 1$ y $J_1, dots, J_n in bold("Just")$ tales que $bold(J) = J_1 J_2 dots J_n$.
    ] <lema-7.43>.
  ],
)

#definitionStructure(
  2,
  [Defina "par adecuado de tipo $tau$" .],
  note: [No hace falta que defina cuando $bold(J) in italic("Just")^+$.],
  [],
)

#definitionStructure(
  3,
  [Defina $italic("Mod")_T (phi)$.],
  [],
)

#definitionStructure(
  4,
  [Dados $phi =_d phi(v_1, ..., v_n)$, *A* una estructura de tipo $tau$ y $a_1, ..., a_n in A$, defina qué significa \ $A |= phi[a_1, ..., a_n]$ (i.e. Convención notacional 4).],
  [],
  
)

#definitionStructure(
  5,
  [Defina $(L, s, i, ^c, 0, 1)\/theta$ (con $theta$ una congruencia del reticulado complementado $(L, s, i, ^c, 0, 1)$).],
  [],
)

#pagebreak()

#combo_title(2)

#definitionStructure(
  1,
  [Defina $(Sigma, tau) |= phi$.],
  [],
)

#definitionStructure(
  2,
  [Defina "Partición de $A$" y $R_(~P~)$.],
  [],
)

#definitionStructure(
  3,
  [Defina cuando "$phi_i$ está bajo la hipótesis $phi_l$ en $(phi, bold(J))$".],
  note: [No hace falta que defina $~B~^(bold(J))$.],
  [],
)

#definitionStructure(
  4,
  [Defina $(L, s, i)\/theta$ (con $theta$ una congruencia del reticulado terna $(L, s, i)$).],
  note: [No hace falta que defina el concepto de congruencia.],
  [],
)

#pagebreak()

#combo_title(3)

#definitionStructure(
  1,
  [Dados $t =_d t(v_1, ..., v_n) in T^tau$, *A* una estructura de tipo $tau$ y $a_1, ..., a_n in A$, defina $t^A [a_1, ..., a_n]$ (i.e. Convención notacional 2).],
  [],
)

#definitionStructure(
  2,
  [Defina "F es un homomorfismo de $(L, s, i, ^c, 0, 1)$ en $(L', s', i', ^c', 0', 1')$".],
  [],
)

#definitionStructure(
  3,
  [Defina "filtro generado por $S$ en $(L, s, i)$".],
  [],
)

#definitionStructure(
  4,
  [Defina cuando $bold(J) in italic("Just")^+$ es balanceada.],
  note: [No hace falta que defina $~B~^(bold(J))$.],
  [],
)

#pagebreak()

#combo_title(4)

#definitionStructure(
  1,
  [Defina "$(L, s, i, ^c, 0, 1)$ es un subreticulado complementado de $(L', s', i', ^c', 0', 1')$".],
  [],
)

#definitionStructure(
  2,
  [Defina $A |= phi[a->]$ (versión absoluta, no dependiente de una declaración previa, i.e. $a-> in A^NN$).],
  note: [No hace falta definir $t^A [a->]$.],
  [],
)

#definitionStructure(
  3,
  [Defina la relación _"$v$ ocurre libremente en $phi$ a partir de $i$"_.],
  [],
)

#definitionStructure(
  4,
  [Defina "reticulado cuaterna".],
  [],
)

#pagebreak()

#combo_title(5)

#definitionStructure(
  1,
  [Explique la notación declaratoria para *términos* con sus 3 convenciones notacionales (convenciones 1, 2 y 5 de la Guía 11).],
  [],
)

#pagebreak()

#combo_title(6)

#definitionStructure(
  1,
  [Explique la notación declaratoria para *fórmulas* con sus 3 convenciones notacionales (convenciones 3, 4 y 6 de la Guía 11). Puede asumir la notación declaratoria para términos.],
  [],
)

#pagebreak()

#combo_title(7)

#definitionStructure(
  1,
  [Defina recursivamente la relación _"$v$ es sustituible por $w$ en $phi$"_.],
  [],
)

#definitionStructure(
  2,
  [Defina cuando $bold(J) in italic("Just")^+$ es balanceada.],
  note: [No hace falta que defina $~B~^(bold(J))$.],
  [],
)

#definitionStructure(
  3,
  [Defina "filtro del reticulado terna $(L, s, i)$".],
  [],
)

#definitionStructure(
  4,
  [Defina "teoría elemental".],
  [],
)

#pagebreak()

#combo_title(8)

#definitionStructure(
  1,
  [Defina $(L, s, i, ^c, 0, 1)\/theta$ (con $theta$ una congruencia del reticulado complementado $(L, s, i, ^c, 0, 1)$).],
  [],
)

#definitionStructure(
  2,
  [Dados $phi =_d phi(v_1, ..., v_n)$, *A* una estructura de tipo $tau$ y $a_1, ..., a_n in A$, defina qué significa \ $A |= phi[a_1, ..., a_n]$ (i.e. Convención notacional 4).],
  [],
)

#definitionStructure(
  3,
  [Dado un poset $(P, ≤)$, defina "a es supremo de $S$ en $(P, ≤)$".],
  [],
)

#definitionStructure(
  4,
  [Defina "$i$ es anterior a $j$ en $(phi, bold(J))$".],
  note: [No hace falta que defina $~B~^(bold(J))$.],
  [],
)

#pagebreak()

#combo_title(9)

#definitionStructure(
  1,
  [Defina "término elemental de tipo $tau$".],
  [],
)

#definitionStructure(
  2,
  [Defina $-||-_T$.],
  [],
)

#definitionStructure(
  3,
  [Defina $bold("s")^T$ (explique por qué la definición es inambigua).],
  [],
)

#definitionStructure(
  4,
  [Defina $~A~_T$.],
  [],
)

#definitionStructure(
  5,
  [Defina "$S$ es un subuniverso del reticulado complementado $(L, s, i, ^c, 0, 1)$".],
  [],
)

#pagebreak()

#combo_title(10)

#definitionStructure(
  1,
  [Defina "tesis del bloque $<<i, j>>$ en $(phi, bold(J))$".],
  [],
)

#definitionStructure(
  2,
  [Defina cuando una teoría de primer orden $(Sigma, tau)$ es consistente.],
  [],
)

#definitionStructure(
  3,
  [Dada una teoría elemental $(Sigma, tau)$ y una sentencia elemental pura $phi$ de tipo $tau$, defina \ "prueba elemental de $phi$ en $(Sigma, tau)$".],
  [],
)

#pagebreak()

#combo_title(11)

#definitionStructure(
  1,
  [Enuncie el *programa de lógica matemática* dado al final de la Guía 8 y explique brevemente con qué definiciones matemáticas se van resolviendo los tres primeros puntos, y qué teoremas garantizan la resolución del cuarto punto de dicho programa.],
  [],
)

#pagebreak()

#combo_title(12)

#definitionStructure(
  1,
  [Defina el concepto de *función* y desarrolle las tres *Convenciones Notacionales* asociadas a dicho concepto (i.e en la Guía 0).],
  [],
)

#pagebreak()

= #smallcaps[Teoremas]

#combo_title(1)

#proofStructure(
  1,
  [*Teorema* (Teorema del Filtro Primo)],
  [
    \ Sea $(L, s, i)$ un reticulado terna distributivo y $F$ un filtro.
    Supongamos $x_0 in L - F$. \
    Entonces hay un filtro primo $P$ tal que
    $x_0 in.not P$ y $F c= P$.
  ],
  [],
)

#proofStructure(
  2,
  [*Lema* (Propiedades básicas de la consistencia)],
  [
    Sea $(Sigma, tau)$ una teoría. \
    #box(width: 92%)[
      #set enum(numbering: "(1)", indent: 12.8pt)
      + Si $(Sigma, tau)$ es inconsistente, entonces $(Sigma, tau) |- phi$, para toda sentencia $phi$. \
      + Si $(Sigma, tau)$ es consistente y $(Sigma, tau) |- phi$, entonces $(Sigma ∪ {phi}, tau)$ es consistente. \
      + Si $(Sigma, tau)  !|- ¬phi$, entonces $(Sigma ∪ {phi}, tau)$ es consistente.
    ]
  ],
  [],
)

#pagebreak()
