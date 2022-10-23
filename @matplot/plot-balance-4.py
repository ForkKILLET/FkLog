#!/bin/env python3

from gen import plot
from balancebase import Balance

@plot(id='balance-4', title='balance move (pressure)')
def main(plt, np):
    plt.subplot(2, 2, 1)
    with Balance(plt, np, title='higher pressure, $N_{gas}^L > N_{gas}^R$') as bal:
        bal.plot('1', label=True)
        bal.plot('2', t=15, y=12, dy=5)

    plt.subplot(2, 2, 2)
    with Balance(plt, np, title='higher pressure, $N_{gas}^L < N_{gas}^R$') as bal:
        bal.plot('1')
        bal.plot('2', t=15, y=12, dy=-5)

    plt.subplot(2, 2, 3)
    with Balance(plt, np, title='lower pressure, $N_{gas}^L < N_{gas}^R$') as bal:
        bal.plot('1')
        bal.plot('2', t=15, y=3, dy=1.5)

    plt.subplot(2, 2, 4)
    with Balance(plt, np, title='lower pressure, $N_{gas}^L > N_{gas}^R$') as bal:
        bal.plot('1')
        bal.plot('2', t=15, y=3, dy=-1.5)
main()
