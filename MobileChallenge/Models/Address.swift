import Foundation

class Address: Codable {
    let street: String
    let number: Int
    let neighborhood: String
    let zipcode: String
    var city: String = ""
    var complement: String?
    let state: String
    
    init(street: String, number: String, neighborhood: String, zipcode: String, state: String){
        
        self.street = street
        self.neighborhood = neighborhood
        self.zipcode = zipcode
        self.state = state
        self.number = Int(number) ?? 0
    }
}
