#!/bin/env python3

from gen import plot
from balancebase import Balance

@plot(id='balance-2', title='balance move (concentration)')
def main(plt, np):
    plt.subplot(2, 2, 1)
    with Balance(plt, np, title='add reactant') as bal:
        bal.plot('1', label=True)
        bal.plot('2', t=15, y=10, dy=5)

    plt.subplot(2, 2, 2)
    with Balance(plt, np, title='add product') as bal:
        bal.plot('1')
        bal.plot('2', t=15, y=10, dy=-5)

    plt.subplot(2, 2, 3)
    with Balance(plt, np, title='remove reactant') as bal:
        bal.plot('1')
        bal.plot('2', t=15, y=3, dy=2)

    plt.subplot(2, 2, 4)
    with Balance(plt, np, title='remove product') as bal:
        bal.plot('1')
        bal.plot('2', t=15, y=3, dy=-2)
main()
