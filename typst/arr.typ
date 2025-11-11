#let span(arr, pred) = {
  let left = ()
  let right = ()
  let is_left = true
  for i in arr {
    if (is_left) {
      if not pred(i) {
        is_left = false
      }
      else {
        left.push(i)
        continue
      }
    }
    right.push(i)
  }
  return (left, right)
}

#let aggregate(arr) = {
  if arr.len() == 0 {
    return ()
  }
  let (group, rest) = span(arr, it => it == arr.at(0))
  return ((group.at(0), group.len()), ..aggregate(rest))
}
