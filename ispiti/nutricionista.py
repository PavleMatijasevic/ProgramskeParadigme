import constraint

problem = constraint.Problem()

# mora izmedju 2500 i 3500 kalorija
# minimum 60g proteina
# kalcijum izmedju 500mg i 1000mg
# min para da ispuni sve ove uslove

problem.addVariable('ovseno', range(5))
problem.addVariable('piletina', range(4))
problem.addVariable('jaje', range(4))
problem.addVariable('mleko', range(9))
problem.addVariable('tiramisu', range(3))


def kalorije_ogranicenje(o,p,j,m,t):
    if(o*110 + p*205 + j*160 + m*160 + t*420 <= 3500 and o*110 + p*205 + j*160 + m*160 + t*420 >= 2500):
        return True
def proteini_minimum(o,p,j,m,t):
    if(o*4+p*32+j*13+m*8+t*4) >= 60:
        return True
def kalcijum_ogranicenje(o,p,j,m,t):
    if(o*2+p*12+j*285+m*22+t*22 >= 500 and o*2+p*12+j*285+m*22+t*22 <= 1000):
        return True
problem.addConstraint(kalorije_ogranicenje,['ovseno', 'piletina', 'jaje', 'mleko', 'tiramisu']) 
problem.addConstraint(proteini_minimum, ['ovseno', 'piletina', 'jaje', 'mleko', 'tiramisu'])
problem.addConstraint(kalcijum_ogranicenje, ['ovseno', 'piletina', 'jaje', 'mleko', 'tiramisu'])

resenja = problem.getSolutions()
## 80 200 20 90 190
min_cena = 99999
kalorije = 0
proteini = 0
kalcijum = 0

for resenje in resenja:
    if(resenje['ovseno']*80 + resenje['piletina']*200+ resenje['jaje']*20 + resenje['mleko']*90 + resenje['tiramisu']*190) < min_cena:
        min_cena = resenje['ovseno']*80 + resenje['piletina']*200 + resenje['jaje']*20+resenje['mleko']*90 + resenje['tiramisu']*190
        kalorije = resenje['ovseno']*110 + resenje['piletina']*205 + resenje['jaje']*160+resenje['mleko']*160 + resenje['tiramisu']*420
        proteini = resenje['ovseno']*4 + resenje['piletina']*32 + resenje['jaje']*13+resenje['mleko']*8 + resenje['tiramisu']*4
        kalcijum = resenje['ovseno']*2 + resenje['piletina']*12 + resenje['jaje']*285+resenje['mleko']*22 + resenje['tiramisu']*22

print("Najbolja kombinacija: ", min_cena, " dinara, ",kalorije," kalorija")
print("Proteina: ", proteini, ", kalcijuma: ", kalcijum)
