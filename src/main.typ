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
    [Dados $phi =_d phi(v_1, ..., v_n)$, *A* una estructura de tipo $tau$ y $a_1, ..., a_n in A$, defina qué significa \ $A |= phi[a_1, ..., a_n]$ (i.e. Convención notacional 4).],
    [
      Si declaramos $phi =_d phi(v_1, ..., v_n)$, *A* es un modelo de tipo $tau$ y $a_1, ..., a_n in A$ entonces $bold(A) |= phi[a_1, ..., a_n]$ significara que $bold(A) |= phi[arrow(b)]$, donde $arrow(b)$ es una asignación tal que a cada $v_i$ le asigna el valor de $a_i$.
    ],
  )

  #definitionStructure(
    5,
    [Defina $(L, s, i,^c, 0, 1)\/theta$ (con $theta$ una congruencia del reticulado complementado $(L, s, i,^c, 0, 1)$).],
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
  [Dados $t =_d t(v_1, ..., v_n) in T^tau$, *A* una estructura de tipo $tau$ y $a_1, ..., a_n in A$, defina $t^A [a_1, ..., a_n]$ (i.e. Convención notacional 2).],
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
        F(x #s y) & = F(x) #s' F(y) \
        F(x #i y) & = F(x) #i' F(y) \
           F(x^c) & = F(x)^c' \
             F(0) & = 0' \
             F(1) & = 1'
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
        {y in L: y >= s_1 #i ... #i s_n, "para algunos" s_1,...,s_n in S, n>=1}
      $
    ] \
    Llamaremos a $[S)$ el _filtro generado por_ $S$ _en_ $(L, s, i)$. \
  ],
)

#definitionStructure(
  4,
  [Defina cuando $bold(J) in italic("Just")^+$ es balanceada.],
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
  [Defina "$(L, s, i,^c, 0, 1)$ es un subreticulado complementado de $(L', s', i',^c', 0', 1')$".],
  [
    Dados reticulados complementados $(L, s, i,^c, 0, 1)$ y $(L', s', i',^c', 0', 1')$, diremos que _$(L, s, i,^c, 0, 1)$ es un subreticulado complementado de_ $(L', s', i',^c', 0', 1')$ si se dan las siguiente condiciones: \
    #box(width: 100%)[
      #set enum(numbering: "(1)", indent: 12.8pt)
      + $L c= L'$. \
      + $L$ es cerrado bajo las operaciones $#s', #i'$ y $""^c'$. #footnote[
          Es decir, para todo $x, y in L$ se cumple que $x #s' y in L$, $x #i' y in L$ y $x^c' in L$.
        ] \
      + $0 = 0'$ y $1 = 1'$.
      + $s = s'|_(L times L)$ , $i = i'|_(L times L)$ y $""^c = ""^c'|_L$.
    ]
  ],
)

