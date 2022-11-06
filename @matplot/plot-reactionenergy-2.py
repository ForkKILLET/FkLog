#!/bin/env python3

from gen import plot
from reactionenergybase import ReactionEnergy

@plot(id='reaction-energy-2', title='low to high')
def main(plt, np):
    with ReactionEnergy(plt, np) as re:
        re.plot(
            '1', label=True,
            e_start=5, e_end=10, e_activation=15
        )

main()

