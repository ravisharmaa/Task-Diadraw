import Foundation

//MARK:- Question 1 : Solution to calculate area.

// Base protocol
protocol Shape {
    func area() -> Double
}


// Tried to to this but could not achieve.

//extension Array: Shape where Element: Shape {
//    func area() -> Int {
//        return self
//            .map { $0.area() }
//            .reduce(0, +)
//    }
//}

struct Triangle: Shape {
    
    let base: Double
    let height: Double
    
    func area() -> Double {
        return (base * height) / 2
    }
}

struct Rectangle: Shape {
    
    let length: Double
    let breadth: Double
    
    func area() -> Double {
        return length * breadth
    }
    
    
}

struct Square: Shape {
    
    let length: Double
    
    func area() -> Double {
        return length * length
    }
    
    
}

struct Circle: Shape {
    
    let radius: Double
    
    func area() -> Double {
        return radius * radius * Double.pi
    }
}

struct Calculator {
    func calculateAreaOf(shapes: [Shape]) -> Double {
        return shapes.map {$0.area()}.reduce(0, +)
    }
}

print(Calculator().calculateAreaOf(shapes: [Rectangle(length: 2, breadth: 2), Square(length: 2), Circle(radius: 12)]))


// MARK:- Question 2. Is Palindrome


// This is the simplest solution which could be provided.

func isPalindrome(string: String) -> Bool {
    return string.lowercased() == String(string.lowercased().reversed())
}


// The case insensitivie palindrome checker.

func isPalindromeDifferentWay(string: String) -> Bool {
    
    let stringLength = string.count
    var position = 0
    
    while position < stringLength / 2 {
        let startIndex = string.index(string.startIndex, offsetBy: position)
        let endIndex = string.index(string.endIndex, offsetBy: -position - 1)
        
        if String(string[startIndex].lowercased()) == String(string[endIndex].lowercased()) {
            position += 1
        } else {
            return false
        }
    }
    
    return true
}


print(isPalindromeDifferentWay(string: "MadAm"))
