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


#page(margin: (bottom: 0.95cm))[

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
        \
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
    [Dados $phi =_d phi(v_1, ..., v_n)$, *A* una estructura de tipo $tau$ y $a_1, ..., a_n in A$, defina qué significa \ $A |= phi[a_1, ..., a_n]$ (i.e. Convención notacional 4 y parte del #link(<combo-def-6>)[Combo 6]).],
    [
      Si declaramos $phi =_d phi(v_1, ..., v_n)$, *A* es un modelo de tipo $tau$ y $a_1, ..., a_n in A$ entonces $bold(A) |= phi[a_1, ..., a_n]$ significara que $bold(A) |= phi[arrow(b)]$, donde $arrow(b)$ es una asignación tal que a cada $v_i$ le asigna el valor de $a_i$.
    ],
  )

  #definitionStructure(
    5,
    [Defina $(L, s, i,^c, 0, 1)\/theta$ (con $theta$ una congruencia del reticulado complementado $(L, s, i,^c, 0, 1)$) <combo-def-1.5>.],
    [
      Sea $(L, s, i,^c, 0, 1)$ un reticulado complementado. Una _congruencia sobre_ $(L, s, i,^c, 0, 1)$ sera una relación de equivalencia sobre $L$ la cual cumpla \
      #box(width: 92%)[
        #set enum(numbering: "(1)", indent: 12.8pt)
        + $theta$ es una congruencia sobre $(L, #s, #i, 0,1)$ #footnote[
            \
            Una _congruencia sobre $(L, #s, #i, 0, 1)$_ sera una relación de equivalencia $theta$ la cual sea una _congruencia sobre $(L,s, i)$_. \
            Una _congruencia sobre $(L, #s, #i)$_ sera una relación de equivalencia $theta$ sobre L la cual cumpla: \
            #box(width: 100%, height: 1pt)[
              $ x theta x' med med y med med y theta y'
              quad "implica" quad
              (x #s y) theta (x' #s y') med med y med med (x #i y) theta (x' #i y') $
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
      La $6$-upla $(L\/theta, tilde(#s), tilde(#i), tilde(""^c), 0\/theta, 1\/theta)$ es llamada el _cociente de_ $(L, s, i,^c, 0, 1)$ sobre $theta$ y la denotamos con $(L, s, i,^c, 0, 1)\/theta$. \
      // Entonces denotamos por $(L, s, i,^c, 0, 1)\/theta$ a la $6$-upla $(L\/theta, tilde(#s), tilde(#i), tilde(""^c), 0\/theta, 1\/theta)$.
    ],
  )
]

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
        $ x theta x' med med y med med y theta y'
        quad "implica" quad
        (x #s y) theta (x' #s y') med med y med med (x #i y) theta (x' #i y') $
      ]
    ], las condiciones de congruencia permiten definir dos operaciones binarias $tilde(#s)$ y $tilde(#i)$ como: \
    #box(width: 100%)[
      $
        x\/theta tilde(#s) y\/theta = (x #s y)\/theta
        quad quad , quad quad
        x\/theta tilde(#i) y\/theta = (x #i y)\/theta
      $
    ] \
    Entonces la terna $(L\/theta, tilde(#s), tilde(#i))$ es llamada el _cociente de $(L, s, i)$ sobre $theta$_ y la denotamos por $(L, s, i)\/theta$.

  ],
)

#pagebreak()

#combo_title(3)

#definitionStructure(
  1,
  [Dados $t =_d t(v_1, ..., v_n) in T^tau$, *A* una estructura de tipo $tau$ y $a_1, ..., a_n in A$, defina $t^A [a_1, ..., a_n]$ \ (i.e. Convención notacional 2 y parte del #link(<combo-def-5>)[Combo 5]).],
  [
    Si declaramos $t =_d t(v_1, ..., v_n)$, *A* es una estructura de tipo $tau$ y $a_1, ..., a_n in A$ entonces con $t^A [a_1, ..., a_n]$ denotaremos al elemento $t^bold(A)[arrow(b)]$, donde $arrow(b)$ es una asignación tal que a cada $v_i$ le asigna el valor de $a_i$.
  ],
)

#definitionStructure(
  2,
  [Defina "F es un homomorfismo de $(L, s, i,^c, 0, 1)$ en $(L', s', i',^c', 0', 1')$".],
  [
    Sean $(L, s, i,^c, 0, 1)$ y $(L', s', i',^c', 0', 1')$ reticulados complementados. Una función $F: L -> L'$ será llamada un _homomorfismo de_ $(L, s, i,^c, 0, 1)$ _en_ $(L', s', i',^c', 0', 1')$ si para todo $x, y in L$ se cumplen que: \
    #box(width: 100%)[
      $
        F(x #s y) = F(x) #s' F(y) quad quad
        F(x #i y) = F(x) #i' F(y) quad quad
        F(x^c) = F(x)^c' #v(18pt) \
        F(0) = 0' quad quad
        F(1) = 1'
      $
    ]
  ],
)

#definitionStructure(
  3,
  [Defina "filtro generado por $S$ en $(L, s, i)$".],
  [
    Dado un conjunto $S c= L$, denotaremos con $[S)$ el siguiente conjunto\
    #box(width: 100%)[
      $
        #v(18pt) [S)= {y in L: y >= s_1 #i ... #i s_n, "para algunos" s_1,...,s_n in S, n>=1}
      $
    ] \
    Llamaremos a $[S)$ el _filtro generado por_ $S$ _en_ $(L, s, i)$. \
  ],
)

#definitionStructure(
  4,
  [Defina cuando $bold(J) in italic("Just")^+$ es balanceada. <combo-def-3.4>],
  note: [No hace falta que defina $~B~^(bold(J))$.],
  [
    Definimos $bold(J)$ es _balanceada_ si se dan las siguientes condiciones:\
    #box(width: 100%)[
      #set enum(numbering: "(1)", indent: 12.8pt)
      + Por cada $k in NN$ a lo sumo hay un $i$ tal que $bold(J)_i = "HIPk"$ y a lo sumo hay un $i$ tal que \ $bold(J)_i = "TESISk"alpha$, con $alpha in "JustBas"$. \
      + Si $bold(J)_i = "HIPk"$, entonces hay un  $l > i$ tal que $bold(J)_l = "TESISk"alpha$ con $alpha in "JustBas"$. \
      + Si $bold(J)_i = "TESISk"alpha$ con $alpha in "JustBas"$, entonces hay un  $l < i$ tal que $bold(J)_l = "HIPk"$. \
      + Si $B_1, B_2 in ~B~^(bold(J))$, entonces $B_1 inter B_2 = emptyset med med$  o $med med B_1 c= B_2 med med$ o $med med B_2 c= B_1 med$.
    ] \
  ],
)

#pagebreak()

#combo_title(4)

#definitionStructure(
  1,
  [Defina "$(L, #s, #i,^c, 0, 1)$ es un subreticulado complementado de $(L', #s', #i',^c', 0', 1')$".],
  [
    Dados reticulados complementados $(L, #s, #i,^c, 0, 1)$ y $(L', #s', #i',^c', 0', 1')$, diremos que _$(L, #s, #i,^c, 0, 1)$ es un subreticulado complementado de_ $(L', #s', #i',^c', 0', 1')$ si se dan las siguiente condiciones: \
    #box(width: 100%)[
      #set enum(numbering: "(1)", indent: 12.8pt)
      + $L c= L'$. \
      + $L$ es cerrado bajo las operaciones $#s', #i'$ y $""^c'$. #footnote[
          Es decir, para todo $x, y in L$ se cumple que $x #s' y in L$, $x #i' y in L$ y $x^c' in L$.
        ] \
      + $0 = 0'$ y $1 = 1'$.
      + $#s = #s'|_(L times L) med$ , $med #i = #i'|_(L times L) med$ y $med ""^c = ""^c'|_L$.
    ]
  ],
)

#definitionStructure(
  2,
  [Defina $A |= phi[a->]$ (versión absoluta, no dependiente de una declaración previa, i.e. $a-> in A^NN$).],
  note: [No hace falta definir $t^A [a->]$.],
  [
    Definamos recursivamente la relación $A |= phi[a->]$, donde *A* es una estructura de tipo $tau$, $phi in F^tau$ y $a->$ una asignación de *A* como: \
    #box(width: 100%)[
      #let size_phi = 80pt
      #let centro = [
        #box(width: 100pt)[
          #align(center)[
            , entonces $med med$ $bold(A) |= phi[a->]$
          ]
        ]
      ]
      #let sii = [
        #box(width: 18pt)[
          #align(center)[
            sii
          ]
        ]
      ]
      #set enum(numbering: "(1)", indent: 12.8pt)
      + Si #box(width: size_phi)[#align(center)[$phi = (t equiv s)$]] #centro #sii $t^bold(A) [a->] = s^bold(A) [a->]$
      + Si #box(width: size_phi)[#align(center)[$phi = r(t_1,...,t_m)$]] #centro #sii $(t_1^(bold(A))[arrow(a)],...,t_m^(bold(A))[arrow(a)]) in i(r)$.
      + Si #box(width: size_phi)[#align(center)[$phi = (phi_1 and phi_2)$]] #centro #sii $bold(A) |= phi_1[a->]$ y $bold(A) |= phi_2[a->]$
      + Si #box(width: size_phi)[#align(center)[$phi = (phi_1 or phi_2)$]] #centro #sii $bold(A) |= phi_1[a->]$ o $bold(A) |= phi_2[a->]$
      + Si #box(width: size_phi)[#align(center)[$phi = (phi_1 -> phi_2)$]] #centro #sii $bold(A) tack.r.double.not phi_1[a->]$ o $bold(A) |= phi_2[a->]$
      + Si #box(width: size_phi)[#align(center)[$phi = (phi_1 <-> phi_2)$]] #centro #sii se dan $bold(A) |= phi_1[a->]$ y $bold(A) |= phi_2[a->]$ \ #h(218pt) o $med med$  se dan $bold(A) tack.r.double.not phi_1[a->]$ y $bold(A) tack.r.double.not phi_2[a->]$
      + Si #box(width: size_phi)[#align(center)[$phi = not phi_1$]] #centro #sii $bold(A) tack.r.double.not phi_1[a->]$
      + Si #box(width: size_phi)[#align(center)[$phi = forall x_1 phi_1$]] #centro #sii para cada $a in A$, se da que $bold(A) |= phi_1[arrow.b ""_i^a (arrow(a))]$ #footnote[
          Dada una estructura *A* de tipo $tau$, una asignación $arrow(a) in A^NN$ y $a in A$, con $arrow.b ""_i^a (arrow(a))$ denotaremos la asignación que resulta de reemplazar en $arrow(a)$ el i-ésimo elemento por $a$.
        ]
      + Si #box(width: size_phi)[#align(center)[$phi = exists x_1 phi_1$]] #centro #sii hay un $a in A$ tal que $bold(A) |= phi_1[arrow.b ""_i^a (arrow(a))]^(#text("5", size: 8pt))$
    ]
  ],
)

