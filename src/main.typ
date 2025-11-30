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
      Dada $bold(J) in italic("Just")^+$, usaremos $n(bold(J))$ y $bold(J)_1,..., bold(J)_(n(bold(J)))$ para denotar los únicos $n$ y $J_1,..., J_n$ cuyas existencias nos lo garantiza el #underline([_Lema_]): Sea $bold(J) in italic("Just")^+$. Hay únicos $n >= 1$ y $J_1, dots, J_n in bold("Just")$ tales que $bold(J) = J_1 J_2 dots J_n$.
    ],
  )

  #definitionStructure(
    2,
    [Defina "par adecuado de tipo $tau$" .],
    note: [No hace falta que defina cuando $bold(J) in italic("Just")^+$ es balanceada.],
    link_apunte: "https://granlogico.com/apunteweb/7.13-teorias-de-primer-orden.html#secuencia%20de%20justificaciones",
    [
      Dada $phi in S^(tau+)$, usaremos $n(bold(phi))$ y $bold(phi)_1,..., bold(phi)_(n(bold(phi)))$ para denotar los únicos $n$ y $phi_1,..., phi_n$ cuyas existencias nos lo garantiza el #underline([_Lema_]): Sea $phi in S^(tau+)$. Hay únicos $n >= 1$ y $phi_1, dots, phi_n in S^(tau+)$ tales que $bold(phi) = phi_1 phi_2 dots phi_n$.

      Un _par adecuado de tipo $tau$_ es un par $(bold(phi), bold(J)) in S^(tau+) times "Just"^+$ tal que $n(bold(phi)) = n(bold(J))$ y $bold(J)$ es balanceada.
      // #footnote[
      //   \
      //   Definimos $n (bold(phi))$ con $bold(phi) in S^(tau+)$ de forma análoga a la de justificaciones (con un Lema análogo también). \
      //   Definimos $bold(J)$ es _balanceada_ si se dan las siguientes condiciones:\
      //   #box(width: 100%)[
      //     #set enum(numbering: "(1)", indent: 12.8pt)
      //     + Por cada $k in NN$ a lo sumo hay un $i$ tal que $bold(J)_i = "HIPk"$ y a lo sumo hay un $i$ tal que $bold(J)_i = "TESISk"alpha$, con $alpha in "JustBas"$. \
      //     + Si $bold(J)_i = "HIPk"$, entonces hay un  $l > i$ tal que $bold(J)_l = "TESISk"alpha$ con $alpha in "JustBas"$. \
      //     + Si $bold(J)_i = "TESISk"alpha$ con $alpha in "JustBas"$, entonces hay un  $l < i$ tal que $bold(J)_l = "HIPk"$. \
      //     + Si $B_1, B_2 in ~B~^(bold(J))$, entonces $B_1 inter B_2 = emptyset med med$  o $med med B_1 c= B_2 med med$ o $med med B_2 c= B_1 med$.
      //   ] \
      //   Definimos $~B~^(bold(J))$ para cada $bold(J) in "Just"^+$ como
      //   $~B~^(bold(J)) = {
      //     <<i, j>> : exists k med med bold(J)_i = "HIPk" med med y med bold(J)_j = "TESISk"alpha "para algún" alpha in "JustBas"
      //   }$.
      //   \
      //   Definimos $<<i, j>>$ para $i, j in NN$ con $i < j$ como el conjunto ${i, i+1, ..., j}$.
      // ]
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
      Si declaramos $phi =_d phi(v_1, ..., v_n)$, *A* es un modelo de tipo $tau$ y $a_1, ..., a_n in A$ entonces $bold(A) |= phi[a_1, ..., a_n]$ significará que $bold(A) |= phi[arrow(b)]$, donde $arrow(b)$ es una asignación tal que a cada $v_i$ le asigna el valor de $a_i$.
    ],
  )

  #definitionStructure(
    5,
    [Defina $(L, s, i,^c, 0, 1)\/theta$ (con $theta$ una congruencia del reticulado complementado $(L, s, i,^c, 0, 1)$) <combo-def-1.5>.],
    [
      Sea $(L, s, i,^c, 0, 1)$ un reticulado complementado. Una _congruencia sobre_ $(L, s, i,^c, 0, 1)$ será una relación de equivalencia sobre $L$ la cual cumpla \
      #box(width: 92%)[
        #set enum(numbering: "(1)", indent: 12.8pt)
        + $theta$ es una congruencia sobre $(L, #s, #i, 0,1)$ #footnote[
            \
            Una _congruencia sobre $(L, #s, #i, 0, 1)$_ será una relación de equivalencia $theta$ la cual sea una _congruencia sobre $(L,s, i)$_. \
            Una _congruencia sobre $(L, #s, #i)$_ será una relación de equivalencia $theta$ sobre L la cual cumpla: \
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
      + Si $S_1, S_2 in ~P~$ y $S_1 != S_2$, entonces $S_1 inter S_2 = emptyset$.
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
    Dado un par adecuado $(bold(phi), bold(J))$. \
    Diremos que
    #h(22pt) _$bold(phi)_i$ está bajo la hipótesis $bold(phi)_l$ en $(bold(phi), bold(J))$_ #h(22pt) o #h(22pt) _$bold(phi)_l$ es la hipótesis de $bold(phi)_i$  en $(bold(phi), bold(J))$_ \ cuando haya en $~B~^(bold(J))$ un bloque de la forma $<<l, j>>$ el cual contenga a $i$ #comentario([(osea $i in <<l, j>>$)]).
  ],
)

#definitionStructure(
  4,
  [Defina $(L, s, i)\/theta$ (con $theta$ una congruencia del reticulado terna $(L, s, i)$).],
  note: [No hace falta que defina el concepto de congruencia.],
  [
    Sea $(L, s, i)$ un reticulado terna. \
    Una _congruencia sobre $(L, #s, #i)$_ será una relación de equivalencia $theta$ sobre L la cual cumpla: \
    #box(width: 100%)[
      $
        x theta x' med med y med med y theta y'
        quad "implica" quad
        (x #s y) theta (x' #s y') med med y med med (x #i y) theta (x' #i y')
      $
    ] \
    Gracias a lo anterior podemos definir en forma inambigua dos operaciones binarias $tilde(#s)$ y $tilde(#i)$ sobre $L\/theta$ como: \
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
    y lo llamaremos el _filtro generado por_ $S$ _en_ $(L, s, i)$. \
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
      + Por cada $k in NN$ a lo sumo hay un $i$ tal que $bold(J)_i = "HIPk"$ y a lo sumo hay un $j$ tal que \ $bold(J)_j = "TESISk"alpha$, con $alpha in "JustBas"$. \
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
      + Si #box(width: size_phi)[#align(center)[$phi = forall x_1 phi_1$]] #centro #sii para cada $a in A$, se da que $bold(A) |= phi_1[arrow.b ""_i^a (arrow(a))]$
      + Si #box(width: size_phi)[#align(center)[$phi = exists x_1 phi_1$]] #centro #sii hay un $a in A$ tal que $bold(A) |= phi_1[arrow.b ""_i^a (arrow(a))]$
    ] \
    aclarar que $bold(A) tack.r.double.not phi$ denota que no se cumple lo anterior y ademas usamos \
    $arrow.b ""_i^a (arrow(a))$ para denota la asignación que resulta de reemplazar en $arrow(a)$ el i-ésimo elemento por $a$.
  ],
)

#definitionStructure(
  3,
  [Defina la relación _"$v$ ocurre libremente en $phi$ a partir de $i$"_.],
  [
    Recordar que dadas $alpha, beta in Sigma^#estrella$, con $|alpha|,|beta| >= 1$ y un natural $i in {1,...,|beta|}$, se dice que _$alpha$ ocurre a partir de $i$ en $beta$_ cuando se de que existan palabras $delta, gamma$ tales que $beta = delta alpha gamma$ y $|delta| >= i-1$. \

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
      + Si #box(width: size_phi)[#align(center)[$phi$ es atómica]] #centro #sii $v$ ocurre en $phi$ a partir de $i$.
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
    Un reticulado cuaterna es una $4$-upla $(L, #s, #i, <=)$ tal que $L$ es un conjunto no vacío, $#s$ e $#i$ son operaciones binarias sobre $L$, $<=$ es una relación binaria sobre $L$ y se cumplen las siguientes propiedades: \
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
      Si hemos declarado $t =_d t(v_1, ..., v_n)$ y se da que $t = f(t_1,...,t_m)$, con $f in F_m, m>=1$ y $t_1,...,t_m in T_k^tau$, supondremos tácitamente que también hemos echo las declaraciones $t_1 =_d t_1(v_1,...,v_k), ..., t_m =_d t_m (v_1,...,v_k)$. Esto lo podemos hacer ya que obviamente las variables que ocurren en los $t_1,...,t_m$ están en ${v_1,...,v_k}$. #REVISAR
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
      ] #REVISAR
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
      + Si #box(width: size_cond)[#align(center)[$phi = Q u phi_1$ y $u !=,v,w$]] #centro() #sii _$v$ es sustituible por $w$ en $phi_1$_.
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
    Un _filtro_ de un reticulado terna (L, #s, #i) será un subconjunto $F c= L$ tal que:\
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
    Sea un _par adecuado $(bold(phi), bold(J))$_ e $i,j in {1,...,n(bold(phi))}$ #footnote[\
      Recordar $n(bold(phi))$ es la "cantidad de formulas" que tiene $bold(phi).$ \
      Dada $phi in S^(tau+)$, usaremos $n(bold(phi))$ y $bold(phi)_1,..., bold(phi)_(n(bold(phi)))$ para denotar los únicos $n$ y $phi_1,..., phi_n$ cuyas existencias nos lo garantiza el \ #underline([_Lema_]): Sea $phi in S^(tau+)$. Hay únicos $n >= 1$ y $phi_1, dots, phi_n in S^(tau+)$ tales que $bold(phi) = phi_1 phi_2 dots phi_n$.
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
    link_apunte: "https://granlogico.com/apunteweb/7.4-terminos-y-formulas-elementales-de-tipo-tau.html#definicion%20de%20termino%20elemental%20de%20tipo%20tau",
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
      Sea $T = (Sigma, tau)$ una teoría. Definimos la siguiente relación binaria sobre $S^tau med$ #footnote[$S^tau = {phi in F^tau: "Li"(phi) = emptyset}$, es decir el conjunto de las sentencias.] como: \
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

#page(margin: (bottom: 1.2cm))[

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

#combo_title(1)


#proofStructure(
  1,
  [*Teorema* (Teorema del Filtro Primo)],
  link_apunte: "https://granlogico.com/apunteweb/5.7-teoremas-del-filtro-primo-y-de-rasiowa-sikorski.html",
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
    Notar que $~F~ != emptyset$ porque $F in ~F~$. \
    #box(width: 100%)[
      #align(center)[
        $F$ es un filtro, $x_0 in.not F$ y $F c= F$. #comentario([(Si $x_0 in F => x_0 in.not L - F$, absurdo porque $x_0 in L - F$)])  \
      ]
    ]
    Por lo cual $(~F~, c=)$ es un poset. \
    Veamos que cada cadena en $(~F~, c=)$ tiene al menos una cota superior #comentario([(para aplicar el Lema de Zorn)]). \
    Sea $C$ una cadena. \
    Si $C = emptyset$, entonces cualquier elemento de $~F~$ es cota superior de $C$ #comentario([(ya que $emptyset c= A$ para cualquier conjunto $A$)]). \
    Si $C != emptyset$, sea
    $
      G = {x : x in F_1, " para algún " F_1 in C} \ #comentario([(notar que $C$ es una cadena de $(~F~, c=)$, por lo tanto $F_1 in ~F~$)])
    $
    Veamos que $G$ es un filtro. Para ello hay que probar las 3 propiedades de un filtro: \
    #box(width: 100%)[
      #set enum(numbering: "(1)(a)", indent: 12.8pt)
      + *$G != emptyset$*, lo cual es claro ya que $C != emptyset$ y todo filtro es no vacío.
      + *$x,y in G$ implica $x #i y in G$* \
        Supongamos $x, y in G$, por definición de $G$ tenemos que hay $F_1,F_2 in ~F~$ tales que $x in F_1$ y $y in F_2$. \
        Pero como $F_1,F_2 in C$ y $C$ es una cadena de $(~F~, c=)$, entonces $F_1 c= F_2$ o $F_2 c= F_1$. \
        Si $F_1 c= F_2$, entonces $x,y in F_2$, pero como $F_2$ es un filtro tenemos que $x #i y in F_2 c= G$. \
        Si $F_2 c= F_1$, entonces $x,y in F_1$, pero como $F_1$ es un filtro tenemos que $x #i y in F_1 c= G$. \
        Por lo tanto en cualquier caso $x #i y in G$. \
      + *$x in G$ y $x <= y$ implica $y in G$* \
        Supongamos $x in G$ y supongamos $x <= y$ para algún $y in L$. \
        Por definición de $G$ tenemos que hay $F_1 in ~F~$ tal que $x in F_1$. \
        Pero como $F_1$ es filtro y $x in F_1$ y $x <= y$, entonces $y in F_1 c= G$. \
        Por lo tanto $y in G$.
    ]
    Concluimos así que $G$ es un filtro. \
    Ademas $x_0 in.not G$ ya que todo filtro $F_1 in ~F~$ usado para construir $G$ cumplían que $x_0 in.not F_1$.\
    Ademas $F c= G$ ya que todo filtro $F_1 in ~F~$ usado para construir $G$ cumplía que $F c= F_1$ y $G!= emptyset$. \
    Entonces como $G$ es filtro, $x_0 in.not G$ y $F c= G$ por lo tanto concluimos que $G in ~F~$. \
    Si tomamos cualquier $F_1 in C$ por definición $F_1 c= G$. Es decir que $G$ es una cota superior de $C$ en $(~F~, c=)$. \
    Entonces probamos que $C$ tiene al menos una cota superior de $C$.

    Asi hemos probado que cada cadena en $(~F~, c=)$ tiene al menos una cota superior. \

    Por el #underline([_Lema de Zorn_]), $(~F~, c=)$ tiene un elemento maximal $P$.
    Veamos que $P$ es un filtro primo. \  \
    Claramente $P$ es un filtro ya que $P in ~F~$. \
    Para terminar de ver que sea _primo_ debemos ver que cumpla las siguientes propiedad: \
    #box(width: 100%)[
      #set enum(numbering: "(1)(a)", indent: 12.8pt)
      + *$P != L$*, es directo ya que $P in ~F~$, entonces $x_0 in.not P$ por lo tanto $P != L$.
      + *Si $x #s y in P$, entonces $x in P$ o $y in P$* \
        Supongamos que $x #s y in P$.
        Vamos a probar que $x in P$ o $y in P$ por el absurdo.
        Supongamos $x,y in.not P$.\
        Usando el _Lema para $[S)$_. Como $emptyset != P union {x} c= L$ entonces $[P union {x})$ es un filtro. \
        Ademas $P subset P union {x} c= [P union {x})$, pero como $P$ es un elemento maximal de $(~F~, c=)$, tenemos que $[P union {x}) in.not ~F~$, por lo que $x_0 in [P union {x})$ #comentario[ya que es filtro y $F c= P c=[P union {x})$]. \
        Análogamente $x_0 in [P union {y})$. \
        Como $x_0 in [P union {x})$ tenemos que hay $p_1,...,p_k in P union {x}$, tales que \
        #box(width: 100%)[
          $
            x_0 >= p_1 #i ... #i p_k
          $
        ]
        Si $p_i != x$ para $i=1,...,k$, tenemos que $p_i in P$ , entonces por propiedad de filtro (2), $p_1 #i ... #i p_k in P$. \
        Como $p_1 #i ... #i p_k <= x_0$ de nuevo por propiedad de filtro (3) $x_0 in P$, absurdo. \
        Si existe $p_j = x$ con $j in {1,...,k}$, entonces $p_1 #i ... #i p_k = p_1 #i ... #i p_(j-1) #i p_(j+1) #i ... #i p_k #i x$. \
        Esto lo podemos repetir para cada $p_i$ que sea igual a $x$ y como $x #i x = x$ tenemos que claramente hay $p'_1,...,p'_n in P$ tales que $p_1 #i ... #i p_k = p'_1 #i ... #i p'_n #i x$ \
        Concluimos entonces que hay $p_1,...,p_n in P$ tales que \
        #box(width: 100%)[
          $
            p_1 #i ... #i p_n #i x <= x_0
          $
        ]
        Análogamente como $x_0 in [P union {y})$ tenemos que hay $q_1,...,q_m in P$ tales que \
        #box(width: 100%)[
          $
            q_1 #i ... #i q_m #i y <= x_0
          $
        ]
        Si llamamos $p$ y $q$ a los siguientes elementos \
        #box(width: 100%)[
          $
            p = p_1 #i ... #i p_n quad quad y quad quad q = q_1 #i ... #i q_m
          $
        ]
        usando que el $#i$ es cota inferior y transitividad, tenemos que \
        #box(width: 100%)[
          $
            (p #i x) #i q <= (p #i x) <= x_0 quad quad y quad quad
            (q #i y) #i p <= (q #i y) <= x_0
          $
        ]
        distribuyendo inteligentemente tenemos que \
        #box(width: 100%)[
          $
            (p #i q) #i x <= x_0 quad quad y quad quad
            (p #i q) #i y <= x_0
          $
        ]
        si llamamos $h = p #i q$, tenemos que \
        #box(width: 100%)[
          $
            h #i x <= x_0 quad quad y quad quad
            h #i y <= x_0
          $
        ]
        ahora por la propiedad de que el $#s$ es la menor cota superior tenemos que \
        #box(width: 100%)[
          $
            (h #i x) #s (h #i y) <= x_0
          $
        ]
        pero como $(L, #s, #i)$ es distributivo, tenemos que \
        #box(width: 100%)[
          $
            (h #i x) #s (h #i y) = h #i (x #s y)
          $
        ]
        por lo tanto #h(150pt) $h #i (x #s y) <= x_0$. \
        Pero como $p,q in P$, entonces por la propiedad de los filtros (2) $h in P$ y por hipótesis $x #s y in P$, entonces nuevamente por la propiedad de los filtros (2) tenemos que $h #i (x #s y) in P$. \ Finalmente como $h #i (x #s y) <= x_0$ por propiedad de los filtros (3) tenemos que $x_0 in P$, absurdo. \
    ]

    Entonces $P$ es un filtro primo tal que $P in ~F~$, entonces $x_0 in.not P$ y $F c= P$. #fin_demo

    #linea_dashed

    _Lema de Zorn_ :
    Sea $(P, <=)$ un poset y supongamos que toda cadena en $P$ tiene al menos una cota superior. \
    Entonces hay un elemento maximal en $(P, <=)$.

    _Lema para $[S)$_ : Sea $(L, #s, #i)$ un reticulado terna. Supongamos $S c= L$ es no vacío. \
    #box(width: 100%, inset: (left: 74pt))[
      Entonces $[S)$ es un filtro de $(L, #s, #i)$.
      //   #set enum(numbering: "(a)", indent: 12.8pt)
      //   + Entonces $[S)$ es un filtro de $(L, #s, #i)$.
      //   + Si $F$ es un filtro de $(L, #s, #i)$ tal que $S c= F$, entonces $[S) c= F$.\
      //     Es decir $[S)$ es el menor filtro de $(L, #s, #i)$ que contiene a $S$.
    ]
  ],
)

