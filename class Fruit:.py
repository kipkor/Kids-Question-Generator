class Player:
    def __init__(self,name,level):
        self.name=name
        self.level=level
    def intoduce(self):
        print(f"i am {self.name} and i am level {self.level}")

    def play(self):
        self.level +=1
player=Player("Marry", 100)
player.intoduce()
print("name:", player.name)
print("level:", player.level)
                 
         
    

    
   