#definitionStructure(
  3,
  [Defina la relación _"$v$ ocurre libremente en $phi$ a partir de $i$"_.],
  [
    Definamos recursivamente la relación _”v ocurre libremente en $phi$ a partir de $i$”_, donde $v in "Var"$, $phi in F^tau$ e \ $i in \{1, ..., |phi|\}$, como: \
    #box(width: 100%)[
      #let size_phi = 70pt
      #let centro = [
        #box(width: 210pt)[
          #align(center)[
            , entonces $med med$ _$v$ ocurre libremente en $phi$ a partir de $i$_
          ]
        ]
      ]
      #let sii = [
        #box(width: 18pt)[
          #align(center)[
            sii
          ]
        ]
      ]
      #set enum(numbering: "(1)(a)", indent: 12.8pt)
      + Si #box(width: size_phi)[#align(center)[$phi$ es atómica]] #centro #sii $v$ ocurre en $phi$ a partir de $i$. #footnote[
          Si $alpha, beta in Sigma^#estrella$, con $|alpha|,|beta| >= 1$ y un natural $i in {1,...,|beta|}$, se dice que _$alpha$ ocurre a partir de $i$ en $beta$_ cuando se de que existan palabras $delta, gamma$ tales que $beta = delta alpha gamma$ y $|delta| >= i-1$.
        ]
      + Si #box(width: size_phi)[#align(center)[$phi = phi_1 eta phi_2$]] #centro #sii se da alguna de las siguientes:
        + $v$ ocurre libremente en $phi_1$ a partir de $i-1$.
        + $v$ ocurre libremente en $phi_2$ a partir de $i- |phi_1eta|$.
      + Si #box(width: size_phi)[#align(center)[$phi = not phi_1$]] #centro #sii  $v$ ocurre libremente en $phi_1$ a \ #h(318pt) partir de $i-1$.
      + Si #box(width: size_phi)[#align(center)[$phi = Q w phi_1$]] #centro #sii  $v != w$ y $v$ ocurre libremente \ #h(318pt) en $phi_1$ a partir de $i - |Q w|$.
    ]
  ],
)

