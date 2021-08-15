import constraint

problem = constraint.Problem()

problem.addVariable("b",range())
problem.addVariable("c",range())
problem.addVariable("d",range())
problem.addVariable("m",range())
problem.addVariable("s",range())
problem.addVariable("z",range())



def novac_constr(b,c,d,m,s,z):
    if b*130 + c*800 + d*150 + m*370 + s*490 + z*150 <= 11800:
        return True
    else:
        return False










