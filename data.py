from connexion import Connexion
import random

class Data:
    def __init__(self):
        self.cursor = Connexion.se_connecter()

    
    def get_random_treasure(self):

        
        self.cursor.execute("SELECT * FROM tresors")
        tresors = []
        for tresor in self.cursor.fetchall():
            tresors.append(tresor)
        
        return random.choice(tresors)
        


    def get_random_evenement(self):

        self.cursor.execute("SELECT * FROM evenements_magiques")
        evenements = []
        for evenement in self.cursor.fetchall():
            evenements.append(evenement)
        self.cursor.execute("SELECT * FROM evenements_malveillants")
        for evenement in self.cursor.fetchall():
            evenements.append(evenement)
        event = random.choice(evenements)

        return event


    def get_random_character(self):

        self.cursor.execute("SELECT * FROM characters")
        characters = []
        for char in self.cursor.fetchall():
            characters.append(char)
        
        enemy_stats = random.choice(characters)
        enemy_role = enemy_stats[1]
        enemy_health = enemy_stats[2]
        enemy_damage = enemy_stats[3]

        return enemy_role, enemy_health, enemy_damage



    def get_parameters_for_player(self, role):

        self.cursor.execute(f"SELECT * FROM characters WHERE role = '{role}'")
        stats = self.cursor.fetchone()
        health = stats[2]
        attack = stats[3]

        return health, attack



    def get_random_stephanoide(self):

        self.cursor.execute("SELECT * FROM stephanoide")
        stephanoide = []
        for steph in self.cursor.fetchall():
            stephanoide.append(steph)
        random_steph = random.choice(stephanoide)
        return random_steph[1]




# data = Data()
# print(data.get_random_treasure())
# print(data.get_random_evenement())
# print(data.get_random_character())
# print( data.get_random_stephanoide())
# from character import Character
# data = Data()
# enemy_role, enemy_health, enemy_damage = data.get_random_character()
# enemy = Character(enemy_role, enemy_health, enemy_damage)

# print(f"Vous rencontrez un {enemy.get_role()}")







            