#definitionStructure(
  4,
  [Defina "reticulado cuaterna".],
  [
    Un reticulado cuaterna es una $4$-upla $(L, #s, #i, <=)$ tal que $L$ es un conjunto no vacío, $#s$ e $#i$ son operaciones binarias sobre $L$, $<=$ es una relación binaria y se cumplen las siguientes propiedades: \
    #box(width: 100%)[
      #set enum(numbering: "(1)", indent: 12.8pt)
      + $x <= x$, cualquiera sea $x in L$.
      + $x <= y$ y $y <= z$, implica $x <= z$, cualquiera sean $x, y, z in L$.
      + $x <= y$ y $y <= x$, implica $x = y$, cualquiera sean $x, y in L$.
      + $x <= x #s y$ y $y < x #s y$, cualquiera sean $x, y in L$.
      + $x <= z$ y $y <= z$ implica $x #s y <= z$, cualquiera sean $x, y, z in L$.
      + $x <= x #i y$ y $y <= x #i y$, cualquiera sean $x, y in L$.
      + $z <= x$ y $z <= y$ implica $z <= x #i y$, cualquiera sean $x, y, z in L$.
    ]
  ],
)

#pagebreak()

#page(margin: (bottom: 0cm))[

  #combo_title(5)

  #definitionStructure(
    1,
    [Explique la notación declaratoria para *términos* con sus 3 convenciones notacionales. <combo-def-5>],
    [
      Supongamos $v_1, ..., v_n in "Var"$ y  $t$ un termino de tipo $tau$. Entonces escribimos $t =_d t(v_1, ..., v_n)$ para declarar que $v_1,...,v_n$ son variables distintas y tales que toda variable que ocurre en $t$ pertenecen a ${v_1,...,v_n}$. \
      Esta notación declaratoria es muy útil cuando se combina con las siguientes convenciones notacionales: \
      #h(7pt) #text([*Convención notacional 1*], size: 12pt):
      Si hemos declarado $t =_d t(v_1, ..., v_n)$ y $P_1,...,P_n$ son palabras cualquieras, entonces $t(P_1,...,P_n)$ denotará la palabra que resulta de reemplazar simultáneamente cada ocurrencia de  $v_1$ en $t$ por $P_1$, cada ocurrencia de $v_2$ en $t$ por $P_2$, etc. \
      #h(7pt) #text([*Convención notacional 2*], size: 12pt):
      Si hemos declarado $t =_d t(v_1, ..., v_n)$, *A* es un modelo de tipo $tau$ y $a_1, ..., a_n in A$, entonces con $t^A [a_1, ..., a_n]$ denotaremos al elemento $t^bold(A)[arrow(b)]$, donde $arrow(b)$ es una asignación tal que a cada $v_i$ le asigna el valor de $a_i$. \
      #h(7pt) #text([*Convención notacional 5*], size: 12pt):
      Si hemos declarado $t =_d t(v_1, ..., v_n)$ y se da que $t = f(t_1,...,t_m)$, con $f in F_m, m>=1$ y $t_1,...,t_m in T_k^tau$, supondremos tácitamente que también hemos echo las declaraciones $t_1 =_d t_1(v_1,...,v_k), ..., t_m =_d t_m (v_1,...,v_k)$. Esto lo podemos hacer ya que obviamente las variables que ocurren en los $t_1,...,t_m$ están en ${v_1,...,v_k}$.
    ],
  )

  #combo_title(6)

  #definitionStructure(
    1,
    [Explique la notación declaratoria para *fórmulas* con sus 3 convenciones notacionales. <combo-def-6>],
    note: [Puede asumir la notación declaratoria para términos.],
    [
      Supongamos $v_1, ..., v_n in "Var"$ y  $phi$ es una formula de tipo $tau$. Entonces escribimos $phi =_d phi(v_1, ..., v_n)$ para declarar que $v_1,...,v_n$ son variables distintas y tales que $"Li"(phi) c= {v_1,...,v_n}$. \
      Esta notación declaratoria es muy útil cuando se combina con las siguientes convenciones notacionales: \
      #h(7pt) #text([*Convención notacional 3*], size: 12pt):
      Si hemos declarado $phi =_d phi(v_1, ..., v_n)$ y $P_1,...,P_n$ son palabras cualquieras, entonces $phi(P_1, ..., P_n)$ denotará la palabra que resulta de reemplazar simultáneamente cada ocurrencia de $v_1$ en $phi$ por $P_1$, cada ocurrencia de $v_2$ en $phi$ por $P_2$, etc. \
      #h(7pt) #text([*Convención notacional 4*], size: 12pt):
      Si hemos declarado $phi =_d phi(v_1, ..., v_n)$, *A* es un modelo de tipo $tau$ y $a_1, ..., a_n in A$, entonces $bold(A) |= phi [a_1, ..., a_n]$ significara que $bold(A) |= phi[arrow(b)]$, donde $arrow(b)$ es una asignación tal que a cada $v_i$ le asigna el valor de $a_i$.
      En general $bold(A) tack.r.double.not phi[arrow(b)]$ significara que no sucede $bold(A) |= phi[a_1,...,a_n]$. \
      #h(7pt) #text([*Convención notacional 6*], size: 12pt):
      Si hemos declarado $phi =_d phi(v_1, ..., v_n)$, entonces: \
      #box(width: 100%)[
        #set list(indent: 0pt, body-indent: 0.4em)
        - Si $phi = (t equiv s)$, con $t, s in T_k^tau$
          \ supondremos tácitamente que hemos hecho las declaraciones $t =_d t(v_1,...,v_n)$ y $s =_d s(v_1,...,v_n)$.
        - Si $phi = r(t_1,...,t_m)$, con $r in R_m$ y $t_1,...,t_m in T^tau$
          \ supondremos tácitamente que hemos hecho las declaraciones $t_1 =_d t_1(v_1,...,v_n), ..., t_m =_d t_m (v_1,...,v_n)$.
        - Si $phi = (phi_1 eta phi_2)$ con $eta in {and, or, ->, <->}$ y $phi_1, phi_2 in F^tau$
          \ supondremos tácitamente que hemos hecho las declaraciones $phi_1 =_d phi_1(v_1,...,v_n)$ y $phi_2 =_d phi_2(v_1,...,v_n)$.
        - Si $med med phi = not phi_1 med med$ o $med med phi = Q v_j phi_1 med med$ con $Q in {forall, exists}$, $j in {1,...,n}$ y $phi_1 in F^tau$
          \ supondremos tácitamente que hemos hecho la declaración $phi_1 =_d phi_1(v_1,...,v_n)$.
        - Si $phi = Q v phi_1$ con $Q in {forall, exists}$, $v in "Var"-{v_1,...,v_n}$ y $phi_1 in F^tau$
          \ supondremos tácitamente que hemos hecho la declaración $phi_1 =_d phi_1(v_1,...,v_n, v)$.
      ]
    ],
  )

]

