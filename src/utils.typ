#import "@preview/quick-maths:0.2.1": shorthands

#let add_shorthands = shorthands.with(
  /*
  ($Sigma*$, $Sigma^*$),
  ($w*$, $omega^*$),
  ($X$, $times$),
  ($x->$, $arrow(x)$),
  ($alpha->$, $arrow(alpha)$),
  ($s->$, $arrow(s)$),
  ($u->$, $arrow(u)$),
  ($sigma->$, $arrow(sigma)$),
  ($eta->$, $arrow(eta)$),
  ($|-n$, $tack^n$),
  ($|-*$, $tack^*$),
  ($~G~$, $cal(G)$),
  ($s<$, $s^(<=)$),
  ($*<$, $*^(<=)$),
  ($\#<$, $\#^(<=)$),
  ($M<$, $M^(<=)$),
  */
  // Usadas en los combos de lógica
  ($c=$, $subset.eq$),
  ($=_d$, $med "="_d med$),
  ($|=$, $tack.r.double$),
  // ($!|=$, $tack.r.double.not$),
  ($-||-$, $tack.l tack.r$),
  ($~P~$, $cal(P)$),
  ($~B~$, $cal(B)$),
  ($~A~$, $cal(A)$),
  ($~C~$, $cal(C)$),
  ($~F~$, $cal(F)$),
  ($~R~$, $cal(R)$),
  ($a->$, $arrow(a)$),
  ($<<$, $chevron.l$),
  ($>>$, $chevron.r$),
  ($!|-$, $tack.not$),
  ($|-$, math.tack),
  ("HIP", "HIPOTESIS"),
  ($"HIPk"$, $"HIPOTESIS"overline(k)$),
  // ("TESIS", "TESIS"),
  ($"TESISk"$, $"TESIS"overline(k)$),
)

/*
#let sigmaa = (
  mixto: [$Sigma$-mixto],
  mixta: [$Sigma$-mixta],
  mixtas: [$Sigma$-mixtas],
  recursivo: [$Sigma$-recursivo],
  recursiva: [$Sigma$-recursiva],
  recursivas: [$Sigma$-recursivas],
  r: [$Sigma$-r.],
  recursivamente: (
    enumerable: [$Sigma$-recursivamente enumerable],
  ),
  re: [$Sigma$-r.e.],
  indexada: [$Sigma$-indexada],
  efectivamente: (
    computable: [$Sigma$-efectivamente computable],
    computables: [$Sigma$-efectivamente computables],
    enumerable: [$Sigma$-efectivamente enumerable],
  ),
  turing: (
    computable: [$Sigma$-Turing computable],
  ),
  computable: [$Sigma$-computable],
  computables: [$Sigma$-computables],
  enumerable: [$Sigma$-enumerable],
  enumerables: [$Sigma$-enumerables],
  est: [$Sigma^*$],
  est_m: [$Sigma^(*m)$],
  pr: [$Sigma$-p.r.],
  totales: [$Sigma$-totales],
  total: [$Sigma$-total],
)

#let SSigma = $S^Sigma$
#let InsSigma = $"Ins"^Sigma$
#let ProSigma = $"Pro"^Sigma$
#let menos_punto = $accent(-, dot.c)$
#let horquilla_n_m_num = $Psi_(~P~)^(n,m,\#)$
#let horquilla_n_m_est = $Psi_(~P~)^(n,m,*)$

#let omega_sigma_n_m = [$w^n X #sigmaa.est^m$]
#let conjuntos_omega = $S_1 , dots , S_n$
#let conjuntos_sigma = $L_1 , dots , L_m$
#let bloque_fijo_omega = $S_1 times dots times S_n$
#let bloque_fijo_sigma = $L_1 times dots times L_m$
#let bloque_fijo = $#bloque_fijo_omega times #bloque_fijo_sigma$
#let unit = text(size: 12pt, stroke: 0.1pt)[၊]
#let x_alpha_vector = $arrow(x), arrow(alpha)$
#let par_x_alpha_vector = $(#x_alpha_vector)$

#let text_floor(text) = $floor.l text floor.r$

#let i_nm = $i^(n,m)$
#let E_nm_num = $E_(\#)^(n,m)$
#let E_nm_est = $E_(*)^(n,m)$
#let E_nmj_num = $E_(\# j)^(n,m)$
#let E_nmj_est = $E_(* j)^(n,m)$
#let omega_floor_NN = $omega^#text_floor($NN$)$
#let sigma_floor_NN = $#sigmaa.est^#text_floor($NN$)$
#let Halt_nm = $italic("Halt")^(n,m)$
#let T_nm = $italic(T)^(n,m)$
#let AutoHalt = $italic("AutoHalt")^Sigma$
*/
#let s = $med bold(mono(s)) med$
#let i = $med bold(i) med$
#let estrella = $#sym.ast.op$
#let fin_demo = [#h(1fr) #text(fill: luma(18%))[$qed$]]
#let linea_dashed = [ #line(length: 100%, stroke: (paint: luma(80%), thickness: 1pt, dash: "dashed"))]

