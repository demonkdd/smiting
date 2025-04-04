//
//  ContentView.swift
//  Simulator App
//
//  Created by Hamza Crichlow on 10/8/24.
//

import SwiftUI
import PhotosUI
import SwiftData






//yo
struct ContentView: View {
    @Query var CharacterDetails: [CharacterDetails]
    
    enum Neighborhood: String {
        case RIVERBLOSSOM, OLD_TOWN, DOWNTOWN,VACATION_ISLAND, STUDIO_TOWN, MAGIC_TOWN, VERONAVILLE, STRANGE_TOWN
        var id: Self {self}
    }
    
    @State private var selectedNeighborhood: Neighborhood = .RIVERBLOSSOM
    
    @State private var showCreateNewSimSheet: Bool = false
    
    @State private var showTrackerSheet: Bool = false
    
    @State private var showViewSimsPage: Bool = false
    
    @State private var showViewFamilyPage: Bool = false
    
    
    
    
    
    
    
    
    
    var body: some View {
        NavigationStack{
            ZStack {
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack{
                    Spacer()
                    Spacer()
                    
                    Image("Logo").resizable().scaledToFit()
                    
                    Spacer()
                    Spacer()
                    
                    Button(action: { showViewSimsPage = true}){
                        Text("VIEW SIMS")
                            .foregroundStyle(Color.white)
                            .font(.system(size: 25).bold())
                        
                    }
                    .navigationDestination(isPresented: $showViewSimsPage) {
                        ViewSIms()
                    }
                    .controlSize(.large)
                    .padding()
                    .background(Color("ButtonColor"))
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .shadow(radius:1)
                    
                    
                    
                    Button(action: { showViewFamilyPage = true}){
                        Text("VIEW FAMILY")
                            .foregroundStyle(Color.white)
                            .font(.system(size: 25).bold())
                    }
                    .navigationDestination(isPresented: $showViewFamilyPage){
                        VIewFamily()
                    }
                    .controlSize(.large)
                    .padding()
                    .background(Color("ButtonColor"))
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .shadow(radius:1)
                    
                    Spacer()
                    Spacer()
                    
                    
                    
                    HStack {
                        Button("TRACKER")
                        {showTrackerSheet.toggle()}
                            .foregroundStyle(Color.white)
                            .font(.system(size: 16).bold())
                            .sheet(isPresented: $showTrackerSheet, content: {TrackerView()})
                    }
                    .controlSize(.large)
                    .padding()
                    .background(Color("ButtonColor").opacity(0.5))
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .shadow(radius:10)
                    
                    
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
                Spacer()
                Spacer()
                Spacer()
            }
        }
        
    }
}
    

#Preview {
  ContentView()
    
    
}
