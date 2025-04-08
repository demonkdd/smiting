//
//  SaveData.swift
//  Simulator App
//
//  Created by Cameron Slaughter on 10/28/24.
//

import Foundation
import SwiftData
import PhotosUI

//var SaveData: Array<CharacterDetails> = []
// this tells the app what to save still need to figure out how to pull it
// so i changed Character -> CharacterDetails to try and make the button call the character sheet which would then call the CharacterDetails which should let us bring up the info the user inputed with out all the conflicts that were happening
//need [Character] -> [CharacterDetails] to make it easier to call for them
@Model
class CharacterDetails: Identifiable {
    
    
    /// <#Description#> This is where the character details are saved the a unique invidual character
    var Character: [CharacterDetails] = []
        
        var id: UUID = UUID()
        var firstName: String = ""
        var lastName: String = ""
        var age: String = ""
        var gender: String = ""
        var role: String = ""
        var career: String = ""
        var bio: String = ""
        @Attribute(.externalStorage) var photo: Data?
        
        init(firstName: String, lastName: String, age: String, gender: String, role: String, career: String, bio: String) {
            self.firstName = firstName
            self.lastName = lastName
            self.age = age
            self.gender = gender
            self.role = role
            self.career = career
            self.bio = bio
        }
    }

