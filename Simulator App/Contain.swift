//
//  Contain.swift
//  Simulator App
//
//  Created by Cameron Slaughter on 11/1/24.
//

import Foundation
import SwiftData
import PhotosUI



//yo

class SaveManager {
    
    
    func save(context: ModelContext, firstName: String, lastName: String, age: String, gender: String, role: String, career: String, bio: String) throws {
        var sim = CharacterDetails(firstName: firstName, lastName: lastName, age: age, gender: gender, role: role, career: career, bio: bio)
        print("This is the CharacterDetails before the save:\(sim)")
        context.insert(sim)
        try? context.save()
       
    }
}
