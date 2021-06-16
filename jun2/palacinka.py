import constraint

problem = constraint.Problem()

problem.addVariable('brasno', range(11))
problem.addVariable('plazma', range(4))
problem.addVariable('jaja', range(4))
problem.addVariable('mleko', range(6))
problem.addVariable('visnja', range(3))
problem.addVariable('nutela', range(3))

def ogranicenje_kesice(b,p,j,m,v,n):
    if b+p+j+m+v+n <= 10:
        return True
def ogranicenje_novac(b,p,j,m,v,n):
    if b*30 + p*300 + j*50 + m*170 + v*400 + n*450 <= 1170:
        return True
def ogranicenje_masti(b,p,j,m,v,n):
    if b*30 + p*10 + j*150 + m*32 + v*3 + n*15 <=500:
        return True
def ogranicenje_secer(b,p,j,m,v,n):
    if b*5 + p*30 + j*2 + m*15 + v*45 + n*68 <=150:
        return True
problem.addConstraint(ogranicenje_kesice,['brasno', 'plazma','jaja','mleko','visnja','nutela'])
problem.addConstraint(ogranicenje_masti,['brasno', 'plazma','jaja','mleko','visnja','nutela'])
problem.addConstraint(ogranicenje_novac,['brasno', 'plazma','jaja','mleko','visnja','nutela'])
problem.addConstraint(ogranicenje_secer,['brasno', 'plazma','jaja','mleko','visnja','nutela'])


max_proteina = 0
resenja = problem.getSolutions()

for r in resenja:
    if r['brasno']*20 + r['plazma']*15 + r['jaja']*70 + r['mleko']*40 +r['visnja']*23 + r['nutela']*7 >= max_proteina:
        max_proteina = r['brasno']*20 + r['plazma']*15 + r['jaja']*70 + r['mleko']*40 +r['visnja']*23 + r['nutela']*7

print(max_proteina)
