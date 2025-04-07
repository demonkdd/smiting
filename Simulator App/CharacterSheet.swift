//
//  CharacterSheet.swift
//  Simulator App
//
//  Created by Cameron Slaughter on 11/26/24.
//

import SwiftUI
import SwiftData
import PhotosUI

//fetchdescriptor hacking with swift






struct CharacterSheet: View {
    @Environment(\.modelContext) private var context
    //query was here
    var CharacterDetails: CharacterDetails
    
var body: some View {
        ZStack {
            
//            let characterDetails = CharacterSheet.CharacterDetails() { CharacterDetails.self; in
                VStack {
                    Text("\(CharacterDetails.firstName)")
                    Text("\(CharacterDetails.lastName)")
                    Text("\(CharacterDetails.age)")
                    Text("\(CharacterDetails.gender)")
                    Text("\(CharacterDetails.role)")
                    Text("\(CharacterDetails.career)")
                    Text("\(CharacterDetails.bio)")
                }
            }
           
        }
        
        
    }




#Preview {
    CharacterSheet(CharacterDetails: CharacterDetails(firstName: "test", lastName: "test", age: "1", gender: "test", role: "test", career: "test", bio: "test"))
       // .modelContainer(for: CharacterDetails.self, inMemory: true)
}


