# Oblik

import math

class Oblik:

    def __init__(self, boja, popuna):
        self.boja = boja
        self.popuna = popuna
 
    def get_boja(self):
        return self.boja

    def get_popuna(self):
        return self.popuna

    def set_popuna(self, popuna):
        self.popuna = popuna

class Pravougaonik(Oblik):
    def __init__(self, a, b):
     #   super().__init__(boja='Zelena')
        self.__a = a
        self.__b = b
    def obim(self):
        return 2*(self.__a + self.__b)
    def povrsina(self):
        return self.__a * self.__b

class Krug(Oblik):
    def __init__(self, r):
        self.r = r
    #    super().__init__(boja='Crvena')
    def povrsina(self):
        return math.pi * self.r ** 2
    def obim(self):
        return 2 * self.r * math.pi

figura1 = Pravougaonik(2, 5)
print("Povrsina pravougaonika je: ", figura1.povrsina())
print("Obim pravougaonika je: ", figura1.obim())
#print("Boja pravougaonika je: ", figura1.get_boja())

figura2 = Krug(5)
print("Povrsina kruga je: ", figura2.povrsina)
print("Obim kruga je: ", figura2.obim())
print("Boja kruga je: ", figura2.get_boja())
figura2.set_popuna(True)
print("Popunjenost kruga: ", figura2.get_popuna())

