"""
Napisati program koji na standardni izlaz ispisuje sve
kombinacije oblika xyz gde je 
x:{a, b, c}
y:{1, 2, 3}
z:{0.1, 0.2, 0.3}
tako da vazi 10*z = y
"""

import sys
import constraint

problem = constraint.Problem()

problem.addVariable('x',['a','b','c'])
problem.addVariable('y',[1, 2, 3])
problem.addVariable('z', [0.1, 0.2, 0.3])

def ogranicenje(y, z):
    if y / 10.0 == z:
        return True

problem.addConstraint(ogranicenje,['y','z'])

resenja = problem.getSolutions()
for resenje in resenja:
    print(str(resenje['x']) + " " + str(resenje['y']) + " " + str(resenje['z']) )