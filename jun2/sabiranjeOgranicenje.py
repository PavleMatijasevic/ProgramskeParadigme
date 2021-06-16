import constraint

problem = constraint.Problem()

problem.addVariables("TE",range(1,10))
problem.addVariables("WOIGHLV",range(10))

def o(t,e,w,o,i,g,h,l,v):
    if (t*100+w*10+o)*(t*100+w*10+o) + (t+h*10+g*100+i*1000+e*10000) == e+v*10+l*100+e*1000+w*10000+t*100000:
        return True

problem.addConstraint(o, "TEWOIGHLV")
problem.addConstraint(constraint.AllDifferentConstraint())
resenja = problem.getSolutions()
for r in resenja:
    two = r['T']*100 + r['W']*10 + r['O']
    eight = r['T'] + r['H']*10 + r['G']*100 + r['I']*1000+r['E']*10000
    twelve = r['E'] + r['V']*10 + r['L']*100 + r['E']*1000 + r['W']*10000 + r['T']*100000
    print("{0:d}*{1:d}+{2:d} = {3:d}".format(two,two,eight,twelve))






