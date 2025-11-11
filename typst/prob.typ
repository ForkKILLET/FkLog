#let distrib(var, vals, probs) = {
  set table(stroke: none) 
  set table.hline(stroke: 0.6pt) 
  set table.vline(stroke: 0.6pt) 

  align(center, table(
    columns: vals.len() + 1,
    $var$, ..vals.map(val => $val$),
    $P$, ..probs.map(prob => $prob$),
    table.hline(y: 0),
    table.hline(y: 1, stroke: 0.3pt),
    table.hline(y: 2),
    table.vline(x: 1, start: 0, end: 2, stroke: 0.3pt)
  ))
}

#let distrib_2d(var1, var2, vals1, vals2, probs) = {
  set table(stroke: none) 
  set table.hline(stroke: 0.6pt) 
  set table.vline(stroke: 0.6pt) 

  let len1 = vals1.len()
  let len2 = vals2.len()

  align(center, table(
    columns: len2 + 1,
    table.cell(rowspan: 2, align: horizon)[$var1$],
    table.cell(colspan: len2, inset: 2pt)[$var2$],
    ..vals2.map((val2) => table.cell(inset: 2pt)[$val2$]),
    ..vals1
      .enumerate()
      .map(((i, val1)) => (
        $val1$,
        ..probs.at(i).map(prob => $prob$)
      ))
      .flatten(),
    table.hline(y: 0),
    table.hline(y: 1, stroke: 0.3pt),
    table.hline(y: 2, stroke: 0.3pt),
    table.hline(y: vals1.len() + 2),
    table.vline(x: 1, start: 0, end: len1 + 2, stroke: 0.3pt)
  ))
}

#let Cov = math.op("Cov")