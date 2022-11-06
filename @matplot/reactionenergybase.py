from math import sqrt

class ReactionEnergy():
    def __init__(self, plt, np, title=None):
        self.plt = plt
        self.np = np
        self.title = title
        self.xticks = [0]
        self.xtick_labels = ['0']
        self.yticks = []
        self.ytick_labels = []
        self.use_legend = False

    def __enter__(self):
        self.plt.title(self.title)

        return self

    def __exit__(self, exception_type, exception_value, traceback):
        plt = self.plt

        ax = plt.gca()
        ax.spines[[ 'right', 'top' ]].set_color('none')
        ax.set_ylim(bottom=0)
        ax.set_xlim(left=0)

        ax.plot(1, 0, '>k', transform=ax.get_yaxis_transform(), clip_on=False)
        ax.plot(0, 1, '^k', transform=ax.get_xaxis_transform(), clip_on=False)

        plt.xticks(self.xticks, self.xtick_labels)
        plt.yticks(self.yticks, self.ytick_labels)

        if self.use_legend:
            plt.legend(loc='upper right')

        return True

    def plot(
        self, name, label=None, t_start=5, t_end=5, t_reaction=5,
        e_start=10, e_end=5, e_activation=15
    ):
        plt = self.plt
        np = self.np

        ea = e_activation
        t1 = t_start
        t2 = t1 + t_reaction
        t3 = t2 + t_end
        e1 = e_start
        e2 = e_end
        c1 = e1 - ea
        c2 = e2 - ea
        c3 = sqrt(c1 / c2)
        ta1 = (t1 - c3 * t2) / (1 - c3)
        ta2 = (t1 + c3 * t2) / (1 + c3)
        ta = ta1 if t1 < ta1 < t2 else ta2
        a = c1 / (t1 - ta) ** 2

        x_start = np.linspace(0, t_start, 100)
        y_start = e_start + x_start * 0
        color_start = 'red' if e_start > e_end else 'blue'
        
        x_end = np.linspace(t_start + t_reaction, t_start + t_reaction + t_end, 100)
        y_end = e_end + x_end * 0
        color_end = 'red' if e_end > e_start else 'blue'

        x_reaction = np.linspace(t_start, t_start + t_reaction, 100)
        y_reaction = a * (x_reaction - ta) ** 2 + ea

        if label:
            self.use_legend = True

        plt.plot(x_start, y_start, color=color_start, label='start')
        plt.plot(x_end, y_end, color=color_end, label='reaction')
        plt.plot(x_reaction, y_reaction, color='purple', label='end')

        plt.arrow(
            t1 / 2, e1, 0, e2 - e1,
            width=0.3, fc='grey', ec='grey', length_includes_head=True
        )

        plt.hlines(
            y=[ ea, e2 ], xmin=[ 0, 0 ], xmax=[ ta, t2 ],
            linestyles='dashed', colors='black'
        )

        self.yticks.extend([ e_start, e_activation, e_end ])
        self.ytick_labels.extend([ 'start', 'activation', 'end' ])
