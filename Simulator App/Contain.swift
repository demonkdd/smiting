//
//  Contain.swift
//  Simulator App
//
//  Created by Cameron Slaughter on 11/1/24.
//

import Foundation
import SwiftData
import PhotosUI



class SaveManager {
    
    
    func save(context: ModelContext, firstName: String, lastName: String, age: String, gender: String, role: String, career: String, bio: String) throws {
        var sim = Character(firstName: firstName, lastName: lastName, age: age, gender: gender, role: role, career: career, bio: bio)
        print("This is the character before the save:\(sim)")
        context.insert(sim)
        try? context.save()
       
    }
}
