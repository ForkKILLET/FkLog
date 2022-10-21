class Balance():
    def __init__(self, plt, np):
        self.plt = plt
        self.np = np
        self.xticks = [0]
        self.xtick_labels = ['0']

    def __enter__(self):
        return self

    def __exit__(self, exception_type, exception_value, traceback):
        plt = self.plt

        ax = plt.gca()
        ax.spines[['right', 'top']].set_color('none')
        ax.set_ylim(bottom=0)
        ax.set_xlim(left=0)

        ax.plot(1, 0, '>k', transform=ax.get_yaxis_transform(), clip_on=False)
        ax.plot(0, 1, '^k', transform=ax.get_xaxis_transform(), clip_on=False)

        plt.legend(loc='upper right')
        plt.xticks(self.xticks, self.xtick_labels)

        return True

    def plot(self, name, label=None, t=0, t_move=10, t_balance=5, y=5, dy=5):
        plt = self.plt
        np = self.np

        t1 = t + t_move
        t2 = t1 + t_balance

        move_x = np.linspace(t, t1, 1000)
        balance_x = np.linspace(t1, t2, 1000)

        k = dy / (t1 - t) ** 2

        forward_y = k * (move_x - t1) ** 2 + y
        backward_y = -k * (move_x - t1) ** 2 + y
        balance_y = y + balance_x * 0

        plt.plot(move_x, forward_y, color='red', label=label and '$v_{forward}$')
        plt.plot(move_x, backward_y, color='blue', label=label and '$v_{backward}$')
        plt.plot(balance_x, balance_y, color='purple', label=label and '$v_{balance}$')
        plt.axvline(t1, dashes=(1, 1), color='black')

        self.xticks.append(t1)
        self.xtick_labels.append(f'$t_{{balance ({name})}}$')
