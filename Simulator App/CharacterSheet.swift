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


func `let`() -> FetchDescriptor; = FetchDescriptor<Character>()

do {
  let Character = try modelContext.fetch(FetchDescriptor)
  
  for Character in Character {
      
  }
}



struct CharacterSheet: View {
    @Environment(\.modelContext) private var context
    @Query var Character: [Character]
var body: some View {
        ZStack {
         
            
           
        }
        
        
    }
}



#Preview {
    CharacterSheet()
        .modelContainer(for: Character.self, inMemory: true)
}


