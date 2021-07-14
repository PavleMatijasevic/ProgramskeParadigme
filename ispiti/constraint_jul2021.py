import constraint

problem = constraint.Problem()


problem.addVariable('b', range(10))
problem.addVariable('c', range(15))
problem.addVariable('d', range(7))
problem.addVariable('m', range(5))
problem.addVariable('s', range(3))
problem.addVariable('z', range(9))

# 11 800

def novac_oogranicenje(b,c,d,m,s,z):
    if b*130 + c*800 + d*150 + m*370 + s*490 + z*150 < 11800:
        return True

def sinteza_proteina(b,c,d,m,s,z):
    if b*15 + c*11 + d*10 + m*22 + s*1 + z*13<=100:
        return True
        
def amino_kiseline(b,c,d,m,s,z):
    if b*33 + c*31 + d*20 + m*18 + s*21 + z*16<=200:
        return True

def sedam_pilula_ukupno(b,c,d,m,s,z):
    if b + c + d + m + s + z == 7:
        return True

problem.addConstraint(sinteza_proteina,['b','c','d','m','s','z'])
problem.addConstraint(amino_kiseline,['b','c','d','m','s','z'])
problem.addConstraint(sedam_pilula_ukupno, ['b','c','d','m','s','z'])
problem.addConstraint(novac_oogranicenje, ['b','c','d','m','s','z'])


resenja = problem.getSolutions()
max_hemoglobin = 0

for r in resenja:
    if r['b']*92.5 + r['c']*155.5 + r['d']*79.6 + r['m']*156.2 + r['s']*413 + r['z']*137.7 > max_hemoglobin:
        max_hemoglobin = r['b']*92.5 + r['c']*155.5 + r['d']*79.6 + r['m']*156.2 + r['s']*413 + r['z']*137.7


print("{0:.2f}".format(max_hemoglobin))










