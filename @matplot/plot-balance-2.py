#!/bin/env python3

from gen import plot
from balancebase import Balance

@plot(title='balance-2')
def main(plt, np):
    with Balance(plt, np) as bal:
        bal.plot('1', label=True)
        bal.plot('2', t=15, y=7.5, dy=2.5)

main()
