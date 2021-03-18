import constraint

"""
x>= 2*w and 3+y <= z and x-11*w+y+11*z<=100
x in {1, 2, ..., 10}
y in {1, 3, 5, ..., 51}
z in {10, 20, 30, ..., 100}
w in {1, 8, 27, ..., 1000} // celi brojevi na treci

"""

problem = constraint.Problem()

problem.addVariable('x', range(1, 11))
problem.addVariable('y', range(1,52, 2))
problem.addVariable('z', range(10, 101, 10))
skupZaW = []
for i in range(1, 11):
    skupZaW.append(i*i*i)

#problem.addVariable('w', skupZaW)
# sa w onako kako je dato u zadatku nema nijednog 
# primera koji
# zadovoljava sva tri ogranicenja
problem.addVariable('w', range(1, 101))


def ogranicenje1(x, w):
    if x >= 2*w:
        return True
def ogranicenje2(y, z):
    if 3 + y <= z:
        return True
def ogranicenje3(x, y, z, w):
    if x-11*w+y+11*z <= 100:
        return True

problem.addConstraint(ogranicenje1, ['x', 'w'])
problem.addConstraint(ogranicenje2, ['y', 'z'])
problem.addConstraint(ogranicenje3, ['x','y','z','w'])        
resenja = problem.getSolutions()
for resenje in resenja:
    print("-------")
    print("X:{}, Y:{}, Z:{}, W:{}".format(resenje['x'], resenje['y'], resenje['z'], resenje['w']))
    print("-------")