#pagebreak()

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
    #let lema_prop_básicas_del_enchufe_simple = [#underline([_Lema (Propiedades básicas $|-$)_ ])]
    #set enum(numbering: "(1)", indent: 12.8pt, spacing: 35pt)
    + Supongamos que $(Sigma, tau)$ es inconsistente. Por lo tanto por definición $(Sigma, tau) |- (psi and not psi)$ para alguna sentencia $psi$. Ahora dada una sentencia $phi$ arbitraria pero fija, tenemos que $phi$ se deduce por la *regla del absurdo* a parir de $(psi and not psi)$. Entonces por #lema_prop_básicas_del_enchufe_simple.(2) tenemos que $(Sigma, tau) |- phi$.
      #footnote([
        \
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
      con $psi$ alguna sentencia. Pero entonces por #lema_prop_básicas_del_enchufe_simple.(1) tendríamos que \ $(Sigma, tau) |- (psi and not psi)$. Es decir $(Sigma, tau)$ es inconsistente, absurdo. Entonces $(Sigma union {phi}, tau)$ es consistente.
      #footnote([
        \
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
      Finalmente tenemos que $not phi$ se deduce por la *regla del absurdo* a partir de $(phi -> (psi and not psi))$. Por lo tanto tendríamos que $Sigma, tau) |- not phi$, absurdo. Entonces $(Sigma union {phi}, tau)$ es consistente.
      #footnote([
        \
        Entonces probamos $(Sigma union {phi}, tau)$ es consistente. Pero esto bajo la hipótesis de que $(Sigma, tau) !|- not phi$. Entonces probamos "Si $(Sigma, tau) !|- not phi$, entonces $(Sigma union {phi}, tau)$ es consistente". \
      ]) #fin_demo

      #linea_dashed

      _Lema (Propiedades básica de  $|-$)_  #link(<combo-demo-4.1>)[ es el Combo 4.1]: \ Sea $(Sigma, tau)$ una teoría. \
      #box(width: 100%)[
        #set enum(numbering: "(1)", indent: 12.8pt, spacing: 12pt)
        + (Uso de Teoremas) Si $(Sigma, tau) |- phi_1,...,phi_n$ y $(Sigma union {phi_1,...,phi_n}, tau) |- phi$, entonces $(Sigma, tau) |- phi$.
        + Supongamos $(Sigma, tau) |- phi_1,...,phi_n$. Si *R* s una regla distinta de GENERALIZACION y ELECCION y $phi$ se deduce de $phi_1,...,phi_n$ por la regla *R*, entonces $(Sigma, tau) |- phi$.
        + $(Sigma, tau) |- (phi -> psi)$ sii $(Sigma union {phi}, tau) |- psi$.
      ]
  ],
)

#pagebreak()

