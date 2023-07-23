# pip install hugchat
from hugchat import hugchat
from hugchat.login import Login


class Narrator():

    def get_description_lieu(self, lieu):
        # login avec le compte Hugging Face
        sign = Login("m4ryre4d@gmail.com", "q63JZ:_U$F?BXr@")
        cookies = sign.login()
        chatbot = hugchat.ChatBot(cookies=cookies.get_dict())
        
        prompt_template = ("""
                            You are the narrator of an old school RPG game. The player enters a new area and meets an enemy.
                            As the narrator, you describe the area and the situation in a maximum of 50 words.
                            You don't do anython else. You DON'T give options or choices to the player. 
                            You narrate in the style of classical fantasy RPG games.
                        """)
        
        prompt_addition = f" The new area is {lieu}."
        actual_prompt = prompt_template + prompt_addition

        return chatbot.chat(actual_prompt)
    

    def get_description_rencontre(self, enemy):
        # login avec le compte Hugging Face
        sign = Login("m4ryre4d@gmail.com", "q63JZ:_U$F?BXr@")
        cookies = sign.login()
        chatbot = hugchat.ChatBot(cookies=cookies.get_dict())
        
        prompt_template = ("""
                            You are the narrator of an old school RPG game. The player meets an enemy.
                            As the narrator, you describe the enemy and the situation in a maximum of 50 words.
                            You don't do anython else. You DON'T give options or choices to the player. 
                            You narrate in the style of classical fantasy RPG games.
                        """)
        
        prompt_addition = f" The new area is {enemy}."
        actual_prompt = prompt_template + prompt_addition

        return chatbot.chat(actual_prompt)
    




    def get_description_de_stephanoide(self, nom ):
        # login avec le compte Hugging Face
        sign = Login("m4ryre4d@gmail.com", "q63JZ:_U$F?BXr@")
        cookies = sign.login()
        chatbot = hugchat.ChatBot(cookies=cookies.get_dict())

        prompt_template = ("""
                    You are the narrator of an old school RPG game. The player meets the most terrifying final boss ever.
                    As the narrator, you describe the enemy and the situation in a maximum of 30 words.
                    You don't do anything else. You DON'T give options or choices to the player. 
                    You narrate in the style of classical fantasy RPG games.
                """)
        prompt_addition = f" The name of the final boss is {nom}. He is wearing a leather jacket"
        actual_prompt = prompt_template + prompt_addition

        return chatbot.chat(actual_prompt)



# narrator = Narrator()
# print(narrator.get_description("a forest", "a dragon"))

