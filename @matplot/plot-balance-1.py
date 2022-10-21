#!/bin/env python3

from gen import plot
from balancebase import Balance

@plot(title='balance-1')
def main(plt, np):
    with Balance(plt, np) as bal:
        bal.plot('1', label=True)

main()
