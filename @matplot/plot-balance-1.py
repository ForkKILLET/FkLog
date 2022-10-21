#!/bin/env python3

from gen import plot

@plot(title='balance-1')
def main(plt, np):
    move_x = np.linspace(0, 10, 1000)
    balance_x = np.linspace(10, 15, 1000)

    forward_y = 0.05 * (move_x - 10) ** 2 + 5
    backward_y = -0.05 * (move_x - 10) ** 2 + 5
    balance_y = 5 + balance_x * 0

    plt.plot(move_x, forward_y, color='red', label='$v_{forward}$')
    plt.plot(move_x, backward_y, color='blue', label='$v_{backward}$')
    plt.plot(balance_x, balance_y, color='purple', label='$v_{balance}$')
    plt.axvline(10, dashes=(1, 1), color='black')

    ax = plt.gca()
    ax.spines[['right', 'top']].set_color('none')
    ax.set_ylim(bottom=0)
    ax.set_xlim(left=0)

    ax.plot(1, 0, '>k', transform=ax.get_yaxis_transform(), clip_on=False)
    ax.plot(0, 1, '^k', transform=ax.get_xaxis_transform(), clip_on=False)

    plt.xticks([0, 10], ['0', '$t_{balance}$'])
    plt.yticks([0])

    plt.legend(loc='upper center')
main()
