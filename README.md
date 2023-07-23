# README - Darkest Night V 1.0

 

Ce référentiel contient un jeu d'aventure textuel écrit en Python. 

## Requirements

pip install hugchat 
https://pypi.org/project/hugchat/

Nous avons choisit d'utiliser l'api de Hugging face aidé par la library hugchat pour notre projet.
L'utilisation raisonable de huggingface via leur api est gratuite. Et on prefère jouer avec des outils libres.

Il vous faudra un compte HuggingFace et un mot de passe ( à entrer dans le fichier narrator.py)

## Déroulement du Jeu

1. **Création d'un Personnage Joueur**
   - Au début du jeu, on vous demandera de saisir votre nom et de choisir un rôle pour votre personnage joueur. Les rôles disponibles sont voleur, mage, guerrier et prêtre.
   - Chaque rôle a des attributs différents (santé et dégâts) qui seront sélectionnés aléatoirement à partir d'une base de données.


2. **Choix du Nombre de Tours**
   - Après avoir créé votre personnage, on vous demandera de saisir le nombre de tours que vous souhaitez jouer. Le nombre minimum de tours est de 6.


3. **Exploration des Lieux**
   - Pendant chaque tour, vous pouvez choisir l'une des quatre directions : Nord, Est, Sud ou Ouest.
   - Des événements aléatoires se produiront dans chaque lieu, notamment la découverte de trésors, la rencontre d'ennemis ou le déclenchement d'autres événements spéciaux.


4. **Combat**
   - Si vous rencontrez un ennemi, vous vous engagez dans un combat au tour par tour avec lui. Chaque personnage attaquera à tour de rôle, et le combat se poursuivra jusqu'à ce que la santé d'un personnage atteigne zéro.


5. **Gagner et Perdre**
   - Le jeu se poursuivra pendant le nombre de tours spécifié. Si vous survivez à tous les tours, vous gagnez la partie.
   - Si la santé de votre personnage tombe à zéro ou en dessous, vous perdez la partie et le jeu se terminera.



**Amusez-vous à jouer au jeu !**
