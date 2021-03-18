# magicni kvadrat

import constraint
import sys

problem = constraint.Problem()

problem.addVariables("abcdefghi", range(1, 10))
problem.addConstraint(constraint.AllDifferentConstraint())

def ogranicenje(x, y, z):
    if x + y + z == 15:
        return True

problem.addConstraint(ogranicenje, ['a', 'b', 'c'])
problem.addConstraint(ogranicenje, ['d', 'e', 'f'])
problem.addConstraint(ogranicenje, ['g', 'h', 'i'])
problem.addConstraint(ogranicenje, ['a', 'd', 'g'])
problem.addConstraint(ogranicenje, ['b', 'e', 'h'])
problem.addConstraint(ogranicenje, ['c', 'f', 'i'])

problem.addConstraint(ogranicenje, ['a', 'e', 'i'])
problem.addConstraint(ogranicenje, ['c', 'e', 'g'])

resenja = problem.getSolutions()
for resenje in resenja:
    print('----------')
    print("| {} {} {} |".format(resenje['a'], resenje['b'],resenje['c']))
    print("| {} {} {} |".format(resenje['d'], resenje['e'],resenje['f']))
    print("| {} {} {} |".format(resenje['g'], resenje['h'],resenje['i']))
    print("----------")