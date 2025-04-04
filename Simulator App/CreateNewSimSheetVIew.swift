//
//  CreateNewSimSheetVIew.swift
//  Simulator App
//
//  Created by Hamza Crichlow on 10/8/24.
//

import SwiftUI
import PhotosUI
import SwiftData


let gradientColors: [Color] = [
    .topGradientBack,
    .bottomGradientBack
]


struct VibrantCardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 350)
            .textFieldStyle(.roundedBorder)
            .cornerRadius(4)
            .fixedSize(horizontal: true, vertical: false)
            
        
    }
}

extension View {
    func vibrantCard() -> some View {
        self.modifier(VibrantCardModifier())
    }
}

struct CreateNewSimSheetVIew: View {
    @Environment(\.modelContext) private var context
    
    
    var saveManager = SaveManager()
    
    
    //this is the code for the user input data in order as it appears on this sheet
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var age = ""
    @State private var gender = ""
    @State private var role = ""
    @State private var career = ""
    @State private var bio = ""
    @State var avatarItem: PhotosPickerItem?
    @State var avatarImage: Image?
    
    
    
    
    enum Neighborhood: String {
        case RIVERBLOSSOM, OLD_TOWN, DOWNTOWN,VACATION_ISLAND, STUDIO_TOWN, MAGIC_TOWN, VERONAVILLE, STRANGE_TOWN
        var id: Self {self}
    }
    
    @State private var selectedNeighborhood: Neighborhood = .RIVERBLOSSOM
    
    
    var body: some View {
        TabView{
        
        ZStack{
            
            
            VStack{
                //Neighborhood Picker
                VStack {
                    VStack{
                    Text("CREATE NEW SIM")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                        List{
                            Picker("NEIGHBORHOOD", selection: $selectedNeighborhood)
                            {
                                Text("RIVERBLOSSOM").tag(Neighborhood.RIVERBLOSSOM)
                                Text("OLD TOWN").tag(Neighborhood.OLD_TOWN)
                                Text("DOWNTOWN").tag(Neighborhood.DOWNTOWN)
                                Text("VACATION ISLAND").tag(Neighborhood.VACATION_ISLAND)
                                Text("STUDIO TOWN").tag(Neighborhood.STUDIO_TOWN)
                                Text("MAGIC TOWN").tag(Neighborhood.MAGIC_TOWN)
                                Text("VERONAVILLE").tag(Neighborhood.VERONAVILLE)
                                Text("STRANGE TOWN").tag(Neighborhood.STRANGE_TOWN)
                            }
                        }
                        
                    }
                }
                .frame(width: 395, height: 160)
                
                
                
                
                ZStack{
                    
                    VStack (alignment: .leading) {
                        
                        PhotosPicker("select image", selection: $avatarItem, matching: .images)
                        
                        avatarImage?
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        
                        
                        TextField("First Name", text: $firstName)
                            .vibrantCard()
                        TextField("Last Name", text: $lastName)
                            .vibrantCard()
                        TextField("Age", text: $age)
                            .vibrantCard()
                        TextField("Gender", text: $gender)
                            .vibrantCard()
                        TextField("Role", text: $role)
                            .vibrantCard()
                        TextField("Career", text: $career)
                            .vibrantCard()
                        Text("Zodiac Sign")
                        TextField("Bio", text: $bio, axis: .vertical)
                            .textFieldStyle(.roundedBorder)
                            .cornerRadius(4)
                            .frame(height: 55)
                            .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.gray))
                        Button("Save") {
                            try? saveManager.save(context: context, firstName: firstName, lastName: lastName, age: age, gender: gender, role: role, career: career, bio: bio)
                        }
                    }
                    .padding(30)
                    .onChange(of: avatarItem) { image in
                        Task {
                            if let loadedImage = try? await
                                avatarItem?.loadTransferable(type: Image.self) {
                                avatarImage = loadedImage
                            }
                            else {
                                
                                
                            }
                        }
                    }
                }
            }
        }
    }.background(Gradient(colors: gradientColors))
        .ignoresSafeArea()
        .tabViewStyle(.page)
}
    }
                      

#Preview {
    CreateNewSimSheetVIew()
        .modelContainer(for: CharacterDetails.self, inMemory: true)
}
