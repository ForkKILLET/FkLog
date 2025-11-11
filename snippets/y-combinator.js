const F = f => f(f)

const fac_F = F(fac => x => x === 0 ? 1 : x * fac(fac)(x - 1))

const Y1 = f => f(x => Y1(f)(x))
const Y2 = (y => f => f(x => y(y)(f)(x)))(y => f => f(x => y(y)(f)(x)))
const Y3 = (l => l(l))(y => f => f(x => y(y)(f)(x)))
const Y4 = f => (l => l(l))(y => f(x => y(y)(x)))

const fac_0 = fac => x => x === 0 ? 1 : x * fac(x - 1)
const fac_Y1 = Y1(fac_0)
const fac_Y2 = Y2(fac_0)
const fac_Y3 = Y3(fac_0)
const fac_Y4 = Y4(fac_0)

console.log(fac_F(6))
console.log(fac_Y1(6))
console.log(fac_Y2(6))
console.log(fac_Y3(6))
console.log(fac_Y4(6))