#pagebreak()

#combo_title(7)

#definitionStructure(
  1,
  [Defina recursivamente la relación _"$v$ es sustituible por $w$ en $phi$"_.],
  [
    Dadas $v,w in "Var"$ y $phi in F^tau$ diremos que _$v$ es sustituible por $w$ en $phi$_ cuando ninguna ocurrencia libre de $v$ en $phi$ suceda dentro de una ocurrencia de una subformula de la forma $Q w psi$ en $phi$, tal que $Q in {forall, exists}, psi in F^tau$. \
    Ahora si definamos recursivamente la relación _$v$ es sustituible por $w$ en $phi$_ de la siguiente manera: \
    #box(width: 100%)[
      #let size_cond = 115pt
      #let entonces = [, entonces $med med$]
      #let rel = [_$v$ es sustituible por $w$ en $phi$_]
      #let not_rel = [_$v$ *no* es sustituible por $w$ en $phi$_]
      #let centro(no: false) = [
        #if (no == false) {
          box(width: 165pt)[
            #align(center)[
              #entonces #rel
            ]
          ]
        } else {
          box(width: 180pt)[
            #align(center)[
              #entonces #not_rel
            ]
          ]
        }
      ]
      #let sii = [
        #box(width: 18pt)[
          #align(center)[
            sii
          ]
        ]
      ]
      #set enum(numbering: "(1)(a)", indent: 12.8pt)
      + Si #box(width: size_cond)[#align(center)[$phi$ es atómica]] #centro().
      + Si #box(width: size_cond)[#align(center)[$phi = phi_1 eta phi_2$]] #centro() #sii
        \ #h(188pt)_$v$ es sustituible por $w$ en $phi_1$_ y _$v$ es sustituible por $w$ en $phi_2$_.
      + Si #box(width: size_cond)[#align(center)[$phi = not phi_1$]] #centro() #sii _$v$ es sustituible por $w$ en $phi_1$_.
      + Si #box(width: size_cond)[#align(center)[$phi = Q v phi_1$]] #centro().
      + Si #box(width: size_cond)[#align(center)[$phi = Q w phi_1$ y $v in "Li"(phi_1)$]] #centro(no: true).
      + Si #box(width: size_cond)[#align(center)[$phi = Q w phi_1$ y $v in.not "Li"(phi_1)$]] #centro().
      + Si #box(width: size_cond)[#align(center)[$phi = Q v phi_1$ y $u !=,v,w$]] #centro() #sii _$v$ es sustituible por $w$ en $phi_1$_.
    ]
  ],
)

#definitionStructure(
  2,
  [Defina cuando $bold(J) in italic("Just")^+$ es balanceada. (misma que la del #link(<combo-def-3.4>)[Combo 3.4])],
  link_apunte: <combo-def-3.4>,
  [],
  empty_def: true,
)

#definitionStructure(
  3,
  [Defina "filtro del reticulado terna $(L, s, i)$".],
  [
    Un _filtro_ de un reticulado terna (L, #s, #i) sera un subconjunto $F c= L$ tal que:\
    #box(width: 100%)[
      #set enum(numbering: "(1)(a)", indent: 12.8pt)
      + $F != emptyset$
      + $x,y in F$ implica $x #i y in F$
      + $x in F$ y $x <= y$ implica $y in F$
    ]
  ],
)

#definitionStructure(
  4,
  [Defina "teoría elemental".],
  [
    Una _teoría elemental_ sera un par $(Sigma, tau)$ tal que $tau$ es un tipo cualquiera y $Sigma$ es un conjunto de sentencias elementales puras#footnote[
      Ser _sentencia_ implica no tener variables libres y ser _pura_ implica que no ocurran nombres de elementos fijos.
    ] de tipo $tau$.
  ],
)

#pagebreak()

#combo_title(8)

