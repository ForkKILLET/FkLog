#!/bin/env python3

from gen import plot
from balancebase import Balance

@plot(id='balance-3', title='balance move (temperature)')
def main(plt, np):
    plt.subplot(2, 2, 1)
    with Balance(plt, np, title='higher temp, endothermic') as bal:
        bal.plot('1', label=True)
        bal.plot('2', t=15, y=12, dy=5)

    plt.subplot(2, 2, 2)
    with Balance(plt, np, title='higher temp, exothermic') as bal:
        bal.plot('1')
        bal.plot('2', t=15, y=12, dy=-5)

    plt.subplot(2, 2, 3)
    with Balance(plt, np, title='lower temp, endothermic') as bal:
        bal.plot('1')
        bal.plot('2', t=15, y=3, dy=1.5)

    plt.subplot(2, 2, 4)
    with Balance(plt, np, title='lower temp, exothermic') as bal:
        bal.plot('1')
        bal.plot('2', t=15, y=3, dy=-1.5)
main()
