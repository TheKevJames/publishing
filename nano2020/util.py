#!/usr/bin/env python3
"""
./util.py

Usage:
    ./util.py powers generate [--normie | --mage]
"""
import random

from docopt import docopt


POWERS = (['earth', 'air', 'fire', 'water']
          + ['light', 'shadow']
          + ['mud', 'lightning', 'magma', 'ice']
          + ['meta', 'aether', 'radiance', 'life', 'dust', 'void', 'ash',
             'salt'])
POWER_WEIGHTS = ([50] * 4
                 + [12] * 2
                 + [2] * 4
                 + [1] * 8)
POWER_MULTIPLE_CHANCE = 1000

ASPECTS = ['conjuration', 'abjuration', 'evocation', 'transmutation',
           'divination', 'enchantment', 'illusion']
ASPECT_MULTIPLE_CHANCE = 100

STRENGTHS = [0, 1, 2, 3, 4, 5, 6, 7]
# New York
STRENGTH_WEIGHTS = [1, 16, 24, 32, 26, 18, 8, 1]
# Europe
# STRENGTH_WEIGHTS = [1, 12, 20, 30, 32, 24, 14, 4]


def main(args):
    if args.get('powers'):
        if args.get('generate'):
            if args.get('--normie'):
                strengths = STRENGTHS[:3]
                strength_weights = STRENGTH_WEIGHTS[:3]
            elif args.get('--mage'):
                strengths = STRENGTHS[3:]
                strength_weights = STRENGTH_WEIGHTS[3:]
            else:
                strengths = STRENGTHS
                strength_weights = STRENGTH_WEIGHTS

            powers = []

            k = 1
            while random.randint(0, POWER_MULTIPLE_CHANCE - 1) == 0:
                k += 1
            for power, strength in zip(random.choices(POWERS, POWER_WEIGHTS,
                                                      k=k),
                                       random.choices(strengths,
                                                      strength_weights, k=k)):
                powers.extend([power, strength])
                powers.append('\n')

            k = 1
            while random.randint(0, ASPECT_MULTIPLE_CHANCE - 1) == 0:
                k += 1
            for aspect, strength in zip(random.choices(ASPECTS, k=k),
                                        random.choices(strengths,
                                                       strength_weights, k=k)):
                powers.extend([aspect, strength])
                powers.append('\n')

            print(' '.join(str(p).title() for p in powers).strip())


if __name__ == '__main__':
    main(docopt(__doc__))