#definitionStructure(
  1,
  [Defina $(L, s, i,^c, 0, 1)\/theta$ (con $theta$ una congruencia del reticulado complementado $(L, s, i,^c, 0, 1)$). \ (Misma que la del #link(<combo-def-1.5>)[Combo 1.5])],
  [],
  empty_def: true,
  link_apunte: <combo-def-1.5>,
)

#definitionStructure(
  2,
  [Dados $phi =_d phi(v_1, ..., v_n)$, *A* una estructura de tipo $tau$ y $a_1, ..., a_n in A$, defina qué significa \ $A |= phi[a_1, ..., a_n]$ (i.e. Convención notacional 4 y parte del #link(<combo-def-6>)[Combo 6]).],
  [
    Si hemos declarado $phi =_d phi(v_1, ..., v_n)$, *A* es un modelo de tipo $tau$ y $a_1, ..., a_n in A$, entonces $bold(A) |= phi [a_1, ..., a_n]$ significara que $bold(A) |= phi[arrow(b)]$, donde $arrow(b)$ es una asignación tal que a cada $v_i$ le asigna el valor de $a_i$.
    En general $bold(A) tack.r.double.not phi[arrow(b)]$ significara que no sucede $bold(A) |= phi[a_1,...,a_n]$.
  ],
)

#definitionStructure(
  3,
  [Dado un poset $(P, <=)$, defina "a es supremo de $S$ en $(P, <=)$".],
  [
    Sea $(P, <=)$ un poset. Dado $S c= P$, diremos que un elemento $a in P$ es _cota superior de $S$ en  $(P, <=)$_ si para todo $x in S$ se da $x<=a$. Un elemento $a in P$ sera llamado _supremo de $S$ en $(P, <=)$_ si se dan las condiciones: \
    #box(width: 100%)[
      #set enum(numbering: "(1)(a)", indent: 12.8pt)
      + $a$ es _cota superior de $S$ en $(P, <=)$_.
      + Para cada $b in P$, si $b$ es _cota superior de $S$ en $(P, <=)$_, entonces $a <= b$.
    ]
  ],
)

#definitionStructure(
  4,
  [Defina "$i$ es anterior a $j$ en $(bold(phi), bold(J))$".],
  note: [No hace falta que defina $~B~^(bold(J))$.],
  [
    Sea un _par adecuado $(bold(phi), bold(J))$_ e $i,j in {1,...,n(bold(phi))}$ #footnote[
      Recordar $n(bold(phi))$ es la "cantidad de formulas" que tiene $bold(phi).$
    ].
    Diremos que _$i$ es anterior a $j$ en $(bold(phi), bold(J))$_ si $i<j$ y ademas para todo $B in ~B~^(bold(J))$ se tiene que $i in B => j in B$.
  ],
)

#pagebreak()

#page(margin: (bottom: 0.9cm))[

  #combo_title(9)

  #definitionStructure(
    1,
    [Defina "término elemental de tipo $tau$".],
    [
      // Guía 8, pag 11
      Dado un tipo $tau = (~C~, ~F~, ~R~, a)$ los _términos elementales de tipo $tau$_ se definen con las siguientes clausulas:
      #box(width: 100%)[
        #set list(indent: 8pt)
        - Cada palabra de $~C~$ es un _término elemental de tipo $tau$_.
        - Las variables $x,y,z,w,...$ son _términos elementales de tipo $tau$_.
        - Los nombres de elementos fijos $a,b,c,d,...$ son _términos elementales de tipo $tau$_.
        - Si $f in ~F~_n$, con $n>=1$ y $t_1,...,t_n$ son términos elementales de tipo $tau$, entonces $f(t_1,...,t_n)$ es un _término elemental de tipo $tau$_.
        - Una palabra es un _término elemental de tipo $tau$_ sii puede construirse usando las cláusulas anteriores.
      ]
    ],
  )

  #definitionStructure(
    2,
    [Defina $-||-_T$.],
    [
      Sea $T = (Sigma, tau)$ una teoría. Definimos la siguiente relación binaria sobre $S^tau$#footnote[$S^tau = {phi in F^tau: "Li"(phi) = emptyset}$. es decir el conjunto de las sentencias.] como: \
      #box(width: 100%)[
        $
          #v(15pt) phi -||-_T psi " sii " (Sigma, tau) |- (phi <-> psi)
        $
      ] \
      Es decir, $-||-_T = { (phi, psi) in S^tau^2: (Sigma, tau) |- (phi <-> psi) }$
    ],
  )

  #definitionStructure(
    3,
    [Defina $bold("s")^T$ (explique por qué la definición es inambigua).],
    [
      Lema. El conjunto _$-||-_T$ es una relación de equivalencia
      #footnote[
        Una _relación $R$ de equivalencia sobre $A$_ es una relación binaria, reflexiva #text([($x R x$)], size: 8pt), simétrica #text([($x R y => y R x$)], size: 8pt) y transitiva #text([($x R y " e " y R z => x R z$)], size: 8pt).
      ]
      sobre $S^tau$_. \
      Gracias al Lema anterior, podemos definir sobre $S^tau \/ -||-_T$
      #footnote[
        $S^tau \/ -||-_T = { phi\/-||-_T: phi in S^tau }$, donde $phi\/-||-_T = {psi in S^tau: phi -||-_T psi }= {psi in S^tau: T |- (phi <-> psi) }$.
      ]
      la siguiente operación binaria $bold("s")^tau$: \
      #box(width: 100%)[
        $
          #v(15pt)
          [phi]_T bold("s")^T [psi]_T = [ (phi or psi) ]_T
        $
      ] \
      Finalmente la definición anterior es inambigua ya que vale la siguiente propiedad:\
      #box(width: 100%)[
        $
          #v(15pt)
          "Si" T |- (phi <-> phi') med med "y" med med T |- (psi <-> psi') med med "entonces" med med T |- ((phi or psi) <-> (phi' or psi'))
        $
      ]\
      garantizando que las clases de equivalencia son iguales independientemente de los representantes elegidos.
      // Para que la definición anterior sea inambigua debemos probar la siguiente propiedad:\
      // #box(width: 100%)[
      //   #align(center)[
      //     Si $[phi]_T = [phi']_T$ y $[psi]_T = [psi']_T$ entonces $[ (phi or psi) ]_T = [ (phi' or psi') ]_T$
      //   ]
      // ]\
      // es decir, probar \
      // #box(width: 100%)[
      //   #align(center)[
      //     Si $T |- (phi <-> phi')$ y $T |- (psi <-> psi')$ entonces $T |- ((phi or psi) <-> (phi' or psi'))$
      //   ]
      // ]\
    ],
  )

  #definitionStructure(
    4,
    [Defina $~A~_T$.],
    [
      Dada una teoría $T = (Sigma, tau)$, denotaremos con $~A~_T$ al algebra de Boole $(S^tau \/ -||-_T, bold("s")^T, bold(i)^T, ""^c^T, 0^T, 1^T)$, donde \
      #box(width: 100%)[
        $
          #v(15pt)
          [phi]_T #s^T [psi]_T = [ (phi or psi) ]_T quad quad quad quad
          [phi]_T #i^T [psi]_T = [ (phi and psi) ]_T quad quad quad quad
          [phi]_T^c^T = [ not phi ]_T \
          0^T = {phi in S^tau: (Sigma, tau) |- not phi #comentario([(i.e. $phi$ es refutable)])} quad med
          1^T = {phi in S^tau: (Sigma, tau) |- phi #comentario([(i.e. $phi$ es un teorema)])}
        $
      ]
      El algebra $~A~_T$ sera llamada el _algebra de Lindenbaum de_ $T$.
    ],
  )

  #definitionStructure(
    5,
    [Defina "$S$ es un subuniverso del reticulado complementado $(L, #s, #i,^c, 0, 1)$".],
    [
      // Guía 5, pág 5
      Dado $(L, #s, #i,^c, 0, 1)$ un reticulado complementado. Un conjunto $S c= L$ es llamado _subuniverso de_ $(L, #s, #i,^c, 0, 1)$ si $0,1 in S$ y ademas $S$ es cerrado bajo las operaciones $#s, #i,^c$. $med$ #footnote[
        Es decir, para todo $x, y in S$ se cumple que $x #s y in S$, $x #i y in S$ y $x^c in S$.
      ]
    ],
  )

]

