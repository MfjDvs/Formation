import random

reponse = random.randint(1, 100)
essai = 0

while True:
    choix = int(input("Devine le nombre entre 1 et 100"))
    essai += 1
    
    if choix < reponse:
        print("Plus grand !")
        
    elif reponse < choix:
        print("Plus petit !")
        
    else:
        print(f"Bien jouer tu as trouvé {reponse} en {essai} fois")
        break
    