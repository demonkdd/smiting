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
    
    
    /// This is where we tell the app what to save
    /// - Parameters: The text fields where users enter data
    ///   - context:  the only time this should be called is when we're saving user data
    ///   - firstName: first name for the created sim
    ///   - lastName: last name for the created sim
    ///   - age:  age of the created sim
    ///   - gender:  gender of the created sim
    ///   - role: the role of the created sim in their family
    ///   - career: the created sims job
    ///   - bio: a brief back story for the created sim
    func save(context: ModelContext, firstName: String, lastName: String, age: String, gender: String, role: String, career: String, bio: String) throws {
        var sim = CharacterDetails(firstName: firstName, lastName: lastName, age: age, gender: gender, role: role, career: career, bio: bio)
        print("This is the CharacterDetails before the save:\(sim)")
        context.insert(sim)
        try? context.save()
       
    }
}