#pagebreak()

#combo_title(10)

#definitionStructure(
  1,
  [Defina "tesis del bloque $<<i, j>>$ en $(phi, bold(J))$".],
  [
    Sea $(bold(phi), bold(J))$ un par adecuado de tipo $tau$. Si $<<i,j>> in ~B~^(bold(J))$, entonces $bold(phi)_j$ es la _tesis del bloque_ $<<i, j>>$ en $(bold(phi), bold(J))$.
  ],
)

#definitionStructure(
  2,
  [Defina cuando una teoría de primer orden $(Sigma, tau)$ es consistente.],
  [
    Una teoría de primer orden $(Sigma, tau)$ es _inconsistente_ cuando haya una sentencia $phi$ tal que $(Sigma, tau) |- (phi and not phi)$.
    Una teoría de primer orden $(Sigma, tau)$ es llamada _consistente_ cuando *no* sea _inconsistente_.
  ],
)

#definitionStructure(
  3,
  [Dada una teoría elemental $(Sigma, tau)$ y una sentencia elemental pura $phi$ de tipo $tau$, defina \ "prueba elemental de $phi$ en $(Sigma, tau)$".],
  [
    Dada una teoría elemental $(Sigma, tau)$ y una sentencia elemental pura $phi$ de tipo $tau$, una _prueba elemental de_ $phi$ en $(Sigma, tau)$ es una prueba de $phi$ que posea las siguientes características: \
    #box(width: 100%)[
      #set enum(numbering: "(1)(a)", indent: 12.8pt)
      + En la prueba se parte de una estructura de tipo $tau$ , fija pero arbitraria en el sentido que lo único que sabemos es que ella es una estructura que satisface los axiomas de $Sigma$ (o sea esta es la única información particular que podemos usar).
      + Las deducciones en la prueba son muy simples y obvias de justificar con mínimas frases en castellano.
      + En la escritura de la prueba lo concerniente a la matemática misma se expresa usando solo sentencias elementales de tipo $tau$.
    ]
    #comentario(
      [Notar que el concepto de prueba elemental en una teoría $(Sigma, tau)$ no es un concepto definido en forma precisa.],
    )
  ],
)

#pagebreak()

#page(margin: (bottom: 0.4cm))[

  #combo_title(11)

  #definitionStructure(
    1,
    [Enuncie el *programa de lógica matemática* dado al final de la Guía 8 y explique brevemente con qué definiciones matemáticas se van resolviendo los tres primeros puntos, y qué teoremas garantizan la resolución del cuarto punto de dicho programa.],
    [
      #text([*Programa de lógica matemática*], size: 13pt) \
      #box(width: 100%)[
        #set enum(numbering: "(1)", indent: 12.8pt)
        + Dar un modelo matemático del concepto de formula elemental de tipo $tau$.
        + Dar una definición matemática de cuando una formula elemental de tipo $tau$ es verdadera en una estructura de tipo $tau$ para una asignación dada de valores a las variables libres y a los nombres de elementos fijos de dicha formula elemental.
        + Dar un modelo matemático del concepto de prueba elemental en una teoría elemental. A estos objetos matemáticos los llamaremos pruebas formales.
        + Intentar probar matemáticamente que nuestro concepto de prueba formal es una correcta modelización matemática de la idea intuitiva de prueba elemental en una teoría elemental.
      ]

      *(1)*

      Con las definiciones de _variables_, _términos de tipo $tau$_ y _formulas de tipo $tau$_ logramos modelizar correctamente el concepto de _formula elemental puras de tipo $tau$_. #comentario([Entonces, si modelizamos los nombres de elementos fijos, listo.])

      En particular el matemático al momento de hacer una prueba elemental en una teoría elemental $(Sigma, tau)$, comienza imaginando una estructura de tipo $tau$ que lo único que sabe es que satisface las sentencias de $Sigma$. Luego, cuando fija un elemento le pone un nombre, digamos $b$, y podemos pensar que expandió su estructura imaginaria a una de tipo $(~C~ union {b}, ~F~, ~R~, a)$ y continua con su razonamiento, claramente esto lo puede hacer las veces que quiera en una prueba.

      Esta mecánica de prueba del matemático nos deja ver que es natural modelizar las _fórmulas elementales de tipo $tau$_ con fórmulas de tipo $tau'$, donde $tau'$ es alguna extensión de $tau$ por nombres de constante #footnote[
        Dado $tau = (~C~, ~F~, ~R~, a)$ un tipo, definimos que un tipo $tau'$ es una _extensión de $tau$ por nombres de constantes_ si $tau'$ es de la forma $(~C~', ~F~, ~R~, a)$ con $~C~'$ tal que $~C~' c= ~C~$.

      ].

      *(2)*

      Dado un tipo $tau$, una _estructura *A* de tipo _ $tau$ , una fórmula elemental $phi$ y una asignación $arrow(a) in A^NN$. \ Usando la relación $bold(A) |= phi[arrow(a)]$ definimos cuándo es verdadera.

      *(3)*

      La definición de _prueba formal_ en una _teoría de primer orden_ soluciona este punto.

      *(4)*

      El _Teorema de Corrección_ garantiza que las pruebas formales de nuestro modelo matemático son efectivamente pruebas elementales en alguna teoría elemental. \

      Pero podría pasar que sea incompleto, es decir que existan cosas que no podamos probar formalmente pero que si tengan pruebas elementales en alguna teoría elemental. \

      El _Teorema de Completitud_ garantiza que para todo lo que pueda ser probado elementalmente en una teoría elemental, exista una prueba formal en nuestro modelo matemático.

      #REVISAR
    ],
  )

]