#definitionStructure(
  2,
  [Defina $A |= phi[a->]$ (versión absoluta, no dependiente de una declaración previa, i.e. $a-> in A^NN$).],
  note: [No hace falta definir $t^A [a->]$.],
  [
    Ahora si definamos recursivamente la relación $A |= phi[a->]$, donde *A* es una estructura de tipo $tau$, $phi in F^tau$ y $a->$ una asignación de *A* como: \
    #box(width: 100%)[
      #let size_phi = 80pt
      #set enum(numbering: "(1)", indent: 12.8pt)
      + Si #box(width: size_phi)[#align(center)[$phi = (t equiv s)$]], entonces  $bold(A) |= phi[a->] med med$ sii $med med$ $t^bold(A) [a->] = s^bold(A) [a->]$
      + Si #box(width: size_phi)[#align(center)[$phi = r(t_1,...,t_m)$]], entonces  $bold(A) |= phi[a->] med med$ sii $med med$ $(t_1^(bold(A))[arrow(a)],...,t_m^(bold(A))[arrow(a)]) in i(r)$.
      + Si #box(width: size_phi)[#align(center)[$phi = (phi_1 and phi_2)$]], entonces  $bold(A) |= phi[a->] med med$ sii $med med$ $bold(A) |= phi_1[a->]$ y $bold(A) |= phi_2[a->]$
      + Si #box(width: size_phi)[#align(center)[$phi = (phi_1 or phi_2)$]], entonces  $bold(A) |= phi[a->] med med$ sii $med med$ $bold(A) |= phi_1[a->]$ o $bold(A) |= phi_2[a->]$
      + Si #box(width: size_phi)[#align(center)[$phi = (phi_1 -> phi_2)$]], entonces  $bold(A) |= phi[a->] med med$ sii $med med$ $bold(A) tack.r.double.not phi_1[a->]$ o $bold(A) |= phi_2[a->]$
      + Si #box(width: size_phi)[#align(center)[$phi = (phi_1 <-> phi_2)$]], entonces  $bold(A) |= phi[a->] med med$ sii $med med$ \ #h(140pt) se dan $bold(A) |= phi_1[a->]$ y $bold(A) |= phi_2[a->]$ $med med$ o $med med$ se dan $bold(A) tack.r.double.not phi_1[a->]$ y $bold(A) tack.r.double.not phi_2[a->]$
      + Si #box(width: size_phi)[#align(center)[$phi = not phi_1$]], entonces  $bold(A) |= phi[a->] med med$ sii $med med$ $bold(A) tack.r.double.not phi_1[a->]$
      + Si #box(width: size_phi)[#align(center)[$phi = forall x_1 phi_1$]], entonces  $bold(A) |= phi[a->] med med$ sii $med med$ para cada $a in A$, se da que $bold(A) |= phi_1[arrow.b ""_i^a (arrow(a))]$ #footnote[
          Dada una estructura *A* de tipo $tau$, una asignación $arrow(a) in A^NN$ y $a in A$, con $arrow.b ""_i^a (arrow(a))$ denotaremos la asignación que resulta de reemplazar en $arrow(a)$ el i-ésimo elemento por $a$.
        ]
      + Si #box(width: size_phi)[#align(center)[$phi = exists x_1 phi_1$]], entonces  $bold(A) |= phi[a->] med med$ sii $med med$ hay un $a in A$ tal que $bold(A) |= phi_1[arrow.b ""_i^a (arrow(a))]^(#text("5", size: 8pt))$
    ]
  ],
)

#definitionStructure(
  3,
  [Defina la relación _"$v$ ocurre libremente en $phi$ a partir de $i$"_.],
  [
    Definamos recursivamente la relación _”v ocurre libremente en $phi$ a partir de $i$”_, donde $v in "Var"$, $phi in F^tau$ y $i in \{1, ..., |phi|\}$, de la siguiente manera: \
    #box(width: 100%)[
      #let size_phi = 65pt
      #set enum(numbering: "(1)(a)", indent: 12.8pt)
      + Si #box(width: size_phi)[#align(center)[$phi$ es atómica]], entonces _v ocurre libremente en $phi$ a partir de $i$_ $med med$ sii $med med$ $v$ ocurre en $phi$ a partir de $i$. #footnote[
        Si $alpha, beta in Sigma^#estrella$, con $|alpha|,|beta| >= 1$ y un natural $i in {1,...,|beta|}$, se dice que _$alpha$ ocurre a partir de $i$ en $beta$_ cuando se de que existan palabras $delta, gamma$ tales que $beta = delta alpha gamma$ y $|delta| >= i-1$.
      ]
      + Si #box(width: size_phi)[#align(center)[$phi = phi_1 eta phi_2$]], entonces _v ocurre libremente en $phi$ a partir de $i$_ $med med$ sii $med med$ se da alguna de las siguientes
        + $v$ ocurre libremente en $phi_1$ a partir de $i-1$.
        + $v$ ocurre libremente en $phi_2$ a partir de $i- |phi_1eta|$.
      + Si #box(width: size_phi)[#align(center)[$phi = not phi_1$]], entonces _v ocurre libremente en $phi$ a partir de $i$_ $med med$ sii $med med$  $v$ ocurre libremente en $phi_1$ a partir de $i-1$.
      + Si #box(width: size_phi)[#align(center)[$phi = Q w phi_1$]], entonces _v ocurre libremente en $phi$ a partir de $i$_ $med med$ sii $med med$  $v != w$ y $v$ ocurre libremente en $phi_1$ a partir de $i - |Q w|$.
    ]
  ],
)

