import constraint
import sys
"""
Napisati program koji pronalazi trocifren broj ABC tako
da je kolicnik ABC/(A+B+C) minimalan i A, B, C su razliciti
brojevi
"""
problem = constraint.Problem()

problem.addVariable('A', range(1, 10))
problem.addVariable('B', range(10))
problem.addVariable('C', range(10))

problem.addConstraint(constraint.AllDifferentConstraint())
resenja = problem.getSolutions()
min_resenje = 999


for resenje in resenja:
    a = resenje['A']
    b = resenje['B']
    c = resenje['C']
    kolicnik = (100*a  + 10*b + c)/(a+b+c)
    if min_resenje > kolicnik:
        min_resenje  = kolicnik

print(min_resenje)

