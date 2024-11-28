import SwiftUI

struct PersonDetailView: View {
    var person: Person
    
    var body: some View {
        
        
                Text("\(person.firstName) \(person.surname)")
                    .font(.title)
                    .bold()
                
                Text("Gender: \(person.gender)")
                Text("Age: \(person.age)")
                
                VStack() {
                    Text("Address:")
                    Text("Street: \(person.address.streetAddress)")
                    Text("City: \(person.address.city)")
                    Text("State: \(person.address.state)")
                    Text("Postal Code: \(person.address.postalCode)")
                }
                
                VStack() {
                    Text("Phone Numbers:")
                    ForEach(person.phoneNumbers, id: \.number) { phone in
                        Text("\(phone.type.capitalized): \(phone.number)")
                    }
                }
            
            
        
        .navigationTitle("\(person.firstName) \(person.surname)")
    }
}

struct PersonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailView(person: Person.samplePerson)
    }
}
