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
    #link("https://granlogico.com/apunteweb/7.13-teorias-de-primer-orden.html#secuencia%20de%20justificaciones")[Lema 7.43 del apunte]. Sea $bold(J) in italic("Just")^+$. Hay únicos $n >= 1$ y $J_1, dots, J_n in bold("Just")$ tales que $bold(J) = J_1 J_2 dots J_n$. \
    Dada $bold(J) in italic("Just")^+$, usaremos $n(bold(J))$ y $bold(J)_1,..., bold(J)_(n(bold(J)))$ para denotar los únicos $n$ y $J_1,..., J_n$ cuya existencia nos garantiza el lema anterior.
  ],
)

#definitionStructure(
  2,
  [Defina "par adecuado de tipo $tau$" .],
  note: [No hace falta que defina cuando $bold(J) in italic("Just")^+$.],
  link_apunte: "https://granlogico.com/apunteweb/7.13-teorias-de-primer-orden.html#secuencia%20de%20justificaciones",
  [
    Un _par adecuado de tipo $tau$_ es un par $(bold(phi), bold(J)) in S^(tau+) times "Just"^+$ tal que $n(bold(phi)) = n(bold(J))$ y $bold(J)$ es balanceada.
    #footnote[
    Definimos $n (bold(phi))$ con $bold(phi) in S^(tau+)$ de forma análoga a la de justificaciones (con un Lema análogo también). \
    Definimos $bold(J)$ es _balanceada_ si se dan las siguientes condiciones:\
    #box(width: 100%)[
      #set enum(numbering: "(1)", indent: 12.8pt)
      + Por cada $k in NN$ a lo sumo hay un $i$ tal que $bold(J)_i = "HIPk"$ y a lo sumo hay un $i$ tal que $bold(J)_i = "TESISk"alpha$, con $alpha in "JustBas"$. \
      + Si $bold(J)_i = "HIPk"$, entonces hay un  $l > i$ tal que $bold(J)_l = "TESISk"alpha$ con $alpha in "JustBas"$. \
      + Si $bold(J)_i = "TESISk"alpha$ con $alpha in "JustBas"$, entonces hay un  $l < i$ tal que $bold(J)_l = "HIPk"$. \
      + Si $B_1, B_2 in ~B~^(bold(J))$, entonces $B_1 inter B_2 = emptyset med med$  o $med med B_1 c= B_2 med med$ o $med med B_2 c= B_1 med$.
    ] \
    Definimos $~B~^(bold(J))$ para cada $bold(J) in "Just"^+$ como 
      $~B~^(bold(J)) = {
          <<i, j>> : exists k med med bold(J)_i = "HIPk" med med y med bold(J)_j = "TESISk"alpha "para algún" alpha in "JustBas"
        }$.
    \
    Definimos $<<i, j>>$ para $i, j in NN$ con $i < j$ como el conjunto ${i, i+1, ..., j}$.
    ]
  ],
)

#definitionStructure(
  3,
  [Defina $italic("Mod")_T (phi)$.],
  [
    Sea $T = (Sigma, tau)$ una teoría. Dada $phi in S^tau$, definimos 
    $italic("Mod")_T (phi) 
    = {
          bold(A): bold(A) "es un modelo de" T med y med bold(A) |= phi
    }$.
  ],
)

#definitionStructure(
  4,
  [Dados $phi =_d phi(v_1, ..., v_n)$, *A* una estructura de tipo $tau$ y $a_1, ..., a_n in A$, defina qué significa \ $A |= phi[a_1, ..., a_n]$ (i.e. Convención notacional 4).],
  [
    Cuando hayamos declarado $phi =_d phi(v_1, ..., v_n)$, si *A* es un modelo de tipo $tau$ y $a_1, ..., a_n in A$ entonces $bold(A) |= phi[a_1, ..., a_n]$ significara que $bold(A) |= phi[arrow(b)]$, donde $arrow(b)$ es una asignación tal que a cada $v_i$ le asigna el valor de $a_i$.
  ],
)

