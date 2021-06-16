import constraint
 
       
problem = constraint.Problem()


problem.addVariables("TE",range(1,10))

problem.addVariables("WOIGHLV",range(10))

def o(t, e, w, o, i, g, h, l, v):
	if (t*100 + w*10 + o)*(t*100 + w*10 + o) + (e*10000 + i*1000 + g*100 + h*10 + t) == t*100000 + w*10000 + e*1000 + l*100 + v*10 + e:
		return True


problem.addConstraint(o,"TEWOIGHLV")

problem.addConstraint(constraint.AllDifferentConstraint())




resenja = problem.getSolutions()

for r in resenja:
    two = r['T']*100 + r['W']*10 + r['O']
    eight = r['E']*10000 + r['I']*1000 + r['G']*100 + r['H']*10 + r['T']
    twelve = r['T']*100000 + r['W']*10000 + r['E']*1000 + r['L']*100 + r['V']*10 + r['E']
    print( "{0:d} * {1:d} + {2:d} = {3:d}".format(two, two, eight, twelve))
