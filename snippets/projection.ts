type ProjectionSchemaId = 1

type MKeyOf<T> = T extends any
  ? keyof T
  : never

type MId<T> = {
  [K in MKeyOf<T>]: T[K]
} & {}

type ProjectionSchema<T> =
  T extends Array<infer U>
    ? ProjectionSchema<U>
    : | {
        [K in keyof T]?:
          | ProjectionSchemaId
          | ProjectionSchema<T[K]>
      }
      | Record<keyof any, ProjectionSchemaId | object>

type Projection<T, S> =
  S extends ProjectionSchemaId
    ? T
    : T extends Array<infer U>
      ? Array<MId<Projection<U, S>>>
      : {
        [K in keyof T & keyof S]: K extends keyof S
          ? Projection<T[K], S[K]>
          : never
      }

const projection = <T, S extends ProjectionSchema<T>>(input: T, schema: S): Projection<T, S> => {
  if (typeof input !== 'object' || input === null)
    throw new Error('Input must be an object.')

  type R = Projection<T, S>

  if (Array.isArray(input)) {
    return input.map(item => projection(item, schema)) as R
  }

  const result = {} as R
  Reflect.ownKeys(input).forEach(key => {
    const schemaIt = schema[key]
    if (! schemaIt)
      return
    if (schemaIt === 1)
      result[key] = input[key]
    else
      result[key] = projection(input[key], schemaIt)
  })
  return result
}

const input = {
  foo: 1,
  bar: 'string',
  arr: [
    { sub: 1, another: 'key' },
    { sub: 2 },
  ],
  obj: {
    sub: 3,
  },
}

const output1 = projection(input, {
  foo: 1,
  bar: 1,
})

const output2 = projection(input, {
  arr: {
    sub: 1,
  },
})

const output3 = projection(input, {
  'non-exist': 1
})

const output4 = projection(input, {
  arr: {
    sub: 1,
    another: 1,
  },
})

const output5 = projection(input, {
  obj: {
    sub: 1,
  },
})

console.dir({
  output1,
  output2,
  output3,
  output4,
  output5,
}, { depth: Infinity })