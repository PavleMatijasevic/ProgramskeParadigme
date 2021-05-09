import constraint

problem = constraint.Problem()

problem.addVariable('brasno', range(11))
problem.addVariable('plazma', range(4))
problem.addVariable('jaja', range(4))
problem.addVariable('mleko', range(6))
problem.addVariable('visnja', range(3))
problem.addVariable('nutela', range(3))
def kesice_ogranicenje(b, p, j, m, v, n):
    if b+p+j+m+v+n <= 10:
        return True
def mast_ogranicenje(b, p, j, m, v, n):
    if b*30 + p*10 + j*150 + m*32 + v*3 + n*15 <= 500:
        return True
def secer_ogranicenje(b, p, j, m, v, n):
    if b*5 + p*30 + j*2 + m*15 + v*45 + n*68 <= 150:
        return True
def cena_ogranicenje(b, p, j, m, v, n):
    if b*30 + p*300 + j*50 + m*170 + v*400 + n*450 <= 1170:
        return True
def ne_moze_palacinka_bez_brasna_jaja_mleka(b, p, j, m, v, n):
    if b!= 0 and j!=0 and m!=0:
        return True

problem.addConstraint(kesice_ogranicenje,['brasno', 'plazma', 'jaja', 'mleko', 'visnja', 'nutela'])
problem.addConstraint(mast_ogranicenje, ['brasno', 'plazma', 'jaja', 'mleko', 'visnja', 'nutela'])
problem.addConstraint(secer_ogranicenje, ['brasno', 'plazma', 'jaja', 'mleko', 'visnja', 'nutela'])
problem.addConstraint(cena_ogranicenje, ['brasno', 'plazma', 'jaja', 'mleko', 'visnja', 'nutela'])
# problem.addConstraint(ne_moze_palacinka_bez_brasna_jaja_mleka, ['brasno', 'plazma', 'jaja', 'mleko', 'visnja', 'nutela'])

resenja = problem.getSolutions()
maks_protein = 0
brasno = 0
jaja = 0
mleko = 0
nutela = 0
plazma = 0
visnja = 0
secer = 0
mast = 0
dinara = 0

for resenje in resenja:
    if resenje['brasno']*20 + resenje['plazma']*15 + resenje['jaja']*70 + resenje['mleko']*40 + resenje['visnja']*23 + resenje['nutela']*7 > maks_protein:
        maks_protein = resenje['brasno']*20 + resenje['plazma']*15 + resenje['jaja']*70 + resenje['mleko']*40 + resenje['visnja']*23 + resenje['nutela']*7 
        brasno = resenje['brasno']
        plazma = resenje['plazma']
        jaja = resenje['jaja']
        mleko = resenje['mleko']
        visnja = resenje['visnja']
        nutela = resenje['nutela']
        secer = brasno*5 + plazma*30 + jaja*2 + mleko*15 + visnja*45 + nutela*68
        mast = brasno*30 + plazma*10 + jaja*150 + mleko*32 + visnja*3 + nutela*15
        dinara = brasno*30 + plazma*300 + jaja*50 + mleko*170 + visnja*400 + nutela*450

    
print("Maks proteina kojih mozemo dobiti je: ", maks_protein)
print("Secera je: ", secer, "g , a masti je : ", mast, "g")
print("Potroseno je: ", dinara, " dinara")
print("Kupovinom(kesica): ", brasno, " brasna, ", jaja, " jaja, ", mleko, " mleka, ", nutela, " nutele, ", plazma, " plazme, ", visnja, " visnji.")

