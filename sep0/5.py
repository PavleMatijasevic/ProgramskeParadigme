import constraint
import sys


problem = constraint.Problem()

problem.addVariable("b",range(11))
problem.addVariable("p",range(4))
problem.addVariable("j",range(4))
problem.addVariable("m",range(6))
problem.addVariable("v",range(3))
problem.addVariable("n",range(3))

# protein max
# masti do 500gr
# secer do 150gr

def masti_ogr(b,p,j,m,v,n):
    if b*30 + p*10+ 150*j + 32*m + 3*v + 15*n <= 500:
        return True

def secer_ogr(b,p,j,m,v,n):
    if b*5 + p*30 + j*2 + m*15+ v*45 + n*68 <= 150:
        return True

def kesice(b,p,j,m,v,n):
    if b + p + p + j + m + v + n <=10:
        return True

def pare(b,p,j,m,v,n):
    if b*30 + p*300 + j*50 + m*170 + v*400 + n*450 <= 1170:
        return True
    
problem.addConstraint(masti_ogr,"bpjmvn")
problem.addConstraint(secer_ogr,"bpjmvn")
problem.addConstraint(kesice,"bpjmvn")
problem.addConstraint(pare,"bpjmvn")

resenja = problem.getSolutions()

protein_max = 0


for r in resenja:
    if r['b']*20 + r['p']*15 + r['j']*70 + r['m']*40 + r['v']*23 + r['n']*7 > protein_max:
        protein_max = r['b']*20 + r['p']*15 + r['j']*70 + r['m']*40 + r['v']*23 + r['n']*7

print(protein_max)




















