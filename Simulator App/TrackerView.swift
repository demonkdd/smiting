//
//  TrackerView.swift
//  Simulator App
//
//  Created by Hamza Crichlow on 10/13/24.
//

import SwiftUI

struct TrackerView: View {
    
    @State private var trackerInput = ""

    
    var body: some View {
        TabView {
            
            
          ZStack {
                VStack {
                    Spacer()
                  Text("TRACKER")
                      .font(.title)
                      .fontWeight(.bold)
                      .foregroundColor(.white)
                
                  TextField("Track a neighborhood", text: $trackerInput)
                        .vibrantCard()
                      .padding()
                      .foregroundColor(.black)
                      .padding()
                    
                    Spacer()
                    Spacer()
                    
              }
              
            }
            
            
            
            
            
        }.background(Gradient(colors: gradientColors))
            .ignoresSafeArea()
            .tabViewStyle(.page)
           
            
            
        }
    }

    
#Preview {
    TrackerView()
}
