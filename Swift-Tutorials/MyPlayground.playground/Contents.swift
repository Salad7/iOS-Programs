//Enemy
//Ninja
//Zombie


//Parent class
//Both a ninja and a zombie can attack

class Enemy{
    init(){
        
    }
    
    func attackHuman(health : inout Int, name :String, attackPts :Int){
        health = health - 5
        print("You have been attacked by \(name) your health is now \(health)")
    }
    
}
//Ninja
//A ninja has a
class Ninja: Enemy{
    var name :String
    var attackPts :Int
    init(name :String, attackPts :Int){
        self.name = name;
        self.attackPts = attackPts;
    }
    func toString() -> String {
        return "I am a ninja"
    }
    
    override func attackHuman(health : inout Int, name :String, attackPts :Int){
        health = health - 5
        print("You have been attaaaaacked by \(name) your health is now \(health)")
    }
}
//Zombie
class Zombie: Enemy {
    var name :String
    var attackPts :Int
    init(name :String, attackPts :Int){
        self.name = name;
        self.attackPts = attackPts;
    }
    func toString() -> String {
        return "I am a monster"
    }
}
var health = 100
var z = Zombie(name: "Roderick", attackPts: 5)
var n = Ninja(name: "Chu Hei", attackPts: 10)
z.attackHuman(health: &health,name: "Roderick",attackPts: 5)
n.attackHuman(health: &health,name: "Roderick",attackPts: 5)