#definitionStructure(
  5,
  [Defina $(L, s, i,^c, 0, 1)\/theta$ (con $theta$ una congruencia del reticulado complementado $(L, s, i,^c, 0, 1)$).],
  [
    Sea $(L, s, i,^c, 0, 1)$ un reticulado complementado. Una _congruencia sobre_ $(L, s, i,^c, 0, 1)$ sera una relación de equivalencia sobre $L$ la cual cumpla \
    #box(width: 92%)[
      #set enum(numbering: "(1)", indent: 12.8pt)
      // + $x theta x'$ y $y theta y'$ implica $ (x #s y) theta (x' #s y')$ y $ (x #i y) theta (x' #i y')$. \
      + $theta$ es una congruencia sobre $(L, #s, #i, 0,1)$ #footnote[
        \
        Una _congruencia sobre $(L, #s, #i, 0, 1)$_ sera una relación de equivalencia $theta$ la cual sea una _congruencia sobre $(L,s, i)$_. \
        Una _congruencia sobre $(L, #s, #i)$_ sera una relación de equivalencia $theta$ sobre L la cual cumpla: \
        #box(width: 100%, height: 1pt)[
          $
          x theta x' med med y med med y theta y'
          quad "implica" quad 
          (x #s y) theta (x' #s y') med med y med med (x #i y) theta (x' #i y')
          $
        ]
      ]
      + $x\/theta = y\/theta$ implica $x^c\/theta = y^c\/theta$.
    ] \
    Las condiciones anteriores permiten definir dos operaciones binarias $tilde(#s)$ y $tilde(#i)$ y una operación unaria $tilde(""^c)$  como:
    #box(width: 100%)[
      $
        x\/theta tilde(#s) y\/theta = (x #s y)\/theta
        quad quad , quad quad 
        x\/theta tilde(#i) y\/theta = (x #i y)\/theta
        quad quad,quad quad
        (x\/theta)^tilde(""^c) = (x^c)\/theta
      $
    ] \
    Entonces denotamos por $(L, s, i,^c, 0, 1)\/theta$ a la $6$-upla $(L\/theta, tilde(#s), tilde(#i), tilde(""^c), 0\/theta, 1\/theta)$.
  ],
)

#pagebreak()

#combo_title(2)

#definitionStructure(
  1,
  [Defina $(Sigma, tau) |= phi$.],
  [
    Dada $(Sigma, tau)$ una teoría y $phi$ una sentencia de tipo $tau$, escribiremos $(Sigma, tau) |= phi$ cuando $phi$ sea verdadera en todo modelo de $(Sigma, tau)$.
  ],
)

#definitionStructure(
  2,
  [Defina "Partición de $A$" y $R_(~P~)$.],
  [
    Dado un conjunto $A$, por una _partición de_ $A$ entenderemos un conjunto $~P~$ tal que: \
    #box(width: 100%)[
      #set enum(numbering: "(1)", indent: 12.8pt)
      + Cada elemento de $~P~$ es un subconjunto no vacío de $A$. \
      + SI $S_1, S_2 in ~P~$ y $S_1 != S_2$, entonces $S_1 inter S_2 = emptyset$.
      + $A = {a: a in S, "para algún" S in ~P~}$.
    ] \
    Dada una partición $~P~$ de un conjunto $A$, definimos la relación binaria asociada a $~P~$ como: \
    #box(width: 100%)[
    $
    R_(~P~) = {(a, b) in A^2: a,b in S, "para algún" S in ~P~}
    $
    ]
  ],
)

#definitionStructure(
  3,
  [Defina cuando "$phi_i$ está bajo la hipótesis $phi_l$ en $(phi, bold(J))$".],
  note: [No hace falta que defina $~B~^(bold(J))$.],
  [
    Diremos que $bold(phi)_i$ _está bajo la hipótesis_ $bold(phi)_l$ en $(phi, bold(J))$ cuando haya en $~B~^(bold(J))$ un bloque de la forma $<<l, j>>$ el cual contenga a $i$ #comentario([(osea $i in <<l, j>>$)]).
  ],
)

#definitionStructure(
  4,
  [Defina $(L, s, i)\/theta$ (con $theta$ una congruencia del reticulado terna $(L, s, i)$).],
  note: [No hace falta que defina el concepto de congruencia.],
  [
    Sea $(L, s, i)$ un reticulado terna. Dada una congruencia $theta$ sobre $(L, s, i)$ #footnote[
        Una _congruencia sobre $(L, #s, #i)$_ sera una relación de equivalencia $theta$ sobre L la cual cumpla: \
        #box(width: 100%, height: 1pt)[
          $
          x theta x' med med y med med y theta y'
          quad "implica" quad 
          (x #s y) theta (x' #s y') med med y med med (x #i y) theta (x' #i y')
          $
        ]
    ], las condiciones de congruencia permiten definir dos operaciones binarias $tilde(#s)$ y $tilde(#i)$ como: \
    #box(width: 100%)[
      $
        x\/theta tilde(#s) y\/theta = (x #s y)\/theta
        quad quad , quad quad 
        x\/theta tilde(#i) y\/theta = (x #i y)\/theta
      $
    ] \
    Entonces denotamos por $(L, s, i)\/theta$ a la $3$-upla $(L\/theta, tilde(#s), tilde(#i))$.
  ],
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
  [Defina "F es un homomorfismo de $(L, s, i,^c, 0, 1)$ en $(L', s', i',^c', 0', 1')$".],
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
  [Defina "$(L, s, i,^c, 0, 1)$ es un subreticulado complementado de $(L', s', i',^c', 0', 1')$".],
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
  [Defina $(L, s, i,^c, 0, 1)\/theta$ (con $theta$ una congruencia del reticulado complementado $(L, s, i,^c, 0, 1)$).],
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
  [Defina "$S$ es un subuniverso del reticulado complementado $(L, s, i,^c, 0, 1)$".],
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
      + Si $(Sigma, tau) !|- ¬phi$, entonces $(Sigma ∪ {phi}, tau)$ es consistente.
    ]
  ],
  [],
)

#pagebreak()
