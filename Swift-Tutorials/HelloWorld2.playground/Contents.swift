import Cocoa
import Darwin

//Create an array for 5 ints
//Find the gpa of the 5 grades
//If gpa is < 3.0....etc
//Change the gpa of the lowest grade
//If gpa is < 3.0000etc

var grades = [77,91,97,93,98];
var total :Double = 0

func barSays(totalGPA :Double) -> String{
    if((totalGPA/5) >= 3.75){
        return "Chancellors list for you!"
    }
    else if((totalGPA/5) >= 3.4 && (totalGPA/5) < 3.75){
        return "Deans list for you"
    }
    else if((totalGPA/5) >= 3.0 && (totalGPA/5) < 3.4){
        return "B's get degree!"
    }
    else{
        return "Young salad move that dope"
    }
    
}

func calculateGPA (g : inout Int ) -> Double{
    if(g >= 90){
        return 4.0
    }
    else if (g >= 80 && g < 90){
        return 3.0
    }
    else if (g >= 70 && g < 80){
        return 2.0
    }
    else if (g >= 60 && g < 70){
        return 1.0
    }
    else
    {
        return 0
    }
    
}

for index in 0..<grades.count {
    total = total + calculateGPA(g: &grades[index])
}

print("\(barSays(totalGPA: total))  With a GPA of  \(total/5)")

