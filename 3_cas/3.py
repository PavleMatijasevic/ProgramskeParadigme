# apoeni

import constraint

problem = constraint.Problem()

problem.addVariable('1din', range(51))
problem.addVariable('2din', range(26))
problem.addVariable('5din', range(11))
problem.addVariable('10din', range(6))
problem.addVariable('20din', range(3))

def ogranicenje(jedan, dva, pet, deset, dvadeset):
    if jedan + 2*dva + 5*pet + 10*deset + 20*dvadeset == 50:
        return True

problem.addConstraint(ogranicenje,['1din','2din','5din','10din','20din'])
resenja = problem.getSolutions()
print(resenja)