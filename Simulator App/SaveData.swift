//
//  SaveData.swift
//  Simulator App
//
//  Created by Cameron Slaughter on 10/28/24.
//

import Foundation
import SwiftData
import PhotosUI

//var SaveData: Array<Character> = []
// this tells the app what to save still need to figure out how to pull it
@Model


class Character: Identifiable {
    
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
