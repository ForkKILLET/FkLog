type Ctor<T = any> = new (...param: any[]) => T
type StaticPart<C extends Ctor> = {
  [K in Exclude<keyof C, 'prototype'> as C[K] extends Ctor ? never : K]: C[K]
}
const LetMeAccess = <C extends Ctor, const Ks extends string[]>(ctor: C, _keys: Ks) =>
  ctor as unknown as C extends new (...params: infer P) => infer R
    // @ts-expect-error
    ? StaticPart<C> & (new (...params: P) => { [K in keyof R]: R[K] } & { [K in Ks[number]]: R[K] }) 
    : never

class B {
  static staticField: 'static'
  public publicField: 'public'
  protected protectedField: 'protected'
  private privateField: 'private'
}

class D extends LetMeAccess(B, [ 'privateField', 'protectedField' ]) {
  constructor() {
    super()
    this.protectedField
    this.privateField
    D.staticField
  }
}
