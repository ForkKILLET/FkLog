import argparse
from os import path
import numpy as np
import matplotlib.pyplot as plt

def plot(id, title):
    def decorator(func):
        def wrapper():
            parser = argparse.ArgumentParser(
                prog='fk-log-plot-maker',
                description='Generate math plot for ForkKILLET\'s notes.',
            )
            parser.add_argument(
                '--save',
                action='store_true', default=False, help='Save the figure to an SVG file.'
            )
            parser.add_argument(
                '--outdir',
                default='.', help='Where to save the figure.'
            )

            args = parser.parse_args()
            func(plt=plt, np=np)

            plt.suptitle(title)
            plt.tight_layout()

            if args.save:
                file=path.join(args.outdir, f'plot-{id}.svg')
                print(f'Saving figure to {file}')
                plt.savefig(file)
            else:
                plt.show()
        return wrapper
    return decorator


