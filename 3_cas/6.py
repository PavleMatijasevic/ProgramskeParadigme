import constraint

"""
    two
+   two
=  four
"""

problem = constraint.Problem()
problem.addVariables("tf", range(1,10))
problem.addVariables("wour", range(10))

def ogranicenje(t,w,o,f,u,r):
    if 2*(t*100 + w*10 + o) == f*1000 + o*100 + u*10 + r:
        return True

problem.addConstraint(ogranicenje, "twofur")
problem.addConstraint(constraint.AllDifferentConstraint())
resenja = problem.getSolutions()

for resenje in resenja:
    print("---------")
    print(" "+str(resenje['t'])+ str(resenje['w'])+ str(resenje['o']))
    print("+"+str(resenje['t'])+ str(resenje['w'])+ str(resenje['o']))
    print("="+str(resenje['f'])+str(resenje['o'])+str(resenje['u'])+str(resenje['r']))
    print("---------")

