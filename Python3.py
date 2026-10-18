import csv

with open("Classeur1.csv", encoding="cp1252", newline="") as f:
     for ligne in csv.DictReader (f, delimiter=";"):
            print(ligne["Nom"], ligne["Prénom"], "à eu ", ligne ["Note"]) 