#let text_center(str) = box(width: 100%)[#align(center)[#str]]
#let hiddenTitle(title, level: 1) = {
  show heading: none
  heading(level: level)[#title]
}
#let line_title(text, level: 2) = {
  heading(level: level)[#text]
  line(length: 100%)
}
#let combo_title(number, level: 2) = {
  line_title([Combo #number], level: level)
}
#let link_arrow(link_text, in_end: false) = {
  if in_end { h(1fr) }
  if link_text != "" {
    link(link_text)[
      #box(width: 12pt, height: 7pt)[$ ⤷ $]
    ]
  } else {
    box(fill: yellow, inset: 2pt)[
      #text(size: 8pt, fill: black)[Agregar Link]
    ]
  }
}
#let COMPLETAR = {
  box(fill: yellow, inset: 3pt)[
    #text(size: 12pt, fill: black)[COMPLETAR ...]
  ]
}
#let REVISAR = {
  box(fill: red, inset: 3pt)[
    #text(size: 12pt, fill: white)[REVISAR ...]
  ]
}
#let comentario(content) = {
  text(fill: luma(45%), size: 10pt)[#content]
}

/*
Sea Nombres1 el conjunto formado por las siguientes palabras
EXISTENCIA
COMMUTATIVIDAD
PARTICULARIZACION
ABSURDO
EVOCACION
CONJUNCIONELIMINACION
EQUIVALENCIAELIMINACION
DISJUNCIONINTRODUCCION
ELECCION
GENERALIZACION
Sea Nombres2 el conjunto formado por las siguientes palabras
MODUSPONENS
TRANSITIVIDAD
CONJUNCIONINTRODUCCION
EQUIVALENCIAINTRODUCCION
DISJUNCIONELIMINACION
REEMPLAZO
*/

#let JUST = (
  CONCLUSION: [CONCLUSION],
  AXIOMAPROPIO: [AXIOMAPROPIO],
  AXIOMALOGICO: [AXIOMALOGICO],
  EXISTENCIA: a => [EXISTENCIA(#a)],
  COMMUTATIVIDAD: a => [COMMUTATIVIDAD(#a)],
  PARTICULARIZACION: a => [PARTICULARIZACION(#a)],
  ABSURDO: a => [ABSURDO(#a)],
  EVOCACION: a => [EVOCACION(#a)],
  CONJUNCIONELIMINACION: a => [CONJUNCIONELIMINACION(#a)],
  EQUIVALENCIAELIMINACION: a => [EQUIVALENCIAELIMINACION(#a)],
  DISJUNCIONINTRODUCCION: a => [DISJUNCIONINTRODUCCION(#a)],
  ELECCION: a => [ELECCION(#a)],
  GENERALIZACION: a => [GENERALIZACION(#a)],
  MODUSPONENS: (a, b) => [MODUSPONENS(#a, #b)],
  TRANSITIVIDAD: (a, b) => [TRANSITIVIDAD(#a, #b)],
  CONJUNCIONINTRODUCCION: (a, b) => [CONJUNCIONINTRODUCCION(#a, #b)],
  EQUIVALENCIAINTRODUCCION: (a, b) => [EQUIVALENCIAINTRODUCCION(#a, #b)],
  DISJUNCIONELIMINACION: (a, b) => [DISJUNCIONELIMINACION(#a, #b)],
  REEMPLAZO: (a, b) => [REEMPLAZO(#a, #b)],
  DIVISIONPORCASOS: (a, b, c) => [DIVISIONPORCASOS(#a, #b, #c)],
  HIPOTESIS: k => [HIPOTESIS#overline([#k])],
  TESIS: (k, alpha: "") => [TESIS#overline([#k])#alpha],
)

#let demo_block(content) = {
  box(width: 100%)[
    #set enum(numbering: "1.", body-indent: 14pt)
    #align(center)[
      #content
    ]
  ]
}
#let demo_line(sentencia, just, sentencia_width: 200pt) = {
  box(width: sentencia_width)[
    #align(left)[
      $#sentencia$
    ]
  ]
  box(width: 200pt)[
    #align(left)[
      #just
    ]
  ]
}
