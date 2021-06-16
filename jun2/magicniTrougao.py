import constraint


problem = constraint.Problem()

problem.addVariable('A',range(1,10))
problem.addVariable('B',range(1,10))
problem.addVariable('C',range(1,10))
problem.addVariable('D',range(1,10))
problem.addVariable('E',range(1,10))
problem.addVariable('F',range(1,10))
problem.addVariable('G',range(1,10))
problem.addVariable('H',range(1,10))
problem.addVariable('I',range(1,10))

"""
    A
   B C 
  D   E 
 F G H I 
"""
def ogr1(a,b,d,f):
    if a + b + d + f==21:
        return True
    
def ogr2(a,c,e,i):
    if a+c+e+i==21:
        return True
    
def ogr3(f,g,h,i):
    if f+g+h+i==21:
        return True
problem.addConstraint(ogr1,['A','B','D','F'])
problem.addConstraint(ogr2,['A','C','E','I'])
problem.addConstraint(ogr3,['F','G','H','I'])
problem.addConstraint(constraint.AllDifferentConstraint())


resenja = problem.getSolutions()
for r in resenja:
    print("""
     {0:d}
   {1:d}   {2:d}
 {3:d}       {4:d}
{5:d}  {6:d}   {7:d}   {8:d} 
    """.format(r['A'], r['B'], r['C'], r['D'], r['E'], r['F'], r['G'], r['H'], r['I']))



