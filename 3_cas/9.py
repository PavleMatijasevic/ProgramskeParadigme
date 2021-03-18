import constraint

# kompanija Start

"""
ukupno radnika 250
Elixir
100e po osobi -> 150 projekat/sati mesecno -> 5e po projekat/satu
svi elixir -> 187500e
Dart
105e po osobi ->170 projekat/sati mesecno -> 6e po projekat/satu

raspoloziv budzet 26000e
raspolozivo projekat/sati mesecno 51200

kako ih obuciti da dobijemo maksimalnu dobit

"""


problem = constraint.Problem()
problem.addVariable('e', range(251))
problem.addVariable('d', range(251))

def broj_radnika(e, d):
    if e + d == 250:
        return True

def uklapanje_budzeta(e, d):
    if e*100 + d*105 <= 26000:
        return True

def uklapanje_sati(e, d):
    if e*105 + d*170 <= 51200:
        return True
    
problem.addConstraint(broj_radnika, ['e', 'd'])
problem.addConstraint(uklapanje_budzeta, ['e', 'd'])
problem.addConstraint(uklapanje_sati, ['e', 'd'])

resenja = problem.getSolutions()

broj_e = 0
broj_d = 0

for resenje in resenja:
    if resenje['e'] * 5 * 150 + resenje['d'] * 6 * 170 -(resenje['e']*100 + resenje['d']*105) > (150*5*broj_e + 170*6*broj_d)- (100*broj_e+105*broj_d):
        broj_e = resenje['e']
        broj_d = resenje['d']


print("Maksimalna dobit je:{} evra".format(170*6*broj_e + 150*5*broj_d - (100*broj_e+150*broj_d)))
print("Tako sto posaljemo {} radnika na usavrsavanje Elixir-a\na {} radnika na usavrsavanje Dart-a".format(broj_e, broj_d))