#page(margin: (bottom: 0.8cm))[

  #combo_title(2)

  #proofStructure(
    1,
    [*Teorema* (Teorema de Dedekind) <teo-Dedekind>],
    link_apunte: "https://granlogico.com/apunteweb/5.3-reticulados-terna.html#teorema%20de%20Dedekind",
    [
      \
      Sea $(L, #s, #i)$ un reticulado terna.
      La relación binaria definida por: \
      #box(width: 100%)[
        $
          #v(16pt)
          x <= y " sii " x #s y = y
        $
      ] \
      es un orden parcial sobre $L$ para el cual se cumple que: \
      #box(width: 100%)[
        $
          #v(16pt)
          sup({x, y}) = x #s y quad quad quad quad
          inf({x, y}) = x #i y
        $
      ] \
      cualesquiera sean $x, y in L$.
    ],
    [
      *Probemos que $<=$ es reflexiva* #comentario([(es decir $x <= x$ para cada $x in L$)]). \
      Sea $x in L$. Por propiedad de $(L, #s, #i)$ tenemos que $x #s x = x$, entonces por definición de $<=$, se da $x <= x$. \
      *Probemos que $<=$ es antisimétrica *#comentario([(es decir si $x <= y$ y $y <= x$ entonces $x = y$)]). \
      Sean $x, y in L$ tales que $x <= y$ y $y <= x$.
      Es decir por definición de $<=$ tenemos que $x #s y = y$ e $y #s x = x$. \
      Entonces aplicando propiedades de $(L, #s, #i)$ tenemos que \
      #box(width: 100%)[
        $
          x = y #s x = x #s y = y
        $
      ]
      por lo tanto $x = y$. \
      * Probemos que $<=$ es transitiva* #comentario([(es decir si $x <= y$ y $y <= z$ entonces $x <= z$)]). \
      Sean $x, y, z in L$ tales que $x <= y$ y $y <= z$.
      Es decir por definición de $<=$ tenemos que $x #s y = y$ e $y #s z = z$. \
      Entonces aplicando propiedades de $(L, #s, #i)$ tenemos que \
      #box(width: 100%)[
        $
          x #s z = x #s (y #s z) = (x #s y) #s z = y #s z = z
        $
      ]
      por lo tanto $x <= z$. \
      Osea que probamos que $(L, <=)$ es un poset.\
      *Probemos que $sup({x, y}) = x #s y$*. Primero debemos ver que $x #s y$ es cota superior de ${x, y}$, es decir \
      #box(width: 100%)[
        $
          #v(16pt)
          x <= x #s y quad med "y" med quad y <= x #s y
        $
      ]
      que por definición de $<=$ es equivalente a ver\
      #box(width: 100%)[
        $
          #v(16pt)
          x #s (x #s y) = x #s y quad med "y" med quad y #s (x #s y) = x #s y
        $
      ]
      Notar que usando propiedad de $(L, #s, #i)$ tenemos que \
      #box(width: 100%)[
        $
          #v(16pt)
          x #s (x #s y) = (x #s x) #s y = x #s y \
          y #s (x #s y) = y #s (y #s x) = (y #s y) #s x = y #s x = x #s y
        $
      ] \
      entonces listo.
      Falta ver que $x #s y$ es menor o igual que cualquier otra cota superior de ${x, y}$. \
      Para ello supongamos $x,y <= z$ con $z in L$. Por definición de $<=$ tenemos que \
      #box(width: 100%)[
        $
          #v(16pt)
          x #s z = z quad med "y" med quad y #s z = z
        $
      ] \
      Entonces usando propiedad de $(L, #s, #i)$ tenemos que \
      #box(width: 100%)[
        $
          (x #s y) #s z = x #s (y #s z) = x #s z = z
        $
      ] \
      por lo tanto por definición de $<=$ tenemos que $x #s y <= z$, lo que nos dice que $x #s y$ es la menor cota superior. \ Entonces probamos que $sup({x, y}) = x #s y$. \
      \ \ \ \ \ \ \
      *Probemos que $inf({x, y}) = x #i y$*. \
      Para ello vamos a probar para todo $x,y in L$ vale #h(50pt) $x <= y " sii " x #i y = x$ \
      #box(width: 100%)[
        #set list(indent: 10pt)
        - Supongamos $x <= y$. Por definición de $<=$ tenemos que $x #s y = y$. \
          Entonces usando propiedad de $(L, #s, #i)$ tenemos que \
          #box(width: 100%)[
            $
              x #i y = x #i (x #s y) = x
            $
          ]
          por lo tanto $x #i y = x$. \
        - Supongamos $x #i y = x$.
          Entonces usando propiedad de $(L, #s, #i)$ tenemos que \
          #box(width: 100%)[
            $
              x #s y = (x #i y) #s y = y #s (x #i y) = y
            $
          ]
          por lo tanto $x #s y = y$, entonces por definición de $<=$ tenemos que $x <= y$. \
      ]
      Usando lo anterior podemos probar que $inf({x, y}) = x #i y$ similar a como vimos $sup({x, y}) = x #s y$.  #fin_demo
    ],
  )

  #proofStructure(
    2,
    [*Lema*],
    [
      Supongamos que $arrow(a), arrow(b)$ son asignaciones tales que si $x_i in "Li"(phi)$, entonces $a_i = b_i$. \
      Entonces $bold(A) |= phi[arrow(a)]$ sii $bold(A) |= phi[arrow(b)]$.
    ],
    [
      Sea $bold(A)$ una estructura de tipo $tau$. Probaremos por inducción $k$ que vale el _Lema_ para cada $phi in F_k^tau$. \
      *Caso Base $(k=0)$:* \
      Sea $phi in F_0^tau$. Ademas sean  $arrow(a), arrow(b)$ asignaciones tales que si $x_i in "Li"(phi)$, entonces $a_i = b_i$. \
      Entonces tenemos dos casos para $phi$ \
      #box(width: 100%)[
        #set enum(numbering: "(1)(a)", indent: 12.8pt)
        #let lema_análogo_para_términos = [#underline([_Lema análogo para Términos_])]
        + $phi = (t equiv s)", con " t,s in T^tau$. Notar que todas las variables que ocurren en $phi$ son libres, entonces sabemos por el #lema_análogo_para_términos que $t^bold(A)[arrow(a)] = t^bold(A)[arrow(b)]$ y $s^bold(A)[arrow(a)] = s^bold(A)[arrow(b)]$. \ Ahora por definición y remplazando obtenemos que: \
          #box(width: 100%)[
            $
              bold(A) |= (t equiv s)[arrow(a)]
              " sii "
              t^bold(A)[arrow(a)] = s^bold(A)[arrow(a)]
              "sii"
              t^bold(A)[arrow(b)] = s^bold(A)[arrow(b)]
              " sii "
              bold(A) |= (t equiv s)[arrow(b)]
            $
          ] \
        + $phi = r(t_1,...,t_n)", con " r in R_n^tau " y " t_1,...,t_n in T^tau$, es análogo #footnote[
            Nuevamente todas las variables que ocurren en $phi$ son libres, entonces sabemos por el #lema_análogo_para_términos que $t_i^bold(A)[arrow(a)] = t_i^bold(A)[arrow(b)]$ con $i=1,...,n$.
            Ahora por definición y remplazando obtenemos que: \
            #box(width: 100%)[
              $ bold(A) |= r(t_1,...,t_n)[arrow(a)]
              " sii "
              (t_1^bold(A)[arrow(a)],...,t_n^bold(A)[arrow(a)]) in r^bold(A)
              "sii"
              (t_1^bold(A)[arrow(b)],...,t_n^bold(A)[arrow(b)]) in r^bold(A)
              " sii "
              bold(A) |= r(t_1,...,t_n)[arrow(b)] $
            ]
          ].
      ]
      *Caso Inductivo:* \
      Supongamos que el lema vale para todo $phi in F_k^tau$ y probaremos que vale para todo $phi in F_(k+1)^tau$. \
      Sea $phi in F_(k+1)^tau - F_k^tau$, ya que si $phi in F_k^tau$ sale directo. \
      Ademas sean  $arrow(a), arrow(b)$ asignaciones tales que si $x_i in "Li"(phi)$, entonces $a_i = b_i$. \
      Entonces tenemos varios casos para $phi$, veremos algunos: \
      #set list(indent: 0pt)
      - Si $phi = (phi_1 and phi_2)$.
        Notar que $"Li"(phi_i) c= "Li"(phi), i = 1,2$, por _H.I_ tenemos que $bold(A) |= phi_i[arrow(a)] " sii " bold(A) |= phi_i[arrow(b)]$. \
        Entonces por definición y remplazando obtenemos que \
        #box(width: 100%)[
          $
            bold(A) |= phi[arrow(a)]
            " sii "
            bold(A) |= phi_1[arrow(a)]
            med "y" med
            bold(A) |= phi_2[arrow(a)]
            " sii "
            bold(A) |= phi_1[arrow(b)]
            med "y" med
            bold(A) |= phi_2[arrow(b)]
            " sii "
            bold(A) |= phi[arrow(b)]
          $
        ] \
      - Los casos para $phi = (phi_1 or phi_2)$, $phi = (phi_1 -> phi_2)$, $phi = (phi_1 <-> phi_2)$ y $phi = not phi_1$ son análogos. \
      - Si $phi = forall x_j phi_1$. Supongamos $bold(A) |= phi[arrow(a)]$, por definición vale que $"para todo" a in A, bold(A) |= phi_1[arrow.b ""_j^a (arrow(a))]$.
        Notar que $arrow.b ""_j^a (arrow(a))$ y $arrow.b ""_j^a (arrow(b))$ coinciden en toda $x_i in "Li"(phi_1)$ ya que $"Li"(phi_1) c= "Li"(phi) union {x_j}$. Entonces por _H.I_ tenemos que $bold(A) |= phi_1[arrow.b ""_j^a (arrow(b))]$ para todo $a in A$, por lo que $bold(A) |= phi[arrow(b)]$. \ Luego $bold(A) |= phi[arrow(b)]$ implica $bold(A) |= phi[arrow(a)]$ es análogo, por lo que concluimos que $bold(A) |= phi[arrow(a)]$ sii $bold(A) |= phi[arrow(b)]$. \
      - El caso para $phi = exists x_j phi_1$ es análogo.  #fin_demo

      #linea_dashed

      _Lema análogo para Términos_ : \
      Sea *$A$* una estructura de tipo *$tau$* y sea $t in T^tau$. Supongamos que $arrow(a), arrow(b)$ son asignaciones tales que  $a_i = b_i$, cada vez que $x_i$ ocurre en $t$.
      Entonces $t^bold(A)[arrow(a)] = t^bold(A)[arrow(b)]$.
    ],
  )

]

#pagebreak()

#combo_title(3)

#proofStructure(
  1,
  [*Teorema* (Lectura única de términos)],
  [
    Dado $t in T^tau$ se da una y solo una de las siguientes: \
    #box(width: 100%)[
      #set enum(numbering: "(1)", indent: 12.8pt)
      + $t in "Var" union ~C~$.
      + Hay únicos $n >= 1$, $f in F_n^tau$, $t_1,...,t_n in T^tau$ tales que $t = f(t_1,...,t_n)$.
    ]
  ],
  [
    // Guía 9
    Por el #underline([_Lema Menu para términos_]) tenemos que se dan (1) o (2) y obviamente no pueden darse ambas a la vez. Veamos que vale le unicidad de (2). Supongamos que \
    #box(width: 100%)[
      $
        t = f(t_1,...,t_n) = g(s_1,...,s_m)
      $
    ]
    con $n,m >= 1$, $f in F_n^tau$, $g in F_m^tau$, $t_1,...,t_n in T^tau$ y $s_1,...,s_m in T^tau$. \
    Claramente $f = g$. Osea que $n = m$. \
    Notar que si $t_1$ es tramo inicial de $s_1$ o $s_1$ es tramo inicial de $t_1$ el #underline([_Lema Mordisqueo de Términos_]) nos dice que $t_1 = s_1$. Con el mismo razonamiento, podemos probar que $t_i = s_i$ para cada $i = 1,...,n$. #fin_demo

    #linea_dashed

    _Lema Menu para términos_ :
    Supongamos $t in T_(k+1)^tau$, con $k >= 0$. Entonces se da alguna de las siguientes: \
    #box(width: 100%, inset: (left: 120pt))[
      #set enum(numbering: "(1)", indent: 12.8pt)
      + $t in "Var" union ~C~$.
      + $t = f(t_1,...,t_n)$, con $n >= 1$, $f in F_n^tau$ y $t_1,...,t_n in T_k^tau$.
    ]

    _Lema Mordisqueo de Términos_ :  Sean $s, t in T^tau$ y supongamos que hay palabras $x, y, z$, con $y != epsilon$ tales que $s = x y$ y $t = y z$.
    Entonces $x = z = epsilon$ o $s, t in ~C~$.  \
    _"En particular si un término es tramo inicial o final de otro término, entonces dichos términos son iguales"_.
  ],
)

#pagebreak()

#page(margin: (bottom: 0.85cm))[

  #proofStructure(
    2,
    [*Lema*],
    [
      Supongamos que $F : bold(A) -> bold(B)$ es un isomorfismo. Sea $phi in F^tau$. Entonces \
      #box(width: 100%)[
        $
          bold(A) |= phi[(a_1, a_2, ...)] " sii " bold(B) |= phi[(F(a_1), F(a_2), ...)]
        $
      ] \
      para cada $(a_1, a_2, ...) in A^N$. En particular $bold(A)$ y $bold(B)$ satisfacen las mismas sentencias de tipo $tau$. <combo-demo-3.2>    ],
    [
      // Guía 10
      Para $arrow(a) = (a_1,a_2,...) in A^NN$, denotaremos $(F(a_1), F(a_2), ...)$ con $F(arrow(a))$. Vamos a probar por inducción $k$:
      #box(width: 100%)[
        - *$"Teo"_k$* : Supongamos que $F : bold(A) -> bold(B)$ es un isomorfismo. Sea $phi in F_k^tau$. Entonces \ #h(35pt)
          $bold(A) |= phi[(a_1, a_2, ...)] " sii " bold(B) |= phi[(F(a_1), F(a_2), ...)] "  para cada" (a_1, a_2, ...) in A^N$
      ]
      *Caso Base $"Teo"_0$:*
      Es decir para $phi in F_0^tau$.
      Sea $a-> in A^N$ arbitraria.
      Tenemos dos casos para $phi$ \
      #box(width: 100%)[
        #set list(indent: 0pt)
        - $phi = (t equiv s)", con " t,s in T^tau$.
          #box(width: 100%)[
            $
              bold(A) |= phi[a->] & " sii " t^bold(A)[a->] = s^bold(A)[a->] #h(79pt) ("def. de" |=) \
              & " sii " F(t^bold(A)[a->]) = F(s^bold(A)[a->]) #h(44pt) ("F un iso") \
              & " sii " t^bold(B)[F(a->)] = s^bold(B)[F(a->)] #h(46pt) (italic(underline("Lema análogo para términos"))) \
              & " sii " bold(B) |= (t equiv s)[F(a->)] #h(62pt) ("def. de" |=)
            $
          ]
        - $phi = r(t_1,...,t_n)", con " r in R_n^tau " y " t_1,...,t_n in T^tau$.
          #box(width: 100%)[
            $
              bold(A) |= phi[a->] & " sii " (t_1^bold(A)[a->],...,t_n^bold(A)[a->]) in r^bold(A) #h(45pt) ("def. de" |=) \
              & " sii " (F(t_1^bold(A)[a->]),...,F(t_n^bold(A)[a->])) in r^bold(B) #h(8pt) ("F un iso") \
              & " sii " (t_1^bold(B)[F(a->)],...,t_n^bold(B)[F(a->)]) in r^bold(B) #h(10pt) (italic(underline("Lema análogo para términos"))) \
              & " sii " bold(B) |= r(t_1,...,t_n)[F(a->)] #h(45pt) ("def. de" |=)
            $
          ]
      ]
      *Caso Inductivo $"Teo"_k$ implica $"Teo"_(k+1)$:*
      Supongamos que vale $"Teo"_k$ y probaremos que vale $"Teo"_(k+1)$. \
      Sea $phi in F_(k+1)^tau - F_k^tau$, ya que si $phi in F_k^tau$ sale directo. Por _#underline("Teorema de lectura única de formulas")_ hay varios casos \
      #set list(indent: 0pt)
      - Si $phi = (phi_1 and phi_2)$ con $phi_1, phi_2 in F_k^tau$. Entonces \
        #box(width: 100%)[
          $
            bold(A) |= phi[a->] & " sii " bold(A) |= phi_1[a->] " y " bold(A) |= phi_2[a->] #h(45pt) ("def. de" |=) \
                                & " sii " bold(B) |= phi_1[F(a->)] " y " bold(B) |= phi_2[F(a->)] #h(10pt) ("Teo"_k) \
                                & " sii " bold(B) |= phi[F(a->)] #h(100pt) ("def. de" |=)
          $
        ]
      - Los casos para $phi = (phi_1 or phi_2)$, $phi = (phi_1 -> phi_2)$, $phi = (phi_1 <-> phi_2)$ y $phi = not phi_1$ son análogos. \
      - Si $phi = forall x_j phi_1$ con $phi_1 in F_k^tau$.
        Sea $a-> in A^N$ arbitraria.
        Tenemos que \
        #box(width: 100%)[
          $
            bold(A) |= phi[a->] & " sii para todo" a in A", se da" bold(A) |= phi_1[arrow.b ""_j^a (a->)] #h(40pt) ("def. de" |=) \
            & " sii para todo" a in A", se da" bold(B) |= phi_1[F(arrow.b. ""_j^a (a->))] #h(18pt) ("Teo"_k) \
            & " sii para todo" a in A", se da" bold(B) |= phi_1[arrow.b ""_j^F(a) (F(a->))] #h(10pt) ("deducción inteligente") \
            & " sii para todo" b in B", se da" bold(B) |= phi_1[arrow.b ""_j^b (F(a->))] #h(26pt) ("F sobre" #comentario("ya que es iso")) \
            & " sii " bold(B) |= phi[F(a->)] #h(165pt) ("def. de" |=)
          $
        ]
      - El caso para $phi = exists x_j phi_1$ con $phi_1 in F_k^tau$ es análogo.

      #box(width: 100%, inset: (top: -15pt))[
        Finalmente probamos $"Teo"_k$ por inducción. #fin_demo
      ]
      #linea_dashed
      _Lema análogo para términos_: Sea $F : bold(A) -> bold(B)$ un isomorfismo. Entonces \
      #box(width: 100%, inset: (left: 50pt))[
        $
          F(t^bold(A)[a->]) = t^bold(B)[F(a->)] " para cada "t in T^tau" y cada "a-> in A^N.
        $
      ] \
      _Teorema de lectura única de formulas_: Dado $phi in F^tau$ se da una y solo una de las siguientes: \
      // #box(width: 100%, inset: (left: 160pt))[
      //   #set enum(numbering: "(1)", indent: 12.8pt)
      //   + $phi = (t equiv s)$ con $t,s in T^tau$, únicos.
      //   + $phi = r(t_1,...,t_n)$ con $r in ~R~_n^tau$, $t_1,...,t_n in T^tau$, únicos.
      //   + $phi = (phi_1 eta phi_2)$ con  $eta in {and, or, ->, <->}, phi_1, phi_2 in F_k^tau$, únicos.
      //   + $phi = not phi_1$ con $phi_1 in F_k^tau$, único.
      //   + $phi = Q v phi_1$ con $Q in {forall, exists}, phi_1 in F_k^tau$ y $v in "Var"$, únicos.
      // ] \
      #box(width: 100%)[
        1) $phi = (t equiv s)$ con $t,s in T^tau$, únicos. #h(34pt)
        (2) $phi = r(t_1,...,t_n)$ con $r in ~R~_n^tau$, $t_1,...,t_n in T^tau$, únicos. \
        (3) $phi = not phi_1$ con $phi_1 in F_k^tau$, único. #h(50pt)
        (4) $phi = (phi_1 eta phi_2)$ con  $eta in {and, or, ->, <->}, phi_1, phi_2 in F_k^tau$, únicos. \
        (5) $phi = Q v phi_1$ con $Q in {forall, exists}, phi_1 in F_k^tau$ y $v in "Var"$, únicos.
      ] \
    ],
  )
]

