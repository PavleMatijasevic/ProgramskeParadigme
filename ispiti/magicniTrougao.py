import constraint

problem = constraint.Problem()
problem.addVariables("ABCDEFGHI",range(1,10))

def ogranicenje(a,b,c,d):
    if a+b+c+d == 21:
        return True
        
problem.addConstraint(constraint.AllDifferentConstraint())

problem.addConstraint(ogranicenje,"ABDF")
problem.addConstraint(ogranicenje,"ACEI")
problem.addConstraint(ogranicenje,"FGHI")

resenja = problem.getSolutions()

for r in resenja:
    print("""{0:d}
        {1:d} {2:d}
     {3:d}       {4:d}
 {5:d}  {6:d}  {7:d} {8:d}""".format(r['A'],r['B'],r['C'],r['D'],r['E'],r['F'],r['G'],r['H'],r['I']))
