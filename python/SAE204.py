import pandas
import matplotlib.pyplot as plt
import numpy as np

#Importation de la table

Bien = pandas.read_csv("BIEN_DATA_TABLE.csv")
Espace = pandas.read_csv("ESPACE_DATA_TABLE.csv")
Proprio = pandas.read_csv("PROPRIO_DATA_TABLE.csv")

#Prix moyen des bien

print("Prix moyen des biens")
print(Bien["PRIX"].mean())

#Diagramme en camambert sur le type de bien

Cat = Bien.groupby("CATEGORIE")["CATEGORIE"].count()
plt.title("Répartition des differents types de bien pour tous les propriétaires")
Cat.plot.pie(autopct = lambda z : str(round(z, 2)) + '%', pctdistance = 0.6)
plt.show()

print("Le choix d'un diagramme en camambert ici est pertinent car un diagramme \
      en camambert est très comprehensible et lisible lorsque il y a peu de differentes\
      valeurs ici le nombre de categorie n'est pas specialement élévée\
      De plus le diagramme camambert est pertinent lorsque les valeurs sont représenter\
      en % comme ici")
print()


#Diagramme en bande de la moyenne du prix par type de bien

Cat2 = Bien.groupby("CATEGORIE")["PRIX"].mean()
Diag = Cat2.plot.bar(width = 0.5, edgecolor = 'black')
plt.title("Prix moyen par type de bien")
Diag.set_ylabel("Prix moyen en €")
plt.show()

print("Le choix d'un diagramme en bande pour ces informations \
      est pertinent ici car il permet une comparaison très compréhensible \
      entre les differentes categorie")


#Faire diagramme en boite des prix des différents biens
