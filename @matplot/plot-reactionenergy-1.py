#!/bin/env python3

from gen import plot
from reactionenergybase import ReactionEnergy

@plot(id='reaction-energy-1', title='high to low')
def main(plt, np):
    with ReactionEnergy(plt, np) as re:
        re.plot(
            '1', label=True,
            e_start=10, e_end=5, e_activation=15
        )

main()

