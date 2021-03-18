import constraint

"""
x >= z ,  x*2 + y*x + z <= 34
x in {1, 2, ..., 90}
y in {2, 4, 6, 60}
z in {1, 4, 9, 16, ..., 100} // kvadrati celih brojeva od 1 do 10

"""

problem = constraint.Problem()

problem.addVariable('x', range(1, 91))
problem.addVariable('y', range(2, 61, 2))

moguciZaZ = []
for i in range(1, 11):
    moguciZaZ.append(i*i)
problem.addVariable('z', moguciZaZ)


def ogranicenje1(x, z):
    if x >= z:
        return True

def ogranicenje2(x, y, z):
    if x*2 + x*y + z <= 34:
        return True


problem.addConstraint(ogranicenje1, ['x','z'])
problem.addConstraint(ogranicenje2, ['x', 'y', 'z'])

resenja = problem.getSolutions()

for resenje in resenja:
    print("-------")
    print("X:{}, Y:{}, Z:{}".format(resenje['x'], resenje['y'], resenje['z']))
    print("-------")