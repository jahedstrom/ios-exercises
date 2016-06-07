import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    return "My favorite cheese is " + cheese + "."
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

// changed to var so we can add things..
var numberArray = [1, 2, 3, 4]
// Add 5 to this array
// WORK HERE
numberArray.append(5)

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
//if numberDictionary.updateValue("five", forKey: 5) == nil {
//    numberDictionary
//}

numberDictionary[5] = "five"

numberDictionary

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE
for i in 1...10 {
    print(i)
}

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE
for j in 1..<11 {
    print(j)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let mentor = [
    "name": "Matthew Mentor",
    "rank": "captain",
    "information": "iOS guru",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard, mentor]

func favoriteDrinksArrayForCharacters(characters:[[String : String]]) -> [String] {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    var drinks = [String]()
    for character in characters {
        if let drinkType = character["favorite drink"] {
            // check for dupes..
            if !drinks.contains(drinkType) {
            drinks.append(drinkType)
            }
        }
            }
    return drinks
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)


/*

Optionals

*/

func emailFromUserDict(userDict : [String : String]) -> String {
    // Return the user's email address from userDict, or return "" if they don't have one
    
    // WORK HERE
    var email = ""
    // so if let assigns and unwraps the optional, but if let email = ... doesn't work without intermediate variable?
    if let emailOpt = userDict["email"] {
        email = emailOpt
    }
    return email
}


let mostafaElSayedUser = ["name" : "Mostafa A. El-Sayed", "occupation" : "Chemical Physicist", "email" : "mael-sayed@gatech.edu", "awards" : "Langmuir Award in Chemical Physics, Arabian Nobel Prize, Ahmed Zewail prize, The Class of 1943 Distinguished Professor, 2007 US National Medal of Science", "birthday" : "8 May 1933"]

let marjorieBrowneUser = ["name" : "Marjorie Lee Browne", "occupation" : "Mathematician", "birthday" : "September 9, 1914"]


// If your emailFromUserDict function is implemented correctly, both of these should output "true":

emailFromUserDict(mostafaElSayedUser) == "mael-sayed@gatech.edu"
emailFromUserDict(marjorieBrowneUser) == ""

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in
func arrayToString(inputArray : [String]) -> String {
//    var output = ""
//    var i = 1
//    for item in inputArray {
//        if i < inputArray.count {
//            output += item + ";"
//            i += 1
//        } else {
//            output += item
//        }
//    }
//    another way to do it... skip the if/else
//    output.removeAtIndex(output.endIndex.predecessor())
    
//     an even simpler way..
    let output = strings.joinWithSeparator(";")

    return output
}

let expectedOutput = "milk;eggs;bread;challah"
arrayToString(strings) == expectedOutput
/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE

// took me a while to figure out sorter() became sort() in Swift 2..

var cerealSorted = cerealArray.sort( { (first, second ) -> Bool in
    return first < second
})

// or using operator overloading..

var cerealSortedOverload = cerealArray.sort(<)
cerealSortedOverload

cerealSorted == cerealSortedOverload


