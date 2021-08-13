import constraint

problem = constraint.Problem()

problem.addVariable("a",range(1,10))
problem.addVariable("b",range(1,10))
problem.addVariable("c",range(1,10))
problem.addVariable("d",range(1,10))
problem.addVariable("e",range(1,10))
problem.addVariable("f",range(1,10))
problem.addVariable("g",range(1,10))
problem.addVariable("h",range(1,10))
problem.addVariable("i",range(1,10))

def ogr1(a,b,d,f):
    if a + b + d + f == 21:
        return True
    else:
        return False


problem.addConstraint(constraint.AllDifferentConstraint())
problem.addConstraint(ogr1,"abdf")
problem.addConstraint(ogr1,"acei")
problem.addConstraint(ogr1,"fghi")


resenja = problem.getSolutions()

for r in resenja:
    print ("""
	   {0:d}
	  {1:d} {2:d}
	 {3:d}   {4:d}
	{5:d} {6:d} {7:d} {8:d}
	""".format(r['a'],r['b'],r['c'],r['d'],r['e'],r['f'],r['g'],r['h'],r['i']))














