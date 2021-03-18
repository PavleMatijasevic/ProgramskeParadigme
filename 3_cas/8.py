import constraint
# pekara Kiflica
"""
hleb  10min 300g 7din
kifla 12min 120g 9din

pekara 20h  20kg
maks zarada?

maks hleba po brasnu je: 67
maks hleba po vremenu je: 120

maks kifli po brasnu je: 167
maks kifli po vremenu je: 100
 
za 100 kifli potrosimo 12kg brasna i 20 sati i  to je maks valjda?
"""

problem = constraint.Problem()

problem.addVariable('h', range(67))
problem.addVariable('k', range(101))

def brasno_ogranicenje(h, k):
    if h*300 + k*120 <= 20000:
        return True
def vreme_ogranicenje(h, k):
    if 10*h + 12*k <= 1200:
        return True

problem.addConstraint(brasno_ogranicenje, ['h', 'k'])
problem.addConstraint(vreme_ogranicenje, ['h', 'k'])

resenja = problem.getSolutions()
maks_hlebova = 0
maks_kifli = 0

for resenje in resenja:
    if 7*resenje['h'] + 9*resenje['k'] > 7*maks_hlebova + 9*maks_kifli:
        maks_hlebova = resenje['h']
        maks_kifli = resenje['k']

print("Maksimalna zarada je: {} dinara\ni to od {} hlebova i {} kifli".format(7*maks_hlebova + 9*maks_kifli, maks_hlebova, maks_kifli))    
