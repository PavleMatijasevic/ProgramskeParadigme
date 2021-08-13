import sys
import constraint

problem  = constraint.Problem()

problem.addVariable("t",range(1,10))
problem.addVariable("e",range(1,10))
problem.addVariable("w",range(10))
problem.addVariable("o",range(10))
problem.addVariable("i",range(10))
problem.addVariable("g",range(10))
problem.addVariable("h",range(10))
problem.addVariable("l",range(10))
problem.addVariable("v",range(10))


def ogr1(t,e,w,o,i,g,h,l,v):
    if (t*100+w*10+o)*(t*100+w*10+o) + (t+h*10+g*100+i*1000+e*10000) == e+v*10+l*100+e*1000+w*10000+t*100000:
        return True
    
problem.addConstraint(ogr1,"tewoighlv")
problem.addConstraint(constraint.AllDifferentConstraint())
resenja = problem.getSolutions()

for r in resenja:
    two = r['t']*100 + r['w']*10 + r['o']
    eight = r['t'] + r['h']*10 + r['g']*100 + r['i']*1000 + r['e']*10000
    twelve = r['e'] + r['v']*10 + r['l']*100 + r['e']*1000 + r['w']*10000 + r['t']*100000
    print("{0:d}*{1:d}+{2:d}={3:d}".format(two,two,eight,twelve))
























