import constraint
# Spremacica stanova
"""
Stan 1h    120ml    1000din
Kuca 1.5h  100ml    1500din
     40h   5L       maks?

"""

problem = constraint.Problem()

problem.addVariable('s', range(41))
problem.addVariable('k', range(27))

def vremensko_ogranicenje(s, k):
    if s*1 + k*1.5 <= 40:
        return True
def deterdzent_ogranicenje(s, k):
    if s*120 + k*100 <= 5000:
        return True

problem.addConstraint(vremensko_ogranicenje, ['s', 'k'])
problem.addConstraint(deterdzent_ogranicenje, ['s', 'k'])

resenja = problem.getSolutions()

stanovi = 0
kuce = 0
maks_dobit = 0

for resenje in resenja:
    if resenje['s']*1000 + resenje['k']*1500 > maks_dobit:
        stanovi =  resenje['s']
        kuce = resenje['k']
        maks_dobit = resenje['s']*1000 + resenje['k']*1500


print("Maksimalna dobit je:{}".format(maks_dobit))
print("Broj stanova koje mora da sredi je:{}, a broj kuca koje mora da sredi je:{}".format(stanovi, kuce))