#pagebreak()

#combo_title(12)

#definitionStructure(
  1,
  [Defina el concepto de *función* y desarrolle las tres *Convenciones Notacionales* asociadas a dicho concepto (i.e en la Guía 0).],
  link_apunte: "https://granlogico.com/apunteweb/1.7-el-concepto-de-funcion.html",
  [
    #set enum(numbering: "(1)", indent: 12.8pt)
    Una *función* es un conjunto *$f$* de pares ordenados con la siguiente propiedad
    $ "Si" (x,y) in f med"y"med (x,z) in f", entonces" y = z $
    Además, dada una función $f$ definimos
    $
      D_f & = "dominio de "f = {x : (x,y) in f "para algún " y} \
      I_f & = "imagen de "f = {y : (x,y) in f "para algún " x}
    $
    A veces escribimos Dom($f$) y Im($f$) en lugar de $D_f$ e $I_f$, respectivamente. \
    Las *convenciones notacionales* son \
    + Dado $x in D_f$ usaremos $f(x)$ para denotar el único $y in I_f$ tal que $(x,y) in f$. \
    + Escribimos $f: S c= A -> B$ para expresar que $f$ es una función tal que $D_f = S c= A$ y $I_f c= B$. \
      Escribimos $f: A -> B$ para expresar que $f$ es una función tal que $D_f = A$ y $I_f c= B$. \
      En ese contexto llamaremos a $B$ _conjunto de llegada_ ($B$ no está determinado por $f$, ya que $I_f c= B$).
    + Muchas veces, para definir una función $f$, lo que haremos es dar su dominio y su regla de asignación. Básicamente daremos precisamente el conjunto que es $D_f$ y quién es $f(x)$ para cada $x in D_f$. Esto determina por completo a $f$, ya que $f = {(x,f(x)): x in D_f}$. Algunos ejemplos son
      #align(center)[
        #table(
          columns: 3,
          stroke: none,
          column-gutter: 32pt,
          [Básico], [Con _conjunto de llegada_ y flechas], [Con flechas y por casos],
          $
             D_f & = omega \
            f(x) & = 23 dot x
          $,
          $
            f: omega & -> omega \
                   x & -> 23 dot x
          $,
          $
            f: NN & -> omega \
                x & -> cases(x+1 quad "si x es par", x+2 quad "si x es impar")
          $,
        )
      ]
  ],
)

#pagebreak()

= #smallcaps[Teoremas]

