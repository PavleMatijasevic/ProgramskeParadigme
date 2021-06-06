import json
import sys

class Player:
	def __init__(self,dres,ime,prezime,visina,godine):
		self.dres=dres
		self.ime=ime
		self.prezime=prezime
		self.visina=visina
		self.godine=godine
		if self.visina >= 200:
			self.pozicija=5
		elif self.visina<190:
			self.pozicija=1
		else :
			self.pozicija=3
			
	def get_ime(self):
		return self.ime
	
	def get_prezime(self):
		return self.prezime
	
	def get_visina(self):
		return self.visina
	
	def get_godine(self):
		return self.godine
		
	def get_pozicija(self):
		return self.pozicija
	
	def __str__(self):
		return "ime: {}, prezime: {}, dres: {}, visina: {},godine: {}".format(self.ime,self.prezime,self.dres,self.visina,self.godine)

if __name__=="__main__":	
	if len(sys.argv) !=2:
		print(-1)
		exit()
	putanja = sys.argv[1] 
	try:	
		with open(putanja,'r') as f:
			data=json.load(f)
	except IOError as e:
		print("Ne postoji fajl")
	players=[]
	for player in data:
		players.append(Player(player['dres'],player['ime'],player['prezime'],player['visina'],player['godine']))

	godine_dato=float(input("Unesi godine: "))
	zeljena_pozicija=int(input("Unesi poziciju: "))
	max_visina = -1
	
	for player in players:
		if player.get_pozicija() == zeljena_pozicija:
			visina_igraca=player.get_visina()
			godine_igraca=player.get_godine()
			if visina_igraca>max_visina and godine_igraca<=godine_dato:
				max_visina=visina_igraca
	
	print (max_visina)