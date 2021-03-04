#########################################################################################
# zadatak ispisuje sve kako bi trebalo                                                  #
# ali ne prolazi na grejderu (0%) tkd je vrv neki problem u ispisu koji su oni zamislili#
#########################################################################################



#Napisati program koji za uneti broj n ispisuje sve proste brojeve od 2, n, koristeci Eratostenovo sito.
#Eratostenovo sito (takođe Eratostenovo rešeto) je algoritam koji pronalazi sve proste brojeve u rasponu od 1 do N. Osmislio ga je starogrčki naučnik i upravnik Aleksandrijske biblioteke Eratosten.
#Algoritam radi na nizu brojeva od 1 do N. Na početku, iz niza uklanja broj jedan, jer on po definiciji nije prost. Nakon toga, algoritam uzima sljedeći broj u nizu (broj 2), označava ga da je prost i iz niza uklanja sve njegove sadržioce (tj. brojeve djeljive sa 2), jer sigurno nisu prosti. Zatim se ponovo uzima sljedeći broj koji nije izbačen (broj 3) i uklanjaju se svi njegovi sadržioci. Obzirom da je broj 4 uklonjen iz niza, jer je djeljiv sa 2, algoritam će uzeti broj 5. Ovaj postupak će se ponavljati i na kraju će u nizu ostati samo prosti brojevi.
#Kada implementiramo Eratostenovo sito, dovoljno je obraditi brojeve koji su manji ili jednaki √N. Dakle, ako tražimo proste brojeve od 1 do 100, dovoljno je da iz niza izbacimo sadržioce brojeva koji su manji ili jednaki 10.

# primer n = 15
# treba vajda da ispisuje 2 3 5 7 11 13
# prvo u niz smestim sve od 2 do n
# 2 3 4 5 6 7 8 9 10 11 12 13 14 15
# j k
# 0 1 2 3 4 5 6 7  8  9 10 11 12 13
import sys
import math

def sadrzalac(n, k):
    if(n % k == 0 and n > k):
        return True
    else:
        return False


try:
    n = int(input())
except ValueError:
    sys.exit(1)
    
niz = []
for i in range(2,n):
    niz.append(i)
    

# ovde su u nizu od 2 do n
n = int(len(niz))
koren_n = int(math.sqrt(n))

i = 0
konacan = []
while i < koren_n-1: 
    konacan.clear()
    for e in range(0, i+1):
        konacan.append(niz[e])
  #  print("Niz", niz)
  #  print("Konacan", konacan)
    n = int(len(niz)) # 13
   # print("n:",n)
    for j in range(i+1, n):   # od 1 do 12(ujedno i poslednji)
    #    print("i:", i, "j:", j)
     #   print(niz[i], niz[j], niz[j] % niz[i])
        if(niz[j] % niz[i] != 0):
            k = int(niz[j])
            konacan.append(k)
       #     print("U konacan dodao:",k, " , pa je sada:",konacan)
        j+=1
    
    niz = konacan.copy()
   # print("Nova duzina niza je:", len(niz))
    i+=1

print(konacan)
