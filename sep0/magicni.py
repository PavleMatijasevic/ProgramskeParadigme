import constraint

problem = constraint.Problem()

problem.addVariable("A",range(1,10))
problem.addVariable("B",range(1,10))
problem.addVariable("C",range(1,10))
problem.addVariable("D",range(1,10))
problem.addVariable("E",range(1,10))
problem.addVariable("F",range(1,10))
problem.addVariable("G",range(1,10))
problem.addVariable("H",range(1,10))
problem.addVariable("I",range(1,10))


def ogranicenje(A,B,C,D):
    if A + B + C + D == 21:
        return True
    else:
        return False

problem.addConstraint(ogranicenje,['A','B','D','F'])      
problem.addConstraint(ogranicenje,['A','C','E','I'])
problem.addConstraint(ogranicenje,['F','G','H','I'])

problem.addConstraint(constraint.AllDifferentConstraint())

resenja = problem.getSolutions()

for r in resenja:
    print("""       {0:d}
    {1:d}    {2:d}
   {3:d}      {4:d}
  {5:d}  {6:d}  {7:d}  {8:d}\n  """.format(r['A'],r['B'],r['C'],r['D'],r['E'],r['F'],r['G'],r['H'],r['I']))



