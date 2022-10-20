#!/bin/env python3

from gen import plot

@plot(title='balance-1')
def main(plt, np):
    move_x = np.linspace(0, 10, 1000)
    balance_x = np.linspace(10, 15, 1000)

    forward_y = 0.05 * (move_x - 10) ** 2 + 5
    backward_y = -0.05 * (move_x - 10) ** 2 + 5
    balance_y = 5 + balance_x * 0

    plt.plot(move_x, forward_y, color='blue')
    plt.plot(move_x, backward_y, color='blue')
    plt.plot(balance_x, balance_y, color='blue')
    plt.axvline(10, dashes=(1, 1), color='black')

    ax = plt.gca()
    ax.spines[['right', 'top']].set_color('none')
    ax.set_ylim(bottom=0)
    ax.set_xlim(left=0)

    plt.xticks([0, 10])
    plt.yticks([0])

main()