#pagebreak()

#proofStructure(
  3,
  [*Teorema*],
  [
    Sea $T =(Sigma, tau)$ una teoría. Entonces $(S^tau \/ -||-_T, bold("s")^T, bold(i)^T, ""^c^T, 0^T, 1^T)$ es un álgebra de Boole.
  ],
  note: [Pruebe solo el item (6).],
  [
    Por definición de algebra de Boole, debemos probar que valen varias propiedades. En total (13), pero solo veremos la (6). Para cualquier $phi_1,phi_2,phi_3 in S^tau$ debe cumplirse la siguiente igualdad \
    #box(width: 100%)[
      $
        [phi_1]_T bold("s")^T ([phi_2]_T bold("s")^T [phi_3]_T ) = ([phi_1]_T bold("s")^T [phi_2]_T ) bold("s")^T [phi_3]_T
      $
    ]
    Aplicando la definición de $bold("s")^T$, básicamente tenemos que ver \
    #box(width: 100%)[
      $
        [phi_1 or (phi_2 or phi_3)]_T = [(phi_1 or phi_2) or phi_3]_T
      $
    ]
    Es decir, debemos probar que $quad T |- ((phi_1 or (phi_2 or phi_3)) med <-> med ((phi_1 or phi_2) or phi_3)) quad$. Su prueba formal es \
    #demo_block[
      + #demo_line([$(phi_1 or (phi_2 or phi_3))$], ((JUST.HIPOTESIS)(1)))
      + #demo_line([$phi_1$], ((JUST.HIPOTESIS)(2)))
      + #demo_line([$(phi_1 or phi_2)$], ((JUST.DISJUNCIONINTRODUCCION)(3)))
      + #demo_line([$((phi_1 or phi_2) or phi_3)$], [
          #((JUST.TESIS)(2))
          #((JUST.DISJUNCIONINTRODUCCION)(3))
        ])
      + #demo_line([$(phi_1 -> ((phi_1 or phi_2) or phi_3))$], (JUST.CONCLUSION))
      + #demo_line([$(phi_2 or phi_3)$], ((JUST.HIPOTESIS)(3)))
      + #demo_line([$phi_2$], ((JUST.HIPOTESIS)(4)))
      + #demo_line([$(phi_1 or phi_2)$], ((JUST.DISJUNCIONINTRODUCCION)(7)))
      + #demo_line([$((phi_1 or phi_2) or phi_3)$], [
          #((JUST.TESIS)(4))
          #((JUST.DISJUNCIONINTRODUCCION)(8))
        ])
      + #demo_line([$(phi_2 -> ((phi_1 or phi_2) or phi_3))$], (JUST.CONCLUSION))
      + #demo_line([$phi_3$], ((JUST.HIPOTESIS)(5)))
      + #demo_line([$((phi_1 or phi_2) or phi_3)$], [
          #((JUST.TESIS)(5))
          #((JUST.DISJUNCIONINTRODUCCION)(11))
        ])
      + #demo_line([$(phi_3 -> ((phi_1 or phi_2) or phi_3))$], (JUST.CONCLUSION))
      + #demo_line([$((phi_1 or phi_2) or phi_3)$], [
          #((JUST.TESIS)(3))
          #((JUST.DIVISIONPORCASOS)(6, 10, 13))
        ])
      + #demo_line([$((phi_2 or phi_3) -> ((phi_1 or phi_2) or phi_3))$], (JUST.CONCLUSION))
      + #demo_line([$((phi_1 or phi_2) or phi_3)$], [
          #((JUST.TESIS)(1))
          #((JUST.DIVISIONPORCASOS)(1, 5, 15))
        ])
      + #demo_line([$( (phi_1 or (phi_2 or phi_3)) med -> med ((phi_1 or phi_2) or phi_3))$], (JUST.CONCLUSION))
      + #demo_line([$((phi_1 or phi_2) or phi_3)$], ((JUST.HIPOTESIS)(6)))
      + #demo_line([$(phi_1 or phi_2)$], ((JUST.HIPOTESIS)(7)))
      + #demo_line([$phi_1$], ((JUST.HIPOTESIS)(8)))
      + #demo_line([$(phi_1 or (phi_2 or phi_3))$], [
          #((JUST.TESIS)(8))
          #((JUST.DISJUNCIONINTRODUCCION)(19))
        ])
      + #demo_line([$(phi_1 -> (phi_1 or (phi_2 or phi_3)))$], (JUST.CONCLUSION))
      + #demo_line([$phi_2$], ((JUST.HIPOTESIS)(9)))
      + #demo_line([$(phi_2 or phi_3)$], ((JUST.DISJUNCIONINTRODUCCION)(23)))
      + #demo_line([$(phi_1 or (phi_2 or phi_3))$], [
          #((JUST.TESIS)(9))
          #((JUST.DISJUNCIONINTRODUCCION)(24))
        ])
      + #demo_line([$(phi_2 -> (phi_1 or (phi_2 or phi_3)))$], (JUST.CONCLUSION))
      + #demo_line([$(phi_1 or (phi_2 or phi_3))$], [
          #((JUST.TESIS)(7))
          #((JUST.DIVISIONPORCASOS)(19, 22, 16))
        ])
      + #demo_line([$( (phi_1 or phi_2) med -> med (phi_1 or (phi_2 or phi_3)))$], (JUST.CONCLUSION))
      + #demo_line([$phi_3$], ((JUST.HIPOTESIS)(10)))
      + #demo_line([$(phi_2 or phi_3)$], ((JUST.DISJUNCIONINTRODUCCION)(29)))
      + #demo_line([$(phi_1 or (phi_2 or phi_3))$], [
          #((JUST.TESIS)(10))
          #((JUST.DISJUNCIONINTRODUCCION)(30))
        ])
      + #demo_line([$(phi_3 -> (phi_1 or (phi_2 or phi_3)))$], (JUST.CONCLUSION))
      + #demo_line([$(phi_1 or (phi_2 or phi_3))$], [
          #((JUST.TESIS)(6))
          #((JUST.DIVISIONPORCASOS)(18, 28, 32))
        ])
      + #demo_line([$( ((phi_1 or phi_2) or phi_3) med -> med (phi_1 or (phi_2 or phi_3)))$], (JUST.CONCLUSION))
      + #demo_line([$((phi_1 or (phi_2 or phi_3)) med <-> med ((phi_1 or phi_2) or phi_3))$], (
          (JUST.EQUIVALENCIAINTRODUCCION)(17, 34)
        ))
    ] \
    #box(width: 100%, inset: (top: -10pt))[#fin_demo]
  ],
)

#pagebreak()

#combo_title(4)

#proofStructure(
  1,
  [*Lema* (Propiedades básicas de la deducción $|-$) <combo-demo-4.1>],
  link_apunte: "https://granlogico.com/apunteweb/7.13-teorias-de-primer-orden.html#prop-bas-prueb",
  [
    Sea $(Sigma, tau)$ una teoría. \
    #box(width: 94%)[
      #set enum(numbering: "(1)", indent: 12.8pt)
      + (Uso de Teoremas) Si $(Sigma, tau) |- phi_1,...,phi_n$ y $(Sigma union {phi_1,...,phi_n}, tau) |- phi$, entonces $(Sigma, tau) |- phi$.
      + Supongamos $(Sigma, tau) |- phi_1,...,phi_n$. Si *R* s una regla distinta de GENERALIZACION y ELECCION y $phi$ se deduce de $phi_1,...,phi_n$ por la regla *R*, entonces $(Sigma, tau) |- phi$.
      + $(Sigma, tau) |- (phi -> psi)$ sii $(Sigma union {phi}, tau) |- psi$.
    ]
  ],
  [
    *(1)* Notar que basta con hacer el caso $n=1$. Para $n>=2$ sale aplicando $n$ veces el caso $n=1$. \
    Supongamos que $(Sigma, tau) |- phi_1$ y $(Sigma union {phi_1}, tau) |- phi$. \
    Sea $(alpha_1,...,alpha_n,I_h,...,I_j)$ una prueba formal de $phi_1$ en $(Sigma, tau)$. \
    Sea $(psi_1,...,psi_m,J_h,...,J_m)$ una prueba formal de $phi$ en $(Sigma union {phi_1}, tau)$. \
    Notar que por el #underline([ _Lema (Cambio de indice de hipótesis)_]) y el #underline([_Lema (Cambio de nombres de constante auxiliares)_]) podemos suponer que estas dos pruebas no comparten ningún nombre de constante auxiliar y que tampoco comparten números asociados a hipótesis o tesis.
    Para cada $i=1,...,m$, definamos $tilde(J)_i$ de la siguiente manera\
    #box(width: 100%)[
      #h(25pt) Sea $alpha in {epsilon} union { #(JUST.TESIS)("k"): k in NN}$
      - Si $psi_i = phi_i$ y $J_i = alpha#JUST.AXIOMAPROPIO$ entonces $tilde(J)_i = alpha#(JUST.EVOCACION)("h")$.
      - Si $psi_i != phi_i$ y $J_i = alpha#JUST.AXIOMAPROPIO$, entonces $tilde(J)_i = J_i$.
      - Si $J_i in {alpha#JUST.AXIOMALOGICO, alpha#JUST.CONCLUSION, alpha#(JUST.HIPOTESIS)("k")}$, entonces $tilde(J)_i = J_i$.
      - Si $J_i = alpha R (overline(l_1),...,overline(l_k))$ y $R$ alguna regla, entonces $tilde(J)_i = alpha R (overline(l_1 + h),...,overline(l_k + h))$.
    ]
    Es fácil chequear que $(alpha_1...alpha_h phi_1...phi_m,I_1...I_n tilde(J_1)...tilde(J_m))$ es una prueba formal de $phi$ en $(Sigma, tau)$. \
    *(2)*
    Notar que \
    #box(width: 100%, inset: (top: -12pt))[
      $
        & 1. quad quad med med phi_1 quad quad quad quad #JUST.AXIOMAPROPIO \
        & 2. quad quad med med phi_2 quad quad quad quad #JUST.AXIOMAPROPIO \
        & dots.v quad quad med med #h(12pt) dots.v quad quad quad quad #h(52pt) dots.v \
        & n. quad quad med med phi_n quad quad quad quad #JUST.AXIOMAPROPIO \
        & n+1. quad phi quad quad quad quad med R(overline(1),...,overline(n)) \
      $
    ]
    es una prueba formal de $phi$ en $(Sigma union {phi_1,...,phi_n}, tau)$, entonces por (1) tenemos que $(Sigma, tau) |- phi$. \
    *(3)* \
    *($->$)* Si $(Sigma, tau) |- (phi -> psi)$, entonces $(Sigma union {phi}, tau) |- (phi -> psi), phi$ y por (2) esto implica que
    $(Sigma union {phi}, tau) |- psi$. \
    *($<-$)* Si $(Sigma union {phi}, tau) |- psi$. Sea $(alpha_1,...,alpha_n,J_1,...,J_n)$ una prueba formal de $psi$ en $(Sigma union {phi}, tau)$. \
    Entonces para cada $i = 1,...,n$, definamos $tilde(J)_i$ de la siguiente manera.\
    #box(width: 100%)[
      #h(25pt) Sea $alpha in {epsilon} union { #(JUST.TESIS)("k"): k in NN}$
      - Si $phi_i = phi$ y $J_i = alpha#JUST.AXIOMAPROPIO$ entonces $tilde(J)_i = alpha#(JUST.EVOCACION)(1)$.
      - Si $phi_i != phi$ y $J_i = alpha#JUST.AXIOMAPROPIO$, entonces $tilde(J)_i = J_i$.
      - Si $J_i in {alpha#JUST.AXIOMALOGICO, alpha#JUST.CONCLUSION, alpha#(JUST.HIPOTESIS)("k")}$, entonces $tilde(J)_i = J_i$.
      - Si $J_i = alpha R (overline(l_1),...,overline(l_k))$ y $R$ alguna regla, entonces $tilde(J)_i = alpha R (overline(l_1 + 1),...,overline(l_k + 1))$.
    ]
    Notar que $tilde(J_n)$ *no* es de la forma $#(JUST.TESIS)("k") beta$ ya que si lo fuera también debería serlo $J_n$, entonces debería existir $J_(n+1) = JUST.CONCLUSION$, pero $J_n$ es la ultima. Análogamente $tilde(J_n)$, tampoco es de la forma $#(JUST.HIPOTESIS)("k")$. \
    Sea $m$ tal que ninguna $J_i$ es igual a $#(JUST.HIPOTESIS)("m")$. Es fácil chequear que \
    #box(width: 100%)[
      $
        (phi phi_1,...,phi_n, #(JUST.HIPOTESIS)("m") tilde(J)_1...tilde(J)_(n-1) #(JUST.TESIS)("m") tilde(J)_n#(JUST.CONCLUSION))
      $
    ]
    es una prueba formal de $(phi -> psi)$ en $(Sigma, tau)$. #fin_demo

    #linea_dashed

    _Lema (Cambio de indice de hipótesis)_ : \
    Sea $(bold(phi), bold(J))$ una prueba formal de $phi$ en $(Sigma, tau)$.
    Sea $m in NN$ tal que $J_i != #(JUST.HIPOTESIS)("m")$, para cada \ $i=1,...,n(bold(phi))$.
    Supongamos que $bold(J)_i = #(JUST.HIPOTESIS)("k")$ y que $bold(J)_j = #(JUST.TESIS)("k") alpha$, con $[alpha]_1 in.not "Num"$. \
    Sea $tilde(bold(J))$ el resultado de remplazar en $bold(J)$ la justificación $bold(J)_i$ por $#(JUST.HIPOTESIS)("m")$ y la justificació $bold(J)_j$ por $#(JUST.TESIS)("m") alpha$. \
    Entonces $(bold(phi), tilde(bold(J)))$ es una prueba formal de $phi$ en $(Sigma, tau)$. \

    _Lema (Cambio de nombres de constante auxiliares)_ : \
    Sea $(bold(phi), bold(J))$ una prueba formal de $phi$ en $(Sigma, tau)$.
    Sea $C_1$ el conjunto de nombres de constante auxiliares de $(bold(phi), bold(J))$. \
    Sea $e in C_1$. Sea $tilde(e) in.not C union C_1$ tal que  $(C union (C_1 - {e}) union {tilde(e)}, F, R, a)$ es un tipo. \
    Sea $tilde(phi)_i =$ resultado de remplazar en $phi_i$ cada ocurrencia de $e$ por $tilde(e)$. \
    Entonces $(tilde(phi)_1...tilde(phi)_n(bold(phi)), bold(J))$ es una prueba formal de $phi$ en $(Sigma, tau)$. \
  ],
)

