class Character:

    def __init__(self, role, health, damage):
        self.__role = role
        self.__health = health
        self.__damage = damage

    def get_role(self):
        return self.__role
    
    def get_health(self):
        return self.__health
    
    def get_damage(self):
        return self.__damage
    
    def set_health(self, health):
        self.__health = health




class Player(Character):

    def __init__(self, name, role, health, damage):
        self.__name = name
        self.__role = role
        self.__health = health * 2
        self.__damage = damage * 2

    def __str__(self):
        return f"Player {self.__name} has {self.__health} health and {self.__damage} damage"

    def get_name(self):
        return self.__name
    
    def get_role(self):
        return self.__role
    
    def get_health(self):
        return self.__health
    
    def get_damage(self):
        return self.__damage
    
    def set_health(self, health):
        self.__health = health

    def set_damage(self, damage):
        self.__damage = damage





