//
//  ViewSIms.swift
//  Simulator App
//
//  Created by Hamza Crichlow on 10/13/24.
//

import SwiftUI
import SwiftData
import PhotosUI

struct ViewSIms: View {
    @Environment(\.modelContext) private var modelContext
    @Query var Character: [Character]
    @Environment(\.openWindow) private var openWindow
    @State private var showCharacterSheet: Bool = false
    
    enum Neighborhood: String {
        case RIVERBLOSSOM, OLD_TOWN, DOWNTOWN,VACATION_ISLAND, STUDIO_TOWN, MAGIC_TOWN, VERONAVILLE, STRANGE_TOWN
        var id: Self {self}
    }
    
    @State private var selectedNeighborhood: Neighborhood = .RIVERBLOSSOM
    
    @State private var showCreateNewSimSheet: Bool = false
    @State private var selectedCharacter: Character? = nil
    
        var body: some View {
        NavigationStack {
            
            
            
            
            ZStack {
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("VIEW SIMS")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Text("CHOOSE A NEIGHBORHOOD")
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
                        
                        
                    }.frame(width: 395, height: 90)
                    Spacer()
                    Spacer()
                    List {
                        ForEach(Character) { Character in
                            HStack{
                                Text(self.Character(from: Character))
                                
                                Text(Character.firstName)
                                Button(Character.firstName) {
                                    {showCharacterSheet.toggle()}
                                }
                            }

                            

                            //look at optionals for character button still in progress

                            if let selectedCharacter {
                                VStack {
                                    Character(Character: selectedCharacter)
                                    Button("Close") {
                                        self.selectedSim = nil
                                    }
                                }
                            }
                            
                            
                        }
                        Button("CREATE NEW SIM")
                        {showCreateNewSimSheet.toggle()}
                            .foregroundStyle(Color.white)
                            .font(.system(size: 16).bold())
                            .sheet(isPresented: $showCreateNewSimSheet, content: {
                                CreateNewSimSheetVIew()
                                
                            })
                            .controlSize(.large)
                            .padding()
                            .background(Color("ButtonColor").opacity(0.5))
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                            .shadow(radius:10)
                    }
                    
                }
                
            }
            
        }
    }
}
    

    #Preview {
        ViewSIms()
        .modelContainer(for: Character.self, inMemory: true)
    }

