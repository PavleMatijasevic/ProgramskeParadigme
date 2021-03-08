# Robot

class Robot:
    populacija = 0
    
    def __init__(self, ime):
        self.ime = ime
        Robot.populacija += 1
        print("Robot ", self.ime, " je kreiran!")

    def __del__(self):
        print("Robot ", self.ime, " se unistava!")
        Robot.populacija -= 1

    def oglasiSe(self):
        print("Robot ", self.ime, " se oglasava: Zdravo ja sam: ", self.ime)
    @classmethod
    def prebroj(cls):
        print("Broj robota je: ", cls.populacija)


robot1 = Robot("Pavle")
robot1.oglasiSe()
Robot.prebroj()
robot2 = Robot("Mina")
robot2.oglasiSe()
Robot.prebroj()
del robot1
Robot.prebroj()

# robot2 se na kraju programa automatski brise
