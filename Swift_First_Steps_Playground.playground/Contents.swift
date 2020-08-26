import UIKit

var str = "Hello, playground"

var comment = "Great Job!"

// Let's start by trying some expressions!

10 * 5

2 + 2

print("This should run properly")





// Declaring a Constant

let myFirstName:String = "Timirah"
//myFirstName = "Tinashe"

myFirstName
myFirstName

myFirstName


print(myFirstName)



//Declaring a Variable

var myAgeNow:Int = 23

var yourAgeNow:Int = 60

myAgeNow + yourAgeNow


//Syntax -- let/var keyword identifierName:DataType = value






//Optionals

var userName: String? = "User1"

print(userName!)


if userName != nil {
    print(userName! + " is a member")
}
  else {
    print("Guest user")
}




//Implicitly Unwrapping

var username: String! = "User1"



//Arrays

var groceryList: [String] = ["eggs", "milk"]
print(groceryList)



groceryList.append("juice")

groceryList.insert("bread", at: 2)

groceryList.count






//Functions

func nameSports() {
    
    let sport1 = "Basketball"
    let sport2 = "Baseball"
    let sport3 = "Golf"
    
    print("Signing up for \(sport1), \(sport2), and \(sport3) this year.")
}

nameSports()



//Functions with Parameters and Return Values

func createUser(name:String, age: Int){

    print("New user: \(name) vs. \(age)")
}


createUser(name: "Jane", age: 18)
createUser(name: "Keisha", age: 11)

func getSum(firstNumber: Int, secondNumber: Int) -> Int{
  
    //local parameters only
    return firstNumber + secondNumber
    
}


getSum(firstNumber: 25, secondNumber: 100)
var x = getSum(firstNumber: 10, secondNumber: 80)


x


// Guard let


//For and While Loops



//Dictionaries


