#import "vec.typ"
#import "@preview/cetz:0.4.0": canvas
#import "@preview/cetz-plot:0.1.2": plot

#let add-vector(
  source,
  vector,
  arrow-len: 0.3,
  arrow-angle: 15deg,
  scale: (1, 1),
  color: black,
) = {
  let target = vec.add(source, vector)
  plot.add((source, target), style: (stroke: color))
  let len = vec.len(vector)
  let arg = vec.arg(vector)
  // scale * arrow == arrow-len-scale · R(±arrow-angle) · (scale * vector)
  for sgn in (+1, -1) {
    let arrow = vec.div(
      vec.nmul(arrow-len, vec.norm(vec.rotate(
        vec.mul(scale, vector),
        sgn * arrow-angle,
      ))),
      scale
    )
    plot.add((target, vec.sub(target, arrow)), style: (stroke: color))
  }
}

#let add-point(
  point,
  color: none
) = {
  plot.add((point, ), mark: "o", mark-style: (stroke: color, fill: none))
}

#let plot-env(size, view) = {
  let scale = vec.div(size, view)
  (
    plotx: plot.plot.with(
      size: size,
      x-max: view.at(0),
      y-max: view.at(1),
      x-tick-step: none,
      y-tick-step: none,
      axis-style: "left",
    ),
    add-vector: add-vector.with(scale: scale),
    scale: scale,
  )
}

#let canvas-fn(..params, length: none, extra: none, exextra: none) = {
  let objs = params.pos()
  let global-x-min = calc.min(..objs.map(((_, (x-min, _), _, ..)) => x-min))
  let global-x-max = calc.max(..objs.map(((_, (_, x-max), _, ..)) => x-max))
  let global-y-min = calc.min(..objs.map(((_, _, (y-min, _), ..)) => y-min))
  let global-y-max = calc.max(..objs.map(((_, _, (_, y-max), ..)) => y-max))

  canvas(length: length, {
    plot.plot(
      size: (global-x-max - global-x-min, global-y-max - global-y-min),
      x-min: global-x-min,
      x-max: global-x-max,
      y-min: global-y-min,
      y-max: global-y-max,
      ..params.named(),
      {
        for obj in objs {
          let (fn, x-range, _, ..) = obj
          let fn-named = obj.at(3, default: (:))
          plot.add(fn, domain: x-range, ..fn-named)
        }

        if extra != none { extra }
      }
    )

    if exextra != none { exextra }
  })
}