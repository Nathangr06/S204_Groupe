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
Diag = Cat2.plot.bar(edgecolor = 'black')
plt.xticks(rotation=45)
plt.title("Prix moyen par type de bien")
Diag.set_ylabel("Prix moyen en €")
plt.show()

print("Le choix d'un diagramme en bande pour ces informations \
      est pertinent ici car il permet une comparaison très compréhensible \
      entre les differentes categorie")

print()



#Corrélation entre le prix et la surface des biens (corriger calcul des coeffs)
Bien_Sans_Manoir = Bien[Bien['CATEGORIE'] != 'MANOIR']

JointureBienEspace = pandas.merge(Bien_Sans_Manoir, Espace, left_on="IDEBIEN", right_on="IDE")
JointureBienEspace = JointureBienEspace.dropna(subset=['SUPERFICIE', 'PRIX'])
correlation = JointureBienEspace['SUPERFICIE'].corr(JointureBienEspace['PRIX'])
plt.scatter(JointureBienEspace['SUPERFICIE'], JointureBienEspace['PRIX'])
print("Coefficient de corrélation entre Superficie et Prix :", correlation)

a, b = np.polyfit(JointureBienEspace['SUPERFICIE'], JointureBienEspace['PRIX'], 1)

x_values = np.linspace(JointureBienEspace['SUPERFICIE'].min(), JointureBienEspace['SUPERFICIE'].max(), 100)
y_values = a * x_values + b
plt.plot(x_values, y_values, color='red')
plt.title('Corrélation entre la Superficie et le Prix des Biens')
plt.xlabel('Superficie')
plt.ylabel('Prix')
plt.show()

print("Le choix de l'utilisation d'une droite sur un graphe de nuage de points se justifie par le fait \
       qu'il existe une très forte corrélation entre la superficie et le prix des biens on peut le constater \
       avec un coefficient de corrélation à environ 0.93. Néanmoins, cela n'est pas toujours le cas, car \
       d'autres facteurs peuvent faire bancher la balance comme la localisation la présence ou non de \
       jardin, piscine, garage etc... ")


#Diagramme en barre de la répartition des biens par ville
ville_cp = Bien['VILLE'].value_counts()
ville_cp.plot.bar(width = 0.5, edgecolor = 'black')
plt.title("Répartition des biens par ville")
plt.xticks(rotation=45)
plt.tight_layout()
plt.xlabel('Ville')
plt.ylabel('Nombre de Biens')
plt.show()

print("..")



# Visualisation : Diagrammes en barres
categorie_cp = Bien['CATEGORIE'].value_counts()
type_cp = Bien['TYPE'].value_counts()
plt.figure(figsize=(12, 6))
plt.subplot(1, 2, 1)
categorie_cp.plot.bar(color='orange')
plt.title('Répartition des Biens par Catégorie')
plt.xticks(rotation=45)
plt.xlabel('Catégorie')
plt.ylabel('Nombre de Biens')

plt.subplot(1, 2, 2)
type_cp.plot.bar()
plt.title('Répartition des Biens par Type')
plt.xticks(rotation=45)
plt.xlabel('Type')
plt.ylabel('Nombre de Biens')
plt.tight_layout()
plt.show()