#let lema_prop_básicas_del_enchufe_simple = [
  #counter(<lema-prop-básicas-del-enchufe-simple>).step()
  #link(<lema-prop-básicas-del-enchufe-simple>)[_Lema (Propiedades básicas $|-$)_]
]


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
  [
    // Guía 14
    #show math.equation.where(block: true): set block(below: 1.4em, above: 1.4em)
    Sea
    $
      ~F~ = {F_1: F_1 "es un filtro, " x_0 in.not F_1 " y " F c= F_1}
    $
    Notar que $~F~ != emptyset$, por lo cual $(~F~, c=)$ es un poset.
    Veamos que cada cadena en $(~F~, c=)$ tiene una cota superior.
    Sea $C$ una cadena. Si $C = emptyset$, entonces cualquier
    elemento de $~F~$ es cota de $C$. Supongamos $C != emptyset$. Sea
    $
      G = {x : x in F_1, " para algún " F_1 in C}
    $
    Veamos que $G$ es un filtro. \
    Es claro que $G != emptyset$.
    Supongamos que $x, y in G$.
    Sean $F_1,F_2 in ~F~$ tales que $x in F_1$ y $y in F_2$. \
    Si $F_1 c= F_2$, entonces ya que $F_2$ es un filtro tenemos que $x #i y in F_2 c= G$. \
    Si $F_2 c= F_1$, entonces ya que $F_1$ es un filtro tenemos que $x #i y in F_1 c= G$. \
    Ya que $C$ es una cadena, tenemos que siempre $x #i y in G$. \
    De forma análoga se prueba que si $x in G$ y $x <= y$, entonces $y in G$. \
    Concluimos que $G$ es un filtro. \
    Ademas $x_0 in.not G$, por lo que $G in ~F~$ es cota superior de $C$. \
    Por el Lema de Zorn, $(~F~, c=)$ tiene un elemento maximal $P$. \
    Veamos que $P$ es un filtro primo. \
    Supongamos $x #s y in P$ y $x,y in.not P$.
    Nótese que $[P union {x})$ es un filtro el cual contiene propiamente a $P$. \
    Entonces ya que $P$ es un elemento maximal de $(~F~, c=)$, tenemos que $x_0 in [P union {x})$. \
    Análogamente tenemos que $x_0 in [P union {y})$. \
    Ya que $x_0 in [P union {x})$ tenemos que hay elementos $p_1,...,p_n in P$, tales que
    $
      x_0 >= p_1 #i ... #i p_n #i x
    $
    *COMPLETAR (se deja como ejercicio justificar esto) ...*\
    Ya que $x_0 in [P union {y})$ tenemos que hay elementos $q_1,...,q_m in P$ tales que
    $
      x_0 >= q_1 #i ... #i q_m #i y
    $
    Si llamamos $p$ al siguiente elemento de $P$
    $
      p = p_1 #i ... #i p_n #i q_1 #i ... #i q_m
    $
    tenemos que
    $
      x_0 >= p #i x \
      x_0 >= p #i y
    $
    Se tiene entonces que $x_0 >= (p #i x) #s (p #i y) = p #i (x #s y) in P$,
    lo cual es absurdo ya que $x_0 in.not P$.
    #REVISAR
  ],
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
  [
    #set enum(numbering: "(1)", indent: 12.8pt)
    + Supongamos que $(Sigma, tau)$ es inconsistente. Por lo tanto por definición $(Sigma, tau) |- (psi and not psi)$ para alguna sentencia $psi$. Ahora dada una sentencia $phi$ arbitraria pero fija, tenemos que $phi$ se deduce por la *regla del absurdo* a parir de $(psi and not psi)$. Entonces por #lema_prop_básicas_del_enchufe_simple.(2) tenemos que $(Sigma, tau) |- phi$. \
      #comentario([
        Como $phi$ era arbitraria pero fija, lo probamos para toda sentencia $phi$. Pero esto bajo la hipótesis de que $(Sigma, tau)$ es inconsistente. Entonces probamos "Si $(Sigma, tau)$ es inconsistente, entonces $(Sigma, tau) |- phi$, para toda sentencia $phi$". \
      ])
    + Supongamos que $(Sigma, tau)$ es consistente y $(Sigma, tau) |- phi$.
      Para probarlo lo haremos por el absurdo. Supongamos que $(Sigma union {phi}, tau)$ es inconsistente. Por lo tanto tendríamos que vale \
      #box(width: 100%)[
        $
          #v(16pt)
          (Sigma, tau) |- phi " y " (Sigma union {phi}, tau) |- (psi and not psi)
        $
      ]
      con $psi$ alguna sentencia. Pero entonces por #lema_prop_básicas_del_enchufe_simple.(1) tendríamos que \ $(Sigma, tau) |- (psi and not psi)$. Es decir $(Sigma, tau)$ es inconsistente, absurdo. Entonces $(Sigma union {phi}, tau)$ es consistente. \
      #comentario([
        Entonces probamos $(Sigma union {phi}, tau)$ es consistente. Pero esto bajo la hipótesis de que $(Sigma, tau)$ es consistente y $(Sigma, tau) |- phi$. Entonces probamos "Si $(Sigma, tau)$ es consistente y $(Sigma, tau) |- phi$, entonces $(Sigma union {phi}, tau)$ es consistente". \
      ])
    + Supongamos que $(Sigma, tau) !|- not phi$.\
      Supongamos que $(Sigma union {phi}, tau)$ es inconsistente.
      Entonces por definición tenemos que \
      #box(width: 100%)[
        $
          #v(16pt)
          Sigma union {phi}, tau) |- (psi and not psi)
        $
      ]
      para algún $psi$. Pero por #lema_prop_básicas_del_enchufe_simple.(3) tendríamos \
      #box(width: 100%)[
        $
          #v(16pt)
          Sigma, tau) |- (phi -> (psi and not psi))
        $
      ]
      Finalmente tenemos que $not phi$ se deduce por la *regla del absurdo* a partir de $(phi -> (psi and not psi))$. Por lo tanto tendríamos que $Sigma, tau) |- not phi$, absurdo. Entonces $(Sigma union {phi}, tau)$ es consistente. \
      #comentario([
        Entonces probamos $(Sigma union {phi}, tau)$ es consistente. Pero esto bajo la hipótesis de que $(Sigma, tau) !|- not phi$. Entonces probamos "Si $(Sigma, tau) !|- not phi$, entonces $(Sigma union {phi}, tau)$ es consistente". \
      ])
  ],
)

#pagebreak()

#page(margin: (top: 1.45cm, bottom: 0pt, left: 1.2cm, right: 1.2cm))[

  == Resultados Muy Usados en las Demostraciones

  #text(
    size: 10.2pt,
  )[
    Las *$(star)$* indican que son un combo y el *[ n ]* es la cantidad de veces que se mencionó el resultado (incluso en una misma demo).
  ]

  #statementsStructure(
    padding_left: 5pt,
    padding_bottom: -10pt,
    [Lema (Propiedades básica de  $|-$) <lema-prop-básicas-del-enchufe-simple>],
    frequency: [
      #counter(<lema-prop-básicas-del-enchufe-simple>).update(c => c - 1)
      #context { counter(<lema-prop-básicas-del-enchufe-simple>).display() }
    ],
    [
      #set enum(numbering: "(1)", indent: 12.8pt)
      Sea $(Sigma, tau)$ una teoría.
      + (Uso de Teoremas) Si $(Sigma, tau) |- phi_1,...,phi_n$ y $(Sigma union {phi_1,...,phi_n}, tau) |- phi$, entonces $(Sigma, tau) |- phi$.
      + Supongamos $(Sigma, tau) |- phi_1,...,phi_n$. Si *R* s una regla distinta de GENERALIZACION y ELECCION y $phi$ se deduce de $phi_1,...,phi_n$ por la regla *R*, entonces $(Sigma, tau) |- phi$.
      + $(Sigma, tau) |- (phi -> psi)$ sii $(Sigma union {phi}, tau) |- psi$.
    ],
  )

]