#proofStructure(
  2,
  [*Teorema*],
  [
    Sea $(B, #s, #i, ""^c, 0 ,1)$ un álgebra de Boole y sean $a,b in B$.Se tiene que:\
    #box(width: 100%)[
      #set enum(numbering: "(1)", indent: 12.8pt)
      + $(a #i b)^c = a^c #s b^c$
      + $a #i b = 0 " sii " b<=a^c$
    ]
  ],
  [
    *(1)* Para probar, veamos que $a^c #s b^c$ es el complemento de $a #i b$. Es decir debemos ver que \
    #box(width: 100%)[
      $
        (a #i b) #s (a^c #s b^c) = 1 med y med (a #i b) #i (a^c #s b^c) = 0
      $
    ]
    #grid(
      columns: 2,
      align: center,
      column-gutter: 20pt,
      box(width: 50%)[
        $
          & quad (a #i b) #s (a^c #s b^c) \
          & = (a^c #s b^c) #s (a #i b)                    &      quad "(I2)" \
          & = ((a^c #s b^c) #s a ) #i ((a^c #s b^c) #s b) &   quad ("Dis"_1) \
          & = ((a #s a^c) #s b^c ) #i ((b #s b^c) #s a^c) & quad ("I4 e I2") \
          & = (1 #s b^c ) #i (1 #s a^c)                   &      quad ("I9") \
          & = 1 #i 1                                      &      quad ("I1") \
          & = 1 \
        $
      ],
      box(width: 50%)[
        $
          & quad (a #i b) #i (a^c #s b^c) \
          & = ((a #i b) #i a^c) #s ((a #i b) #i b^c)     &   quad ("Dis"_2) \
          & = ( (a #i a^c) #i b ) #s ( (b #i b^c) #i a ) & quad ("I5 e I3") \
          & = (0 #i b ) #s ( 0 #i a )                    &      quad ("I8") \
          & = 0 #s 0                                     &      quad ("I1") \
          & = 0 \
        $
      ],
    )
    Entonces $a^c #s b^c$ es un complemento de $(a #i b)$ pero el #underline([_Lema (Unicidad del Complemento)_]) aplicado a $(B, #s, #i, 0 ,1)$, nos dice que es único, por lo tanto $(a #i b)^c = a^c #s b^c$. \
    *(2)* \
    *($->$)* Supongamos que $a #i b = 0$. Entonces \
    #box(width: 100%)[
      $
        b & = (b #i a) #s (b #i a^c) quad (italic("Lema útil")) \
          & = (a #i b) #s (b #i a^c) \
          & = 0 #s (b #i a^c) \
          & = b #i a^c
      $
    ]
    Dado que $b #i a^c$ es cota inferior de $a^c$ tenemos que $b #i a^c <= a^c$, remplazando por lo anterior sale que $b <= a^c$. \
    *($<-$)* Supongamos que $b <= a^c$. Por reflexividad $a<=a$ y el #underline([_Lema (Monotonía)_]) aplicado al reticulado par $(B, <=)$ nos dice que $a #i b <= a #i a^c = 0$, pero $0$ es mínimo, entonces $0 <= a #i b$. Entonces por antisimetría $a #i b = 0$. #fin_demo

    #linea_dashed

    _Lema (Unicidad del Complemento)_ : Sea $(L, #s, #i, 0 ,1)$ un reticulado acotado. Si $(L, #s, #i, 0 ,1)$ es distributivo, \ #h(158pt) entonces todo elemento tiene a lo sumo un complemento. \
    _Lema (útil)_ : Sea $(B, #s, #i, ""^c, 0 ,1)$ un álgebra de Boole. Entonces para cualquiera $x,y in B$ se tiene que \ #h(60pt) $y = (y #i x) #s (y #i x^c)$. \
    _Lema (Monotonía)_ : Sea $(L, <=)$ un reticulado par y sean $x,y,z,w in L$ tales que $x <= z$ e $y <= w$. \ #h(90pt) Entonces $x #i y <= z #i w$.
  ],
)

#pagebreak()

#proofStructure(
  3,
  [*Lema* <combo-demo-4.3>],
  [
    Sea $(L, #s, #i)$ y $(L', #s', #i')$ reticulados terna y sean $(L, <=)$ y $(L', <=')$ los posets asociados. \
    Sea $F: L -> L'$ una función.  \
    Entonces $F$ es un isomorfismo de $(L, #s, #i)$ en $(L', #s', #i')$
    sii
    $F$ es un isomorfismo de $(L, <=)$ en $(L', <=')$.
  ],
  [
    *($->$)*
    Supongamos que $F$ es un isomorfismo de $(L, #s, #i)$ en $(L', #s', #i')$. \
    Para que $F$ sea un isomorfismo $(L, <=)$ en $(L', <=')$, debemos ver: \
    #box(width: 100%)[
      #set enum(numbering: "(1)", indent: 12.8pt)
      + *$F$ es biyectiva*. Lo cual sale directo ya que $F$ es isomorfismo de reticulados.
      + *$F$ es un homomorfismo de $(L, <=)$ en $(L', <=')$*. Sean $x,y in L$ tales que $x <= y$.\ Entonces $x #s y = y$, por lo cual $F(y) = F(x #s y) = F(x) #s' F(y)$ es decir $F(x) <=' F(y)$.
      + *$F^(-1)$ es un homomorfismo de $(L', <=')$ en $(L, <=)$*. Análogo al anterior. \
    ]
    Entonces $F$ es un isomorfismo de $(L, <=)$ en $(L', <=')$. \
    *($<-$)* Supongamos que $F$ es un isomorfismo de $(L, <=)$ en $(L', <=')$. \
    Para que $F$ sea un isomorfismo de $(L, #s, #i)$ en $(L', #s', #i')$, debemos ver: \
    #box(width: 100%)[
      #set enum(numbering: "(1)", indent: 12.8pt)
      + *$F$ es biyectiva*. Lo cual sale directo ya que $F$ es isomorfismo de posets.
      + *$F$ es un homomorfismo de $(L, #s, #i)$ en $(L', #s', #i')$*. Sean $x,y in L$. \
        #box(width: 100%)[
          $
            F(x #s y) & = F("sup"({x,y})) quad quad quad     &             (underline(italic("Teorema de Dedekind"))) \
                      & = "sup"({F(x), F(y)}) quad quad quad & (underline(italic("Lema sup e inf en iso de posets"))) \
                      & = F(x) #s' F(y) quad quad quad       &             (underline(italic("Teorema de Dedekind")))
          $
        ]
        entonces $F(x #s y) = F(x) #s' F(y)$ y de forma similar se prueba que $F(x #i y) = F(x) #i' F(y)$.
      + *$F^(-1)$ es un homomorfismo de $(L, #s, #i)$ en $(L', #s', #i')$*. Análogo al anterior. \
    ]
    Entonces $F$ es un isomorfismo de $(L, #s, #i)$ en $(L', #s', #i')$. #fin_demo

    #linea_dashed
    _Teorema de Dedekind_ (#link(<teo-Dedekind>)[Combo 2.1]) :
    Sea $(L, #s, #i)$ un reticulado terna.
    La relación binaria definida por: \
    $x <= y " sii " x #s y = y$
    es un orden parcial sobre $L$ para el cual se cumple que cualesquiera sean $x, y in L$: \
    #box(width: 100%)[
      $
        sup({x, y}) = x #s y quad quad quad quad
        inf({x, y}) = x #i y
      $
    ] \

    _Lema (sup e inf en Isomorfismo de Posets )_ : \ Sea $(P, <=)$ y $(P', <=' )$ posets y sea $F: P -> P'$ un isomorfismo de posets. Para cada $x,y,z in P$, tenemos que \
    #box(width: 100%)[
      #set list(indent: 0pt)
      $
        z = sup({x,y}) & "  sii  " F(z) = F("sup"({x,y})) = sup({F(x), F(y)}) \
        z = inf({x,y}) & "  sii  " F(z) = F("inf"({x,y})) = inf({F(x), F(y)})
      $
    ]
  ],
)

#pagebreak()

#page(margin: (bottom: 0.65cm))[

  #combo_title([5 y 6])

  #proofStructure(
    1,
    [*Teorema de Completitud*],
    [
      Sea $T = (Sigma, tau)$ _una teoría de primer orden_. Si $T |= phi$, entonces $T |- phi$.
    ],
    note: [
      Haga solo el caso en que $tau$ tiene una cantidad infinita de nombres de cte que no ocurren en las sentencias de $Sigma$. En la prueba no es necesario que probar los items (1) y (5) (Combo 6: (1), (2), (3) y (4)).
    ],
    [
      Lo probaremos por el absurdo, es decir supongamos que hay una sentencia $phi_0$ tal que $T |= phi_0$ pero $T !|- phi_0$. \
      Notar que como $T !|- phi_0$, tenemos que $[phi_0]_T != 1^T = {phi in S^tau : T |- phi}$ y ademas $[not phi_0]_T != 0^T$. #footnote[
        #grid(
          inset: (top: -14pt),
          columns: 2,
          [Dada $T = (Sigma, tau)$ una teoría. Para toda sentencia $phi in
            S^tau$ \
            #box(width: 100%)[
              #set list(indent: 0pt)
              - $phi$ es un teorema si $T quad$ sii $quad T |- phi$.
              - $phi$ es refutable si $T quad quad$ sii $quad T |- not phi$.
            ]],
          [
            y ademas \
            #box(width: 100%)[
              #set list(indent: 0pt)
              - $1^T = {phi in S^tau : phi" es un teorema de" T} = {phi in S^tau : T |- phi}$
              - $0^T = {phi in S^tau : quad phi" es refutable en" T #h(4pt)} = {phi in S^tau : T |- not phi}$
            ]],
        )
      ] \
      Ahora por el #underline([_Lema de Enumeración_]) hay una infinitupla $(gamma_1, gamma_2, ...) in F^(tau NN)$ tal que\
      #box(width: 100%)[
        - $|"Li"(gamma_j)| <= 1$, para cada $j in NN$.
        - Si $|"Li"(gamma)| <= 1$, entonces $gamma = gamma_j$, para algún $j in NN$.
      ] \
      Para cada $j in NN$, defino $w_j in "Var"$ tal que $"Li"(gamma_j) c= {w_j}$. Ahora, para cada $j in NN$ declaremos $gamma_j =_d gamma_j (w_j)$. \
      Notar que por el #underline([_Lema del ínfimo_]) tenemos que $"inf"({[gamma_j (t)]_T : t in T_c^tau}) = [forall w_j gamma_j (w_j)]_T$ para cada $j in NN$. \
      Por el #underline([_Teorema de Rasiova Y Sikorski_]) tenemos que hay un filtro primo $~U~$ de $~A~_T$, el cual cumple: \
      #box(width: 100%)[
        #set enum(numbering: "(a)", indent: 12.8pt)
        + $[not phi_0]_T in ~U~$.
        + Para cada $j in NN$, si ${[gamma_j (t): t in T_c^tau]} c= ~U~$, implica $[forall w_j gamma_j (w_j)]_T in ~U~$.
      ]
      Ya que $(gamma_1,gamma_2,...)$ cubre todas las formulas con a lo sumo una variable libre, podemos reescribir (b) como: \
      #box(width: 100%)[
        #set enum(numbering: "(a)'", start: 2, indent: 12.8pt)
        + Para cada $phi =_d phi(v) in F^tau$, si ${[phi (t): t in T_c^tau]} c= ~U~$, implica $[forall v phi(v)]_T in ~U~$.
      ] \
      Definamos la siguiente relación sobre $T_c^tau$: \
      #box(width: 100%)[
        $
          t join s " sii " [ (t = s) ]_T in ~U~
        $
      ]
      Veamos entonces que: \
      #box(width: 100%)[
        #set enum(numbering: "(1)", indent: 12.8pt)
        + $join$ una relación de equivalencia.
        + Para cada $phi =_d phi(v_1, ..., v_n) in F^tau, t_1,...,t_n,s_1,...,s_n in T_c^tau$, si $t_1 join s_1, ..., t_n join s_n$. Entonces \
          #box(width: 100%)[
            $
              [ phi(t_1, ..., t_n) ]_T in ~U~ " sii " [ phi(s_1, ..., s_n) ]_T in ~U~
            $
          ]
        + Para cada $f in ~F~_n, t_1,...,t_n,s_1,...,s_n in T_c^tau$, se da que \
          #box(width: 100%)[
            $
              t_1 join. s_1, ..., t_n join s_n " implica " f(t_1,...,t_n) join f(s_1,...,s_n)
            $
          ]
      ]
      *(2)* Notar que \
      #box(width: 100%)[
        $
          T |- ( med ( med (t_1 equiv s_1) and ... and (t_n equiv s_n) and phi(t_1, ..., t_n) med ) med -> med phi(s_1, ..., s_n) med )
        $
      ] \
      ahora gracias al #underline([_Lema (de $<=^T$)_]) sabemos que \
      #box(width: 100%)[
        $
          [(t_1 equiv s_1) and ... and (t_n equiv s_n) and phi(t_1, ..., t_n)]_T quad <=^T quad [phi(s_1, ..., s_n)]_T
        $
      ]
      y por definición de $bold(i)^T$, #comentario[($[phi]_T med bold(i)^T med [psi]_T = [phi and psi]_T$)
      ] tenemos que \
      #box(width: 100%)[
        $
          [t_1 equiv s_1]_T med bold(i)^T med ... med bold(i)^T med [t_n equiv s_n]_T med bold(i)^T med [phi(t_1, ..., t_n)]_T quad <=^T quad [phi(s_1, ..., s_n)]_T quad quad bold((*))
        $
      ]
      en particular como $t_1 join s_1, ..., t_n join s_n$, por definición de $join$ tenemos que \
      #box(width: 100%)[
        $
          [t_1 equiv s_1]_T, ..., [t_n equiv s_n]_T in ~U~
        $
      ] \
      y por ser $~U~$ un filtro #comentario([(Item (2), $x,y in F => x #i y in F$)]) tenemos que \
      #box(width: 100%)[
        $
          [t_1 equiv s_1]_T med bold(i)^T med ... med bold(i)^T med [t_n equiv s_n]_T in ~U~
        $
      ] \
      pero si suponemos $[phi(t_1, ..., t_n)]_T in ~U~$, por lo mismo tenemos que \
      #box(width: 100%)[
        $
          [t_1 equiv s_1]_T med bold(i)^T med ... med bold(i)^T med [t_n equiv s_n]_T med bold(i)^T med [phi(t_1, ..., t_n)]_T in ~U~
        $
      ] \
      y de nuevo por ser $~U~$ un filtro #comentario([$(x in ~U~ med "y" med x <=^T y => y in ~U~)$]) y *$(*)$* tengo que $[phi(s_1, ..., s_n)]_T in ~U~$. Conclusión \
      #box(width: 100%)[
        $
          [phi(t_1, ..., t_n)]_T in ~U~ quad "implica" quad [phi(s_1, ..., s_n)]_T in ~U~
        $
      ] \
      La otra implicación es análoga. \ \
      *(3)* Sea $f in ~F~_n, t_1,...,t_n,s_1,...,s_n in T_c^tau$ y supongamos $t_1 join. s_1, ..., t_n join s_n$. \ Si tomamos $phi = (f(v_1,...,v_n) equiv f(s_1,...,s_n))$ aplicando (2) obtenemos que \
      #box(width: 100%)[
        $
                           [ phi(t_1, ..., t_n) ]_T in ~U~ & " sii " [ phi(s_1, ..., s_n) ]_T in ~U~ \
          [ f(t_1,...,t_n) equiv f(s_1,...,s_n) ]_T in ~U~ & " sii " [ (f(s_1,...,s_n) equiv f(s_1,...,s_n) ]_T in ~U~ \
        $
      ] \
      Pero $[ (f(s_1,...,s_n) equiv f(s_1,...,s_n) ]_T = 1^T$ y $1^T in ~U~$, entonces $[ f(s_1,...,s_n) equiv f(s_1,...,s_n) ]_T in ~U~$. \
      Así concluimos que  $[ f(t_1,...,t_n) equiv f(s_1,...,s_n) ]_T in ~U~$, es decir $f(t_1,...,t_n) join f(s_1,...,s_n)$. \
      \
      #let AA_U = $bold(A)_(~U~)$
      Definamos ahora un modelo #AA_U de tipo $tau$ de la siguiente manera: \
      #box(width: 100%)[
        - Universo de $#AA_U = T_c^tau \/ join$.
        - $c^#AA_U = c \/ join$, para cada $c in ~C~$.
        - $f^#AA_U ( t_1\/ join ,..., t_n \/ join ) = f(t_1,...,t_n) \/ join$, para cada $f in ~F~_n$ y $t_1,...,t_n in T_c^tau$.
        - $r^#AA_U = { ( t_1\/ join ,..., t_n \/ join ): [r(t_1,...,t_n)]_T in ~U~ }$, para cada $r in ~R~_n$.
      ]
      Notar que la definición de $f^#AA_U$ es inambigua gracias a (3). Probemos las siguientes propiedades básicas:
      #box(width: 100%)[
        #set enum(numbering: "(1)", start: 4, indent: 12.8pt)
        + Para cada $t =_d t(v_1,...,v_n) in T^tau, t_1,...,t_n in T_c^tau$, tenemos que \
          #box(width: 100%)[
            $
              t^#AA_U [t_1 \/ join ,..., t_n \/ join ] = t(t_1,...,t_n) \/ join
            $
          ]
        + Para cada $phi =_d phi(v_1, ..., v_n) in F^tau, t_1,...,t_n in T_c^tau$, se da que \
          #box(width: 100%)[
            $
              #AA_U |= phi [t_1 \/ join ,..., t_n \/ join ] " sii " [phi(t_1, ..., t_n)]_T in ~U~
            $
          ]
      ]
      *(4)* Lo vamos a probar por inducción en el $k$ tal que $t in T_k^tau$. \
      #underline("Caso Base"): Sea $t =_d t(v_1,...,v_n) in T_0^tau, t_1,...,t_n in T_c^tau$. Tenemos dos casos: \
      #box(width: 100%)[
        #set list(indent: 0pt)
        - Si $t = c in ~C~$.  \
          #box(width: 100%)[
            $
              t^#AA_U [t_1 \/ join ,..., t_n \/ join ] & = c^#AA_U & (#underline([_Lema, Carácter recursivo de la notación $t^bold(A) [a_1,...,a_n]$_])) \
              & = c \/ join & ("def." #AA_U) \
              & = t(t_1,...,t_n) \/ join & ("por Notación Declaratoria") \
            $
          ]
        - Si $t = v_i$ para algún $i = 1,...,n$. \
          #box(width: 100%)[
            $
              t^#AA_U [t_1 \/ join ,..., t_n \/ join ] & = t_i \/ join & (#underline([_Lema, Carácter recursivo de la notación $t^bold(A) [a_1,...,a_n]$_])) \
              & = t(t_1,...,t_n) \/ join & ("por Notación Declaratoria") \
            $
          ]
      ]
      #underline("Caso Inductivo"): Supongamos que vale para cada $s in T_k^tau$ y veamos que se cumple para $t in T_(k+1)^tau$. \
      Sea $t =_d t(v_1,...,v_n) in T_(k+1)^tau, t_1,...,t_n in T_c^tau$. Si $t in T_k^tau$, directo por HI. Si $t =_d t(v_1, ..., v_n) in T_(k+1)^tau - T_k^tau$, \
      se da que $t =_d f(s_1,...,s_m)$ con $f in ~F~_m$ y $s_1,...,s_m in T_k^tau$. Por convención notacional $s_i =_d s_i (v_1,...,v_n)$. \
      Entonces por el #underline([_Lema, Carácter recursivo de la notación $t^bold(A) [a_1,...,a_n]$_]) tenemos que \
      #box(width: 100%)[
        $
          t^#AA_U [t_1 \/ join ,..., t_n \/ join ] = f^#AA_U ( s_1^#AA_U [t_1 \/ join ,..., t_n \/ join ],..., s_m^#AA_U [t_1 \/ join ,..., t_n \/ join ] )
        $
      ]
      luego por HI $s_i^#AA_U [t_1 \/ join ,..., t_n \/ join ] = s_i (t_1,...,t_n) \/ join$, entonces \
      #box(width: 100%)[
        $
          t^#AA_U [t_1 \/ join ,..., t_n \/ join ] = f^#AA_U ( s_1 (t_1,...,t_n) \/ join ,..., s_m (t_1,...,t_n) \/ join ) \
        $
      ] \
      y por definición de $f^#AA_U$ \
      #box(width: 100%)[
        $
          t^#AA_U [t_1 \/ join ,..., t_n \/ join ] = f( s_1 (t_1,...,t_n),..., s_m (t_1,...,t_n) ) \/ join \
        $
      ] \
      y por notación declaratoria llegamos a que \
      #box(width: 100%)[
        $
          t^#AA_U [t_1 \/ join ,..., t_n \/ join ] = t(t_1,...,t_n) \/ join
        $
      ] \
      #REVISAR \ \ \ \ \

      *(5)* Lo probaremos por inducción en el $k$ tal que $phi in F_k^tau$. \
      #underline("Caso Base"):
      Sea $phi =_d phi(v_1, ..., v_n) in F_0^tau, t_1,...,t_n in T_c^tau$. Tenemos dos casos: \
      #box(width: 100%)[
        #set list(indent: 0pt)
        - Si $phi = (t equiv s)$ con $t,s in T^tau$. Por convención notacional tenemos $t =_d t(v_1,...,v_n)$ y $s =_d s(v_1,...,v_n)$. \
          #box(width: 100%)[
            $
              #AA_U |= phi [t_1 \/ join ,..., t_n \/ join ]
              & " sii " t^#AA_U [t_1 \/ join ,..., t_n \/ join ] = s^#AA_U [t_1 \/ join ,..., t_n \/ join ] \
              & " sii " t(t_1,...,t_n) \/ join = s(t_1,...,t_n) \/ join & ("por" 4) \
              & " sii " t(t_1,...,t_n) join s(t_1,...,t_n) & ("def. clase equiv") \
              & " sii " [ (t(t_1,...,t_n) equiv s(t_1,...,t_n)) ]_T in ~U~ &("def" join) \
              & " sii " [ phi(t_1, ..., t_n) ]_T in ~U~
            $
          ]
        - Si $phi = r(s_1,...,s_m)$ con $r in ~R~_m$ y $s_1,...,s_m in T^tau$. Por convención notacional $s_i =_d s_i (v_1,...,v_n)$. \
          #box(width: 100%)[
            $
              #AA_U |= phi [t_1 \/ join ,..., t_n \/ join ]
              & " sii " ( s_1^#AA_U [t_1 \/ join ,..., t_n \/ join ],..., s_m^#AA_U [t_1 \/ join ,..., t_n \/ join ] ) in r^#AA_U \
              & " sii " ( s_1 (t_1,...,t_n) \/ join ,..., s_m (t_1,...,t_n) \/ join ) in r^#AA_U &("por" 4) \
              & " sii " [ r(s_1(t_1,...,t_n),..., s_m(t_1,...,t_n)) ]_T in ~U~ &("def" r^#AA_U) \
              & " sii " [ phi(t_1, ..., t_n) ]_T in ~U~
            $
          ] \
      ]
      #underline("Caso Inductivo"): Supongamos que vale para cada $psi in F_k^tau$ y veamos que se cumple para $phi in F_(k+1)^tau$. \
      Sea $phi =_d phi(v_1, ..., v_n) in F_(k+1)^tau, t_1,...,t_n in T_c^tau$. Si $phi in F_k^tau$, es directo por HI. \ Entonces veamos $phi =_d phi(v_1, ..., v_n) in F_(k+1)^tau - F_k^tau$. Tenemos varios casos para la forma de $phi$: \
      #box(width: 100%)[
        #set list(indent: 0pt)
        - Si $phi = (phi_1 and phi_2)$. Por convención notacional $phi_i =_d phi_i (v_1,...,v_n)$. \
          #box(width: 100%)[
            $
              #AA_U |= phi [t_1 \/ join ,..., t_n \/ join ]
              & " sii " #AA_U |= phi_1 [t_1 \/ join ,..., t_n \/ join ] med "y" med #AA_U |= phi_2 [t_1 \/ join ,..., t_n \/ join ]\
              & " sii " [phi_1(t_1, ..., t_n)]_T in ~U~ med "y" med [phi_2(t_1, ..., t_n)]_T in ~U~ &("por" "HI") \
              & " sii " [phi_1(t_1, ..., t_n) med bold(i)^T med phi_2(t_1, ..., t_n)]_T in ~U~ &(#box(fill: red)[#text(fill: white)[??????]]) \
              & " sii " [phi_1(t_1, ..., t_n) and phi_2(t_1, ..., t_n)]_T in ~U~ &("def." bold(i)^T) \
              & " sii " [phi(t_1, ..., t_n)]_T in ~U~
            $
          ]
        - Si $phi = forall v phi_1$, con $v in "Var" - {v_1,...,v_n}$. Por convención notacional $phi_1 =_d phi_1 (v_1,...,v_n)$. \
          #box(width: 100%)[
            $
              #AA_U |= phi [t_1 \/ join ,..., t_n \/ join ]
              & " sii " #AA_U |= phi_1 [t_1 \/ join ,..., t_n \/ join, t \/ join ] quad "para todo" t in T_c^tau \
              & " sii " [phi_1(t_1, ..., t_n,t)]_T in ~U~ quad "para todo" t in T_c^tau &("por" "HI") \
              & " sii " [forall v_1 phi_1 (t_1, ..., t_n, t)]_T in ~U~ \
              & " sii " [phi(t_1, ..., t_n, t)]_T in ~U~
            $
          ]
        - Si $phi = exists v phi_1$, con $v in "Var" - {v_1,...,v_n}$. \
          Por convención notacional $phi_1 =_d phi_1 (v_1,...,v_n)$. \
          #box(width: 100%)[
            $
              #AA_U |= phi [t_1 \/ join ,..., t_n \/ join ]
              & " sii " #AA_U |= phi_1 [t_1 \/ join ,..., t_n \/ join, t \/ join ] quad "para algún" t in T_c^tau \
              & " sii " [phi_1(t_1, ..., t_n,t)]_T in ~U~ quad "para algún" t in T_c^tau &("por" "HI") \
              & " sii " ([phi_1(t_1, ..., t_n,t)]_T)^c^T in.not ~U~ quad "para algún" t in T_c^tau \
              & " sii " [not phi_1(t_1, ..., t_n,t)]_T in.not ~U~ quad "para algún" t in T_c^tau \
              & " sii " [forall v not phi_1(t_1, ..., t_n,t)]_T in.not ~U~ quad "para algún" t in T_c^tau \
              & " sii " ([forall v not phi_1(t_1, ..., t_n,t)]_T)^c^T in ~U~ quad "para algún" t in T_c^tau \
              & " sii " [not forall v not phi_1(t_1, ..., t_n,t)]_T in ~U~ quad "para algún" t in T_c^tau \
              & " sii " [exists v_1 phi_1 (t_1, ..., t_n, t)]_T in ~U~ \
              & " sii " [phi(t_1, ..., t_n, t)]_T in ~U~
            $
          ]
      ]

      Pero ahora notar que (5) en particular nos dice que, #h(20pt) $#AA_U |= psi " sii " [psi]_T in ~U~ quad "para cada" psi in S^tau$. \
      De esta forma llegamos que $#AA_U |= Sigma$ y $#AA_U |= not phi_0$, lo cual contradice la suposición de que $T |= phi_0$. #REVISAR #fin_demo \

      #linea_dashed

      _Lema de Enumeración_ : Sea $tau$ un tipo. Hay una infinitupla $(gamma_1,gamma,_2,...) in F^(tau NN)$ tal que \
      #box(width: 100%, inset: (left: 100pt))[
        - $|"Li"(gamma_j)| <= 1$, para cada $j in NN$. \
        - Si $|"Li"(gamma)| <= 1$, entonces $gamma = gamma_j$, para algún $j in NN$. \
      ]

      _Lema del ínfimo_ : Sea $T = (Sigma, tau)$ una teoría y supongamos que $tau$ tiene una cantidad infinita de nombres de cte que no ocurren en las sentencias de $Sigma$. Entonces para cada formula $phi =_d phi(v)$, se tiene que en el algebra de Lindenbaum $~A~_T$, se cumple $quad [forall v phi]_T = inf({[phi(t)]_T : t in T_c^tau})$ \

      _Teorema de Rasiova Y Sikorski_ : Sea $(B, #s, #i,^c, 0,1)$ un algebra de Boole. Sea $a in B, a != 0$. Supongamos que (A_1, A_2,...) es una infinitupla de subconjuntos de $B$ tal que existe $inf(A_j)$ para cada $j=1,2,...$. Entonces hay un filtro primo $P$ el cual cumple: \
      #box(width: 100%)[
        #set enum(numbering: "(a)", indent: 12.8pt)
        + $a in P$.
        + $A_j c= P$ implica $inf(A_j) in P$, para cada $j=1,2,...$
      ]

      _Lema (de $<=^T$)_ : Sea $T$ una teoría. Se tiene que $[phi]_T med <=^T med [psi]_T " sii " T |- (phi -> psi)$.
    ],
  )
]

