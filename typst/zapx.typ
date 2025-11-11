#import "@preview/cetz:0.4.0"
#import "@preview/zap:0.2.1"
#import "vec.typ"

#import cetz: *
#import draw: *
#import zap: *

#let resolve-coord(ctx, c) = coordinate.resolve(ctx, c).at(1)

#let terminal-offsets = (
  lt: ((-1, +1), (-1, -1)),
  lb: ((-1, -1), (-1, +1)),

  tl: ((-1, +1), (+1, +1)),
  tr: ((+1, +1), (-1, +1)),

  rt: ((+1, +1), (+1, -1)),
  rb: ((+1, -1), (+1, +1)),

  bl: ((-1, -1), (+1, -1)),
  br: ((+1, -1), (-1, -1)),
)

#let terminals(name, dir, scale: (1, 1)) = group(ctx => {
  let (o1, o2) = terminal-offsets
    .at(dir)
    .map(o => vec.mul(o, scale))
  let p = resolve-coord(ctx, name + ".component")

  content(vec.add(p, o1), $+$)
  content(vec.add(p, o2), $-$)
})

#let switch(a1, a2, length: 0.5, angle: 30deg) = group(ctx => {
  let (p1, p2) = (a1, a2).map(c => resolve-coord(ctx, c))
  let pd = vec.sub(p2, p1)

  let m = vec.avg(p1, p2)
  let pe = vec.norm(pd)
  let (s1, s2) = (-1, +1).map(d => vec.add(m, vec.nmul(d * length, pe)))
  let sd = vec.sub(s2, s1)
  let sdr = vec.rotate(sd, angle)
  let s3 = vec.add(s1, sdr)

  wire(a1, s1)
  wire(s2, a2)
  wire(s1, s3)
})