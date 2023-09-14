//
//  Person.swift
//  HWKurylenka_20_TableBarApp
//
//

import Foundation

func main() {
    struct Person {
        var firstName: String
        var lastName: String
        var email: String
        var phoneNumber: String
    }
    
    var firstNames = ["John", "Alice", "Bob", "Eva"]
    var lastNames = ["Red", "White", "Grey", "Black"]
    var emails = ["xxx@ex.com", "yyy@ex.com", "zzz@ex.com", "eee@ex.com"]
    var phoneNumbers = ["123-456-789", "111-222-333", "555-666-777", "999-888-777"]
    
    /// Функция для генерации экземпляра Person с уникальными данными
    func generateUniquePerson() -> Person? {
        guard !firstNames.isEmpty, !lastNames.isEmpty, !emails.isEmpty, !phoneNumbers.isEmpty else {
            return nil // Если массивы исчерпаны, возвращаем nil
        }
        
        let randomFirstNameIndex = Int.random(in: 0..<firstNames.count)
        let randomLastNameIndex = Int.random(in: 0..<lastNames.count)
        let randomEmailIndex = Int.random(in: 0..<emails.count)
        let randomPhoneNumberIndex = Int.random(in: 0..<phoneNumbers.count)
        
        let firstName = firstNames.remove(at: randomFirstNameIndex)
        let lastName = lastNames.remove(at: randomLastNameIndex)
        let email = emails.remove(at: randomEmailIndex)
        let phoneNumber = phoneNumbers.remove(at: randomPhoneNumberIndex)
        
        return Person(firstName: firstName, lastName: lastName, email: email, phoneNumber: phoneNumber)
    }
    
    // Генерация экземпляров Person с уникальными данными
    var people: [Person] = []
    
    while let person = generateUniquePerson() {
        people.append(person)
    }
}