#pagebreak()

#combo_title(7)

#proofStructure(
  1,
  [*Lema (Propiedades básicas de la deducción $|-$)*],
  [
    Sea $(Sigma, tau)$ una teoría. \
    #box(width: 94%)[
      #set enum(numbering: "(1)", indent: 12.8pt)
      + (Uso de Teoremas) Si $(Sigma, tau) |- phi_1,...,phi_n$ y $(Sigma union {phi_1,...,phi_n}, tau) |- phi$, entonces $(Sigma, tau) |- phi$.
      + Supongamos $(Sigma, tau) |- phi_1,...,phi_n$. Si *R* s una regla distinta de GENERALIZACION y ELECCION y $phi$ se deduce de $phi_1,...,phi_n$ por la regla *R*, entonces $(Sigma, tau) |- phi$.
      + $(Sigma, tau) |- (phi -> psi)$ sii $(Sigma union {phi}, tau) |- psi$.
    ].
  ],
  note: [Mismo que el #link(<combo-demo-4.1>)[Combo 4.1]],
  link_apunte: "<combo-demo-4.1>",
  empty_demo: true,
  [],
)

#proofStructure(
  2,
  [*Lema*],
  [
    Sea $(L, #s, #i)$ reticulados terna y sea $theta$ una congruencia de $(L, #s, #i)$. Entonces \
    #box(width: 100%)[
      #set enum(numbering: "(1)", indent: 12.8pt)
      + $(L\/theta, tilde(#s), tilde(#i))$ es un reticulado terna.
      + El orden parcial $tilde(<=)$ asociado  al reticulado terna $(L\/theta, tilde(#s), tilde(#i))$ cumple \
        #box(width: 100%)[
          $
            x\/theta tilde(<=) y\/theta " sii " y theta (x #s y)
          $
        ]
    ]
  ],
  [
    Recordemos las definiciones: \
    #box(width: 100%)[
      $
        x\/theta tilde(#s) y\/theta = (x #s y) \/ theta quad quad "y" quad quad
        x\/theta tilde(#i) y\/theta = (x #i y) \/ theta
      $
    ]
    *(1)* Veamos entonces que $(L\/theta, tilde(#s), tilde(#i))$ cumple las I1-I7 propiedades para ser un reticulado terna. \
    Sean $x\/theta, y\/theta, z\/theta in L\/theta$ elementos arbitrarios. \
    #let th = $\/theta$
    #let xth = $x th$
    #let yth = $y th$
    #let zth = $z th$
    #let ss = $med tilde(#s) med$
    #let ii = $med tilde(#i) med$
    #let I(num) = [#h(10pt) $("I"num)$ #h(5pt)]
    #I(1)
    $xth ss xth = (x #s x) th = x th quad " , " quad xth ii xth = (x #i x) th = x th$ \
    #I(2)
    $xth ss yth = (x #s y) th = (y #s x) th = yth ss xth$ \
    #I(3) Análogo al anterior. \
    #I(4)
    $(xth ss yth) ss zth = ((x #s y) th ss zth) = ((x #s y) #s z) th = (x #s (y #s z)) th$ \
    #h(40pt) $= (xth ss (y #s z) th) = (xth ss (yth ss zth))$ \
    #I(5) Análogo al anterior. \
    #I(6) $xth ss (xth ii yth) = (xth ss (x #i y) th ) = (x #s (x #i y) ) th = x th$ \
    #I(7) Análogo al anterior. \
    #let menorEQ = $tilde(<=)$
    *(2)* Por definición de #menorEQ tenemos que \
    #box(width: 100%)[
      $
        xth menorEQ yth " sii " yth = xth ss yth
      $
    ] \
    pero por definición de $ss$ tenemos que $xth ss yth = (x #s y) th$. Entonces \
    #box(width: 100%)[
      $
        xth menorEQ yth " sii " yth = (x #s y) th
      $
    ] \
    y como no es difícil ver que vale $yth = (x #s y) th "sii " y theta (x #s y)$ #footnote[
      Dada una una relación de equivalencia $R$ sobre un conjunto $A$. \ Sea $a in A$ arbitrario, como R es reflexiva, tengo que $a R a$, entonces $a in a\/R$.
      Sean $a,b in A$ arbitrarios. \
      *($->$)* Si *$a \/ R = b \/ R$* tenemos que $b in a \/ R$ entonces *$a R b$*. \
      *($<-$)* Si *$a R b$*. Tomamos $c in a \/ R$, entonces $a R c$, por simetría $b R a$ y por transitividad $b R c$, luego $c in b \/ R$. Por lo tanto $a \/ R c= b \/ R$.\
      Tomamos $c in b \/ R$, entonces $b R c$, por transitividad $a R c$, luego $c in a \/ R$. Por lo tanto $b \/ R c= a \/ R$. Conclusión *$a \/ R = b \/ R$*.
    ], tenemos que \
    #box(width: 100%)[
      $
        xth menorEQ yth " sii " y theta (x #s y)
      $
    ]
    #box(width: 100%, inset: (top: -100pt))[#fin_demo]
  ],
)

#proofStructure(
  3,
  [*Lema*],
  [
    Sea $(L, #s, #i)$ y $(L', #s', #i')$ reticulados terna y sean $(L, <=)$ y $(L', <=')$ los posets asociados. \
    Sea $F: L -> L'$ una función.  \
    Entonces $F$ es un isomorfismo de $(L, #s, #i)$ en $(L', #s', #i')$
    sii
    $F$ es un isomorfismo de $(L, <=)$ en $(L', <=')$.
  ],
  note: [Mismo que el #link(<combo-demo-4.3>)[Combo 4.3]],
  link_apunte: "<combo-demo-4.3>",
  empty_demo: true,
  [],
)

#pagebreak()


#combo_title(8)

#proofStructure(
  1,
  [*Lema*],
  [
    Supongamos  que $F: bold(A) -> bold(B)$ es un isomorfismo. Sea $phi =_d phi(v_1, ..., v_n) in F^tau$. Entonces \
    #box(width: 100%)[
      $
        bold(A) |= phi [a_1,...,a_n] " sii " bold(B) |= phi [F(a_1),...,F(a_n)]
      $
    ] \
    para cada $a_1,...,a_n in bold(A)$. (El #link(<combo-demo-3.2>)[Como 3.2] es el mismo Lema pero para infinituplas)
  ],
  [
    Llamaremos $(*)$ al _Lema Carácter recursivo de la notación $bold(A) |= phi [a_1,...,a_n]$_ y probaremos por inducción en $k$: \
    #box(width: 100%)[
      - *$"Teo"_k$* : Supongamos que $F : bold(A) -> bold(B)$ es un isomorfismo. Sea $phi in F_k^tau$. Entonces \ #h(35pt)
        $bold(A) |= phi[a_1,...,a_n] " sii " bold(B) |= phi[F(a_1),...,F(a_n)] "  para cada" a_1,...,a_n in A$
    ] \
    #underline("Caso Base"): Sea $phi =_d phi(v_1, ..., v_n) in F_0^tau$ y $a_1,...,a_n in bold(A)$. Por definición de $F_0^tau$ tenemos dos casos: \
    #box(width: 100%)[
      #set list(indent: 0pt)
      - Si $phi = (t equiv s)$ con $t,s in T^tau$. Por convención notacional tenemos $t =_d t(v_1,...,v_n)$ y $s =_d s(v_1,...,v_n)$. \
        #box(width: 100%)[
          $
            bold(A) |= phi [a_1,...,a_n]
            & " sii " t^bold(A)[a_1,...,a_n] = s^bold(A)[a_1,...,a_n] & (*) \
            & " sii " F(t^bold(A)[a_1,...,a_n]) = F(s^bold(A)[a_1,...,a_n]) &("por ser F inyectiva") \
            & " sii " t^bold(B)[F(a_1),...,F(a_n)] = s^bold(B)[F(a_1),...,F(a_n)]quad &("Lema análogo para términos") \
            & " sii " bold(B) |= phi [F(a_1),...,F(a_n)] & (*)
          $
        ]
      - Si $phi = r(t_1,...,t_m)$ con $r in ~R~_m$ y $t_1,...,t_m in T^tau$. Análogo #footnote[
          Si $phi = r(t_1,...,t_m)$ con $r in ~R~_m$ y $t_1,...,t_m in T^tau$. Por convención notacional $t_i =_d t_i (v_1,...,v_n)$. \
          #box(width: 100%)[
            $ bold(A) |= phi [a_1,...,a_n]
            & " sii " ( t_1^bold(A)[a_1,...,a_n],..., t_m^bold(A)[a_1,...,a_n] ) in r^bold(A) & (*) \
            & " sii " ( F(t_1^bold(A)[a_1,...,a_n]),..., F(t_m^bold(A)[a_1,...,a_n]) ) in r^bold(B) &("por ser F iso") \
            & " sii " ( t_1^bold(B)[F(a_1),...,F(a_n)],..., t_m^bold(B)[F(a_1),...,F(a_n)] ) in r^bold(B) quad &("Lema análogo para términos") \
            & " sii " bold(B) |= phi [F(a_1),...,F(a_n)] & (*) $
          ]
        ], solo cambia que usamos $F$ isomorfismo.
    ]
    #underline("Caso Inductivo"):
    Supongamos que vale $"Teo"_k$ y vemos $"Teo"_(k+1)$.
    Sea $phi in F_(k+1)^tau - F_k^tau$, ya que si $phi in F_k^tau$ es directo. Sean $a_1,...,a_n in bold(A)$. Por el _Lema Lectura única de formulas declaradas_ ,para $phi$ tenemos los casos: \
    #box(width: 100%)[
      #set list(indent: 0pt)
      - Si $phi = (phi_1 and phi_2)$. Por convención notacional $phi_i =_d phi_i (v_1,...,v_n)$. Ademas claramente $phi_1, phi_2 in F_k^tau$. \
        #box(width: 100%)[
          $
            bold(A) |= phi [a_1,...,a_n]
            & " sii " bold(A) |= phi_1 [a_1,...,a_n] med "y" med bold(A) |= phi_2 [a_1,...,a_n] & (*) \
            & " sii " bold(B) |= phi_1 [F(a_1),...,F(a_n)] med "y" med bold(B) |= phi_2 [F(a_1),...,F(a_n)] &("por Teo"_k) \
            & " sii " bold(B) |= phi [F(a_1),...,F(a_n)] &(*)
          $
        ]
      - Si $phi = (phi_1 eta phi_2)$ con $eta in {or, ->, <->}$ o $phi = not phi_1$. Son análogos al caso anterior. \
      - Si $phi = forall v_j phi_1$. Por convención notacional $phi_1 =_d phi_1 (v_1,...,v_n)$. Claramente $phi_1 in F_k^tau$. \
        #box(width: 100%, inset: (left: -40pt))[
          $
            bold(A) |= phi [a_1,...,a_n]
            & " sii " bold(A) |= phi_1 [a_1,...,a_(j-1), a, a_(j+1),..., a_n] " para cada " a in bold(A) & (*) \
            & " sii " bold(B) |= phi_1 [F(a_1),..., F(a_(j-1)), F(a), F(a_(j+1)),..., F(a_n)] " para cada " a in bold(A) & quad ("por Teo"_k) \
            & " sii " bold(B) |= phi_1 [F(a_1),..., F(a_(j-1)), b, F(a_(j+1)),..., F(a_n)] " para cada " b in bold(B) & quad ("por F sobre") \
            & " sii " bold(B) |= phi [F(a_1),...,F(a_n)] &(*)
          $
        ]
      - Si $phi = exists v phi_1$ con $v in.not {v_1,...,v_n}$. Por conv. notacional $phi_1 =_d phi_1 (v_1,...,v_n,v)$. Claramente $phi_1 in F_k^tau$. \
        #box(width: 100%)[
          $
            bold(A) |= phi [a_1,...,a_n]
            & " sii " bold(A) |= phi_1 [a_1,...,a_n, a] " para algún " a in bold(A) & (*) \
            & " sii " bold(B) |= phi_1 [F(a_1),..., F(a_n), F(a)] " para algún " a in bold(A) & quad ("por Teo"_k) \
            & "(si tomamos tal elemento" a", tenemos que "F(a) in B "por lo tanto)" \
            & " sii " bold(B) |= phi_1 [F(a_1),..., F(a_n), b] " para algún " b in bold(B)\
            & " sii " bold(B) |= phi [F(a_1),...,F(a_n)] &(*)
          $
        ]
      - Los casos $phi = forall v phi_1$ con $v in.not {v_1,...,v_n}$ y $phi = exists v_j phi_1$ son análogos a los anteriores. #fin_demo \
    ] \

    \
    #linea_dashed

    _Lema análogo para términos_: Sea $F : bold(A) -> bold(B)$ un isomorfismo. Sea $t =_d t(v_1,...,v_n) in T^tau$. Entonces \
    #box(width: 100%, inset: (left: 40pt))[
      $
        F(t^bold(A)[a_1,...,a_n]) = t^bold(B)[F(a_1),...,F(a_n)] " para cada "t in T^tau" y cada " a_1,...,a_n in A
      $
    ] \

    _Lema Carácter recursivo de la notación $bold(A) |= phi [a_1,...,a_n]$_ : \ Supongamos $phi =_d phi(v_1, ..., v_n)$. Sea $bold(A) = (A, i)$ un modelo de tipo $tau$ y sean $a_1,...,a_n in A$. Entonces \
    #box(width: 100%)[
      #let size_phi = 80pt
      #let centro = [
        #box(width: 150pt)[
          #align(center)[
            , entonces $med med$ $bold(A) |= phi[a_1,...,a_n]$
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
      + Si #box(width: size_phi)[#align(center)[$phi = (t equiv s)$]] #centro #sii $t^bold(A) [a_1,...,a_n] = s^bold(A) [a_1,...,a_n]$
      + Si #box(width: size_phi)[#align(center)[$phi = r(t_1,...,t_m)$]] #centro #sii $(t_1^(bold(A))[arrow(a)],...,t_m^(bold(A))[arrow(a)]) in i(r)$.
      + Si #box(width: size_phi)[#align(center)[$phi = (phi_1 and phi_2)$]] #centro #sii $bold(A) |= phi_1[a_1,...,a_n]$ y $bold(A) |= phi_2[a_1,...,a_n]$
      + Si #box(width: size_phi)[#align(center)[$phi = (phi_1 or phi_2)$]] #centro #sii $bold(A) |= phi_1[a_1,...,a_n]$ o $bold(A) |= phi_2[a_1,...,a_n]$
      + Si #box(width: size_phi)[#align(center)[$phi = (phi_1 -> phi_2)$]] #centro #sii $bold(A) tack.r.double.not phi_1[a_1,...,a_n]$ o $bold(A) |= phi_2[a_1,...,a_n]$
      + Si #box(width: size_phi)[#align(center)[$phi = (phi_1 <-> phi_2)$]] #centro #sii \ se dan $bold(A) |= phi_1[a_1,...,a_n]$ y $bold(A) |= phi_2[a_1,...,a_n] med med$ o $med med$  se dan $bold(A) tack.r.double.not phi_1[a_1,...,a_n]$ y $bold(A) tack.r.double.not phi_2[a_1,...,a_n]$
      + Si #box(width: size_phi)[#align(center)[$phi = not phi_1$]] #centro #sii $bold(A) tack.r.double.not phi_1[a_1,...,a_n]$
      + Si #box(width: size_phi)[#align(center)[$phi = forall v_j phi_1$]] #centro #sii \ #h(170pt) para cada $a in A$, se da que $bold(A) |= phi_1[a_1,..,a_(j-1), a, a_(j+1),...,a_n]$
      + Si #box(width: 130pt)[#align(center)[$phi = forall v phi_1$ y $v in.not {v_1,...,v_n}$]] #centro #sii \ #h(230pt) para cada $a in A$, se da que $bold(A) |= phi_1[a_1,...,a_n,a]$
      + Si #box(width: size_phi)[#align(center)[$phi = exists v_j phi_1$]] #centro #sii \ #h(165pt) para algún $a in A$, se da que $bold(A) |= phi_1[a_1,..,a_(j-1), a, a_(j+1),...,a_n]$
      + Si #box(width: 130pt)[#align(center)[$phi = exists v phi_1$ y $v in.not {v_1,...,v_n}$]] #centro #sii \ #h(225pt) para algún $a in A$, se da que $bold(A) |= phi_1[a_1,...,a_n,a]$
    ] \

    _Lema Lectura única de formulas declaradas_: Sea $tau$ un tipo cualquier y $phi in F^tau$. \
    Supongamos $phi =_d phi(v_1, ..., v_n)$. Entonces se de una y solo una de las siguientes. \
    #box(width: 100%)[
      #grid(
        columns: 2,
        [
          #set enum(numbering: "(1)", indent: 12.8pt)
          + $phi = (t equiv s)$ con $t,s in T^tau$.
          + $phi = r(t_1,...,t_m)$ con $r in ~R~_m$ y $t_1,...,t_m in T^tau$.
          + $phi = (phi_1 eta phi_2)$ con $phi_i in F^tau$.
        ],
        [
          #set enum(numbering: "(1)", indent: 12.8pt, start: 5)
          + $phi = not phi_1$ con $phi_1 in F^tau$.
          + $phi = Q v_j phi_1$ con $phi_1 in F^tau$
          + $phi = Q v phi_1$ con $v in.not {v_1,...,v_n}$ y $phi_1 in F^tau$.
          //   + $phi = forall v_j phi_1$ con $phi_1 in F^tau$.
          //   + $phi = forall v phi_1$ con $v in.not {v_1,...,v_n}$ y $phi_1 in F^tau$.
          //   + $phi = exists v_j phi_1$ con $phi_1 in F^tau$.
          //   + $phi = exists v phi_1$ con $v in.not {v_1,...,v_n}$ y $phi_1 in F^tau$.
        ],
      )
    ]
    y $eta in {and, or, ->, <->}$ y $Q in {forall, exists}$.Mas aún, si $phi in F^tau_(k+1)$, cuando se da (3), (4), (5) o (6), se tiene que $phi_i in F^tau_k$.
  ],
)

