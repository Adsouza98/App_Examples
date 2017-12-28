//: Playground - noun: a place where people can play

import UIKit

//vars are reasignable
var str = "Hello, playground"

str = "Hi, playground"

//let is not reasignable
let otherStr = "Dre"



//Strings



let name = "Andre D'Souza"

print("Hello " + name) //combining strings
print("Hello \(name)") //alternatively to combine strings



//Integers



var myInt = 8

print(myInt * 2)

myInt = myInt + 1

myInt = myInt / 5

print("myInt has a value of \(myInt)") //using Integers in strings

let myAge = 19

print("my name is \(name) and I am \(myAge) years old")



//Doubles and Floats



var a: Double = 3.14 //Set to double

var b: Float = 4.98 //Set to Float

var c = 5.99 //Lets Swift decide (Double)

print(a/c)

//print(a/b) will not work as they are different types

print(Double(myInt) + a)



//Boolean



let gameOver = false

var gameOverStr = String(gameOver)



//Array


var array = [15, 25, 17, 6]

print(array[0])

array.append(1)

array.remove(at: 1)

array.sort()

print(array)

var array2 = [3.87, 7.1, 8.9]

array2.remove(at: 1)
array2.append(array2[0] * array2[1])

//let mixArray = ["Dre", 15, true]

//let stringArray = [String]()


//Dictionary

var dictionary = ["computer": "something to play PC games on", "coffee": "drink"]

print(dictionary["computer"]!) //! is used to tell xcode that that value exists

print(dictionary.count)

dictionary["pen"] = "writing utensil" //add element

dictionary.removeValue(forKey: "coffee") //remove element

print(dictionary)

var gameCharacters = [String: Double]()

gameCharacters["ghost"] = 8.7

let menu = ["pizza": 10.99, "ice cream": 4.99, "salad": 7.99]

print("The total cost of my meal is \(menu["pizza"]! + menu["ice cream"]!)")



//if statements


//Integer check
let age = 13

if (age >= 18) {
    print("you can play!")
} else {
    print("You're to young")
}


//String check
let username = "JuniorChange"

if (username == "rob") {
    print("Hi \(username) you can play")
} else {
    print("Sorry \(username) you cannot play")
}

//Boolean check
let isMale = true

if isMale {
    print("you're a male")
}



//Random Numbers


let diceRoll = arc4random_uniform(6) //Generates random number between 0-5



//Loops


//while loop

var i = 1

while (i < 10) {
    i += 1 //i++ does not work use i += 1
}


//For loop

let array3 = [8, 4, 8, 1]

for count in array3 { //count is a variable not a type
    print(count)
}


let familyMemebers = ["Andy", "Edie", "Paps", "Sully"]

for members in familyMemebers {
    print("Hey \(members)!")
}


var numbers = [7, 2, 19, 25, 16]

for (index, value) in numbers.enumerated() {
    
    numbers[index] += 1
    
}
print(numbers)


var myArray = [Double]()
myArray = [8, 7, 19, 28]

for (index, value) in myArray.enumerated() {
    myArray[index] = value / 2
}
print(myArray)



//Classes


class Ghost {
    
    var isAlive = true
    var strength = 9
    
    func kill() {
        isAlive = false
    }
    
    func isStrong()->Bool { //-> is used to specify return type
        if strength > 10 {
            return true
        } else {
            return false
        }
    }
}

var ghost = Ghost()

print(ghost.isAlive)

ghost.strength = 20

print(ghost.strength)

ghost.kill()
print(ghost.isAlive)

print(ghost.isStrong())



//Optionals


var number: Int? //? is used with variables with no value

print(number)

let userEnteredText = "3" //what if user entered "three" instead?

let userEnteredInteger = Int(userEnteredText)


if let newNum = userEnteredInteger { //this is to prevent faital error if userEnteredText is not an Int
    print(newNum * 7)
} else {
    //show error message to user
}



//Prime Number

let num = 2

var isPrime = true

if (num == 1) {
    isPrime = false
}

var count = 2

while count < num {
    
    if (num % count == 0) {
        isPrime = false
    }
    
    count += 1
}

print(isPrime)


//Table View Eg

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellContent = ["Batman", "Joker", "Gordon", "Superman"]
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellContent.count
        
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
    }
    
}



//Keyboard


/*
 override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    self.view.endEditing(true)
    
}

func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
    textField.resignFirstResponder()
    return true
}
*/


//Websites

/*
 let url = URL(string: "https://twitter.com/dsouza_andre")!
 webview.loadRequest(URLRequest(url: url))
 */

//webview.loadHTMLString("<h1>Hello there!</h>", baseURL: nil)

if let url = URL(string: "https://www.twitter.com") {
    
    let request = NSMutableURLRequest(url: url)
    
    let task = URLSession.shared.dataTask(with: request as URLRequest) {
        data, response, error in
        
        if error != nil {
            
            print(error!)
            
        } else {
            
            if let unwrappedData = data {
                
                let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                
                print(dataString!)
                
                DispatchQueue.main.sync(execute: {
                    
                    // Update UI
                })
                
            }
        }
        
    }
    
    task.resume()
}
/* Info.plist file to include non secure websites
<key>NSAppTransportSecurity</key>
<dict>
    <key>NSExceptionDomains</key>
    <dict>
        <key>weather-forecast.com</key>
    <dict>
        <key>NSTemporaryExceptionAllowsInsecureHTTPLoads</key>
            <true/>
            <key>NSIncludesSubdomains</key>
            <true/>
        </dict>
    </dict>
</dict>
*/


//Maps


let latitude: CLLocationDegrees = 40.7

let longitude: CLLocationDegrees = -73.9

let latDelta: CLLocationDegrees = 0.05

let lonDelta: CLLocationDegrees = 0.05

let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)

let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)

let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)

map.setRegion(region, animated: true)


