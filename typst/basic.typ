#import "arr.typ"

// Arithmetic
#let pm = $plus.minus$
#let ee = $upright(e)$

// Function
#let dom = $op("dom")$

// Vector
#let ve(x) = $bold(#x)$
#let angleof(x, y) = $angle.l #x, #y angle.r$
#let Proj = $op("Proj")$

// Differential
#let de = $Δ$
#let par = $partial$

#let pretty-pow(base, deg) = {
  if (deg == 1) {
    base
  }
  else {
    $#base^#deg$
  }
}

#let opop(op) = (fun, ..vars) => {
  let vars = vars.pos()
  if (vars.len() == 0) {
    return $#op / (#op #fun)$
  }
  let tot_deg = vars.len()
  let numer = $#pretty-pow(op, tot_deg) fun$
  let denom = arr.aggregate(vars)
    .map(((var, deg)) => $op #pretty-pow(var, deg)$)
    .join("")
  return $#numer / #denom$
}

#let dd = opop($dif$)
#let pp = opop($par$)

// Integral
#let int = $integral$
#let iint = $integral.double$
#let iiint = $integral.triple$
#let oint = $integral.cont$
#let oiint = $integral.surf$
#let oiiint = $integral.vol$

// Complex
#let Re = $op("Re")$
#let Im = $op("Im")$
#let Arg = $op("Arg")$
#let ii = $upright(i)$
#let jj = $upright(j)$
#let kk = $upright(k)$

// Matrix
#let matdet(..rows) = {
  math.mat(delim: "|", ..rows.pos())
}

#let dmatdet(..rows) = {
  matdet(..rows
    .pos()
    .map(row => row.map(math.display))
  )
}

// Display
#let dcases(children) = {
  math.cases(math.display(children))
}

#let at(expr, vals, sup: none) = $lr(#expr |)_#vals^#sup$

// Logic
#let Exists(..var) = {
  let var_list = var.pos().join($,$)
  $exists #var_list. thick$
}
#let Forall(..var) = {
  let var_list = var.pos().join($,$)
  $forall #var_list. thick$
}

#let iso = $tilde.equiv$

#let implies = $arrow.r.double$
#let notimplies = $arrow.r.double.not$