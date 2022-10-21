import argparse
from os import path
import numpy as np
import matplotlib.pyplot as plt

def plot(title):
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
            plt.rcParams['font.sans-serif'] = ['simhei']
            func(plt=plt, np=np)
            plt.title(title)

            if args.save:
                file=path.join(args.outdir, f'plot-{title}.svg')
                print(f'Saving figure to {file}')
                plt.savefig(file)
            else:
                plt.show()
        return wrapper
    return decorator


