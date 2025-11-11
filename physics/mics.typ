#import "../typst/plotx.typ": canvas-fn
#import "../typst/basic.typ": *

#{
  let R = 5

  let attr = (samples: 500, style: (stroke: black))

  align(center, canvas-fn(
    length: 0.6cm,
    x-tick-step: none,
    y-tick-step: none,
    axis-style: "school-book",
    name: "plot",
    ((x => +calc.sqrt(R*R - x*x)), (-5, +5), (0, +5), attr),
    ((x => -calc.sqrt(R*R - x*x)), (-5, +5), (-5, 0), attr),
    extra: {
      import "../typst/plotx.typ"
      import "@preview/cetz-plot:0.1.2": plot

      plot.add(((3, 0), (-3, 4)), style: (stroke: blue))
      plot.add(((0, 0), (-3, 4)), style: (stroke: blue))
      plotx.add-point((3, 0), color: black)
      plot.add-anchor("x0", (3, 0))
      plot.add-anchor("r", (0, 2))
      plot.add-anchor("R", (-1.5, 2))
      plot.add-anchor("θ", (0, 0))
      plot.add-anchor("α", (3, 0))
    },
    exextra: {
      import "@preview/cetz:0.4.0": draw
      draw.content("plot.x0", [$x_0$], anchor: "north", padding: 0.1)
      draw.content("plot.r", [$r$], anchor: "south-west", padding: 0.1)
      draw.content("plot.R", [$R$], anchor: "north-east", padding: 0.1)
      draw.content("plot.θ", [$θ$], anchor: "south-west", padding: 0.1)
      draw.content("plot.α", [$α$], anchor: "south-west", padding: 0.1)
    }
  ))
}

$ dif F_(G x) &= (G m_0 dif m) / r^2 cos α \

  dif m &= λ dif s = λ R dif θ \

  λ &= M / (2 π R) \

  R^2 + x_0^2 - r^2 &= 2 cos θ x_0 R \

  cos (π - α) &= (r^2 + x_0^2 - R^2) / (2 x_0 r) \

  dif F_(G x) &= (G M m_0 cos α dif θ) / (2 π (R^2 + x_0^2 - 2 cos θ x_0 R)) \

  F_(G x) &= (G M m_0) / (2 π) int_(-π)^(π) (-(2 x_0^2 - 2 cos θ x_0 R)) / (2 x_0 (R^2 + x_0^2 - 2 cos θ x_0 R)^(3 slash 2)) dif θ \

  &= (G M m_0) / (2 π) int_(-π)^(π) (cos θ R - x_0) / (R^2 + x_0^2 - 2 cos θ x_0 R)^(3 slash 2) dif θ \
$