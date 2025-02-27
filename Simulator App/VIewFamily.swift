//
//  VIewFamily.swift
//  Simulator App
//
//  Created by Hamza Crichlow on 10/13/24.
//

import SwiftUI
import SwiftData
import PhotosUI

struct VIewFamily: View {
    
    
    
    
    enum Families: String {
        case GOTH, PLEASANT, DREAMER, BROKE, BURB, CALIENTE, JONES
        var id: Self {self}
    }
    
    @State private var selectedFamilies: Families = .GOTH
    
    
    
    var body: some View {
        
             ZStack {
                 Image("Background")
                     .resizable()
                     .edgesIgnoringSafeArea(.all)
                 
                 VStack {
                     Text("VIEW FAMILIES")
                         .font(.title)
                         .fontWeight(.bold)
                         .foregroundColor(.white)
                     
                     Spacer()
                     
                     
                     List{
                         Picker("CHOOSE A FAMILY", selection: $selectedFamilies)
                         {
                             Text("GOTH").tag(Families.GOTH)
                             Text("PLEASANT").tag(Families.PLEASANT)
                             Text("DREAMER").tag(Families.DREAMER)
                             Text("BROKE").tag(Families.BROKE)
                             Text("BURB").tag(Families.BURB)
                             Text("CALIENTE").tag(Families.CALIENTE)
                             Text("JONES").tag(Families.JONES)
                         }
                         
                     }.frame(width: 395, height: 90)
                     Spacer()
                     Spacer()
                 }
                     
                 }
             
            
                 
             }
             
         }

     
    


#Preview {
    VIewFamily()
}
