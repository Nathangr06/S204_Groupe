import pandas
import matplotlib.pyplot as plt
import numpy as np

#Importation de la table

Bien = pandas.read_csv("BIEN_DATA_TABLE.csv")
Espace = pandas.read_csv("ESPACE_DATA_TABLE.csv")
Proprio = pandas.read_csv("PROPRIO_DATA_TABLE.csv")

#Affichage de la table

print("Affichage de la table Bien")
print(Bien)
print("Affichage de la table Espace")
print(Espace)
print("Affichage de la table Proprio")
print(Proprio)

#Nombre de biens par ville

print(Bien["VILLE"].value_counts())

#Prix moyen des bien

print("Prix moyen des biens")
print(Bien["PRIX"].mean())

#Prix moyen des Villa

Nombre_de_villa = Bien.loc[Bien["CATEGORIE"] == "Villa"]
print("le prix moyen des villa est", Nombre_de_villa["PRIX"].mean())

#Diagramme en camambert sur le type de bien

print("Diagramme en camambert sur les differents types de bien")
Cat = Bien.groupby("CATEGORIE")["CATEGORIE"].count()
Cat.plot.pie(autopct = lambda z : str(round(z, 2)) + '%', pctdistance = 0.6)
plt.show()

#Diagramme en bande de la moyenne du prix pas type de bien

print("Diagramme en bande de la moyenne du prix par type de bien")
Cat2 = Bien.groupby("CATEGORIE")["PRIX"].mean()
Cat2.plot.bar(width = 0.5, edgecolor = 'black')
