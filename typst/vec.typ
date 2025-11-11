#let add = (..vs) => {
  let s = (0, 0)
  for v in vs.pos() {
    s = (s.at(0) + v.at(0), s.at(1) + v.at(1))
  }
  s
}

#let nmul = (n, v) => (n * v.at(0), n * v.at(1))
#let neg = v => nmul(-1, v)

#let mul = (..vs) => {
  let p = (1, 1)
  for v in vs.pos() {
    p = (p.at(0) * v.at(0), p.at(1) * v.at(1))
  }
  p
}

#let inv = v => (1 / v.at(0), 1 / v.at(1))
#let div = (v1, v2) => mul(v1, inv(v2))

#let sub = (v1, v2) => add(v1, neg(v2))

#let len = v => calc.sqrt(v.at(0) * v.at(0) + v.at(1) * v.at(1))
#let arg = v => calc.atan2(v.at(0), v.at(1))

#let from-polar = (r, a) => (r * calc.cos(a), r * calc.sin(a))
#let to-polar = v => (len(v), arg(v))

#let rotate = (v, da) => {
  let (r, a) = to-polar(v)
  from-polar(r, a + da)
}

#let norm = v => {
  let l = len(v)
  if l == 0 {
    (0, 0)
  }
  else {
    (v.at(0) / l, v.at(1) / l)
  }
}

#let mix = (k, v1, v2) => {
  return nmul(k, v1) + nmul(1 - k, v2)
}

#let avg = (..vs) => {
  nmul(1 / vs.pos().len(), add(..vs))
}