#definitionStructure(
  4,
  [Defina "reticulado cuaterna".],
  [
    Un reticulado cuaterna es una $4$-upla $(L, s, i, <=)$ tal que $L$ es un conjunto no vacío, $s$ e $i$ son operaciones binarias sobre $L$, $<=$ es una relación binaria y se cumplen las siguientes propiedades: \
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
  [Explique la notación declaratoria para *términos* con sus 3 convenciones notacionales.],
  [
    Supongamos $v_1, ..., v_n in "Var"$ y  $t$ un termino de tipo $tau$. Entonces escribimos $t =_d t(v_1, ..., v_n)$ para declarar que $v_1,...,v_n$ son variables distintas y tales que toda variable que ocurre en $t$ pertenecen a ${v_1,...,v_n}$. \
    Esta notación declaratoria es muy útil cuando se combina con las siguientes convenciones notacionales: \
    #text([*Convención notacional 1*], size: 12pt):
    Si hemos declarado $t =_d t(v_1, ..., v_n)$, si $P_1,...,P_n$ son palabras cualquieras, entonces $t(P_1,...,P_n)$ denotará la palabra que resulta de reemplazar simultáneamente cada ocurrencia de  $v_1$ en $t$ por $P_1$, cada ocurrencia de $v_2$ en $t$ por $P_2$, etc. \
    #text([*Convención notacional 2*], size: 12pt):
    Si hemos declarado $t =_d t(v_1, ..., v_n)$, si *A* es un modelo de tipo $tau$ y $a_1, ..., a_n in A$, entonces con $t^A [a_1, ..., a_n]$ denotaremos al elemento $t^bold(A)[arrow(b)]$, donde $arrow(b)$ es una asignación tal que a cada $v_i$ le asigna el valor de $a_i$. \
    #text([*Convención notacional 5*], size: 12pt):
    Si hemos declarado $t =_d t(v_1, ..., v_n)$, y se da que $t = f(t_1,...,t_m)$, con $f in F_m, m>=1$ y $t_1,...,t_m in T_k^tau$, supondremos tácitamente que también hemos echo las declaraciones $t_1 =_d t_1(v_1,...,v_k), ..., t_m =_d t_m (v_1,...,v_k)$. Esto lo podemos hacer ya que obviamente las variables que ocurren en los $t_1,...,t_m$ están en ${v_1,...,v_k}$.
  ],
)

#combo_title(6)

#definitionStructure(
  1,
  [Explique la notación declaratoria para *fórmulas* con sus 3 convenciones notacionales.],
  note: [Puede asumir la notación declaratoria para términos.],
  [
    Supongamos $v_1, ..., v_n in "Var"$ y  $phi$ es una formula de tipo $tau$. Entonces escribimos $phi =_d phi(v_1, ..., v_n)$ para declarar que $v_1,...,v_n$ son variables distintas y tales que $"Li"(phi) c= {v_1,...,v_n}$. \
    Esta notación declaratoria es muy útil cuando se combina con las siguientes convenciones notacionales: \
    #text([*Convención notacional 3*], size: 12pt):
    Si hemos declarado $phi =_d phi(v_1, ..., v_n)$, si $P_1,...,P_n$ son palabras cualquieras, entonces $phi(P_1,...,P_n)$ denotará la palabra que resulta de reemplazar simultáneamente cada ocurrencia de $v_1$ en $phi$ por $P_1$, cada ocurrencia de $v_2$ en $phi$ por $P_2$, etc. \
    #text([*Convención notacional 4*], size: 12pt):
    Si hemos declarado $phi =_d phi(v_1, ..., v_n)$, si *A* es un modelo de tipo $tau$ y $a_1, ..., a_n in A$, entonces $bold(A) |= phi [a_1, ..., a_n]$ significara que $bold(A) |= phi[arrow(b)]$, donde $arrow(b)$ es una asignación tal que a cada $v_i$ le asigna el valor de $a_i$. 
    En general $bold(A) tack.r.double.not  phi[arrow(b)]$ significara que no sucede $bold(A) |= phi[a_1,...,a_n]$. \
    #text([*Convención notacional 6*], size: 12pt):
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
