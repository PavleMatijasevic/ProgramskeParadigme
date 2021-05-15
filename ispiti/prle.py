import constraint

problem = constraint.Problem()

problem.addVariable('rucna_bomba_m_84', range(5))
problem.addVariable('rucna_bomba_m_75', range(7))
problem.addVariable('rucna_sok_bomba_p_98', range(11))
problem.addVariable('protivtenkovska_mina_tma_4', range(3))
problem.addVariable('protivtenkovska_mina_tmrp_6', range(2))



def ogranicenje_masa(p, d, t, c, i):
    if p*480 + d*355 + t*160 + c*30 + i*72 < 20000:
        return True
    else:
        return False

def ogranicenje_zapremina(p, d, t, c, i):
    if p*69 + d*(50.73) + t*4 + c*3135 + i*3828 < 50000:
        return True
    else:
        return False

def ogranicenje_novca(p ,d, t, c, i):
    if p*1000 + d*2500 + t*800 + c*7000 + i*10000 < 17000:
        return True
    else:
        return False

problem.addConstraint(ogranicenje_masa, ['rucna_bomba_m_84','rucna_bomba_m_75', 'rucna_sok_bomba_p_98', 'protivtenkovska_mina_tma_4', 'protivtenkovska_mina_tmrp_6'])
problem.addConstraint(ogranicenje_zapremina, ['rucna_bomba_m_84','rucna_bomba_m_75', 'rucna_sok_bomba_p_98', 'protivtenkovska_mina_tma_4', 'protivtenkovska_mina_tmrp_6'])
problem.addConstraint(ogranicenje_novca, ['rucna_bomba_m_84','rucna_bomba_m_75', 'rucna_sok_bomba_p_98', 'protivtenkovska_mina_tma_4', 'protivtenkovska_mina_tmrp_6'])

resenja = problem.getSolutions()


max_razor = 0
cena = 0
masa = 0
zapremina = 0

rucna_bomba_m_84 = 0
rucna_bomba_m_75 = 0
rucna_sok_bomba_p_98 = 0
protivtenkovska_mina_tma_4 = 0
protivtenkovska_mina_tmrp_6 = 0


for resenje in resenja:
    razorna_moc = resenje['rucna_bomba_m_84']*(5.6) + resenje['rucna_bomba_m_75']*(9.9) + resenje['rucna_sok_bomba_p_98']*(2.7) + resenje['protivtenkovska_mina_tma_4']*(30.5) + resenje['protivtenkovska_mina_tmrp_6']*(45.4)
    if razorna_moc > max_razor:
        max_razor = razorna_moc
        rucna_bomba_m_84 = resenje['rucna_bomba_m_84']
        rucna_bomba_m_75 = resenje['rucna_bomba_m_75']
        rucna_sok_bomba_p_98 = resenje['rucna_sok_bomba_p_98']
        protivtenkovska_mina_tma_4 = resenje['protivtenkovska_mina_tma_4']
        protivtenkovska_mina_tmrp_6 = resenje['protivtenkovska_mina_tmrp_6']
        cena = resenje['rucna_bomba_m_84']*1000 + resenje['rucna_bomba_m_75']*2500 + resenje['rucna_sok_bomba_p_98']*800 + resenje['protivtenkovska_mina_tma_4']*7000 + resenje['protivtenkovska_mina_tmrp_6']*10000
        masa = resenje['rucna_bomba_m_84']*480 + resenje['rucna_bomba_m_75']*355 + resenje['rucna_sok_bomba_p_98']*160 + resenje['protivtenkovska_mina_tma_4']*30 + resenje['protivtenkovska_mina_tmrp_6']*72
        zapremina = resenje['rucna_bomba_m_84']*69 + resenje['rucna_bomba_m_75']*(50.73) + resenje['rucna_sok_bomba_p_98']*4 + resenje['protivtenkovska_mina_tma_4']*3135 + resenje['protivtenkovska_mina_tmrp_6']*3828


print("Najbolja kombinacija daje razornu moc: ", max_razor, " J\n", "Cena je: ", cena, "dinara\n", "Masa je: ", masa, " grama\n", "Zapremina je: ", zapremina,"cm3\n")

print("Broj 1:", rucna_bomba_m_84)
print("Broj 2:", rucna_bomba_m_75)
print("Broj 3:", rucna_sok_bomba_p_98)
print("Broj 4:", protivtenkovska_mina_tma_4)
print("Broj 5:", protivtenkovska_mina_tmrp_6)