#pagebreak()

#proofStructure(
  2,
  [*Lema*],
  [
    Sea $(P, <=)$ y $(P', <=')$ posets. Supongamos $F$ es un isomorfismo de $(P, <=)$ en $(P', <=')$. \
    #box(width: 100%)[
      #set enum(numbering: "(a)", indent: 12.8pt)
      + Para cada $S c= P$ y para cada $a in P$, se tiene que $a$ es cota superior (resp. inferior) de $S$ sii $F(a)$ es cota superior (resp. inferior) de $F(S)$.
      + Para cada $S c= P$, se tiene que existe $"sup"(S)$ sii existe $"sup"(F(S))$ y en ese caso de que existan tales elementos se tiene que $F("sup"(S)) = "sup"(F(S))$.
    ]
  ],
  note: [Aclarar que en este caso $F(S) = {F(a): a in S}$.],
  [
    *(a)* Sea $S c= P$ y sea $a in P$. \
    - Supongamos que $a$ es cota superior de $S$ #comentario[(veamos entonces que $F(a)$ es cota superior de $F(S)$)]. \
      Sea $b' in F(S)$ arbitrario, como es $F$ sobre, existe $b in S$ tal que $b' = F(b)$. \
      Entonces $b <= a$ y por ser $F$ un isomorfismo tenemos que $F(b) <=' F(a)$, es decir $b' <=' F(a)$. \
      Como $b' in F(S)$ era arbitrario, tenemos que $F(a)$ es cota superior de $F(S)$. \
    - Supongamos ahora que $F(a)$ es cota superior de $F(S)$ #comentario[(veamos entonces que $a$ es cota superior de $S$)]. \
      Sea $b in S$ arbitrario. Entonces $F(b) <=' F(a)$ y por ser $F$ isomorfismo, tengo que $F^(-1)$ también es un homomorfismo. Por lo cual $F^(-1)(F(b)) <= F^(-1)(F(a))$, es decir $b <= a$. \ Como $b in S$ era arbitrario, tenemos que $a$ es cota superior de $S$. \
    #h(25pt) El caso de cotas inferiores es análogo. \ \
    *(b)* Sea $S c= P$.\
    - Supongamos que existe $a = "sup"(S)$ #comentario[(veamos entonces que $F(a) = "sup"(F(S))$)]. \
      Por (a) tenemos que $F(a)$ es un cota superior de $F(S)$ arbitraria #comentario[(falta ver que es la menor de ellas)]. \
      Supongamos $b' in P'$ es cota superior de $F(S)$. Como $F$ es sobre, existe $b in P$ tal que $b' = F(b)$. \
      Es decir $F(b)$ es cota superior de $F(S)$, entonces por (a) tenemos que $b$ es cota superior de $S$. \
      Como $a = "sup"(S)$, se da que $a <= b$ y como $F$ un isomorfismo, $F(a) <=' F(b)$, es decir $F(a) <=' b'$. \
      Pero como $b'$ era una cota superior arbitraria de $F(S)$, probamos que $F(a)$ es la menor cota superior. \
      Entonces $F(a) = "sup"(F(S))$, por lo tanto existe $"sup"(F(S))$. \
    - Si existe $"sup"(F(S))$ entonces existe $"sup"(S)$, es análogo al anterior. #fin_demo \
  ],
)
