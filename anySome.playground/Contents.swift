import UIKit

func returnSomeString(bool:Bool) -> any Equatable {
    if bool {
        return 12
    } else {
        return "hi"
    }
}

//some은 에러: 명확한 하나의 타입만을 리턴할수 있도록 함
func returnSomeString2(bool:Bool) -> some Equatable {
    if bool {
        return 12
    } else {
        return "hi"
    }
}


//some

protocol Printable {
    func printMessage()
}

struct Person: Printable {
    let name: String
    
    func printMessage() {
        print("안녕하세요, 저는 \(name)입니다.")
    }
}

struct Animal: Printable {
    let species: String
    
    func printMessage() {
        print("안녕하세요, 저는 \(species)입니다.")
    }
}

func printAnyProtocolValue(anyValue: any Printable) {
    anyValue.printMessage()
}

func printSomeProtocolValue(someValue: some Printable) {
    someValue.printMessage()
}

let person: Person = Person(name: "John")
let animal: Animal = Animal(species: "Dog")

printAnyProtocolValue(anyValue: person) // "안녕하세요, 저는 John입니다."
printAnyProtocolValue(anyValue: animal) // "안녕하세요, 저는 Dog입니다."

printSomeProtocolValue(someValue: person) // "안녕하세요, 저는 John입니다."

// 아래의 코드는 컴파일 에러가 발생
// printSomeProtocolValue(someValue: animal) // Error: 'Animal'은 'printable' 프로토콜을 준수하지 않습니다.

//typeCasting
class Animal2 {
    func makeSound() {
        print("동물이 소리를 내고 있습니다.")
    }
}

class Dog: Animal2 {
    override func makeSound() {
        print("강아지가 짖고 있습니다.")
    }
}

class Cat: Animal2 {
    override func makeSound() {
        print("고양이가 야옹하고 울고 있습니다.")
    }
}

let animals: [Animal2] = [Dog(), Cat()]

for animal in animals {
    animal.makeSound()
    
    // typecasting
    if let dog = animal as? Dog {
        dog.fetch()
    } else if let cat = animal as? Cat {
        cat.purr()
    }
}

extension Dog {
    func fetch() {
        print("강아지가 공을 물고 던져줍니다.")
    }
}

extension Cat {
    func purr() {
        print("고양이가 살랑살랑 소리를 내며 꼬리를 흔듭니다.")
    }
}

