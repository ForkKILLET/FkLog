type ChainablePromise<T> = {
    [K in Exclude<keyof T, 'then' | 'catch'>]: Promise<T[K]>
} & {
    then: Promise<T>['then']
    catch: Promise<T>['catch']
}

Promise.prototype.chain = function chain<T>(this: Promise<T>): ChainablePromise<T> {
    return new Proxy(this, {
        get(target, prop) {
            if (prop === 'then') {
                return (onresolved: (value: T) => T | Promise<T>) => {
                    target.then(onresolved)
                    return target.chain()
                }
            }
            if (prop === 'catch') {
                return (onrejected: (reason: T) => T | Promise<T>) => {
                    target.catch(onrejected)
                    return target.chain()
                }
            }
            return target.then((value) => 
                value?.[prop as keyof T] // pass nullish value
            ).chain()
        }
    }) as any
}
