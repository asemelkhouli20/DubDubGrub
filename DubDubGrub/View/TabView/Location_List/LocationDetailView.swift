//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Asem on 27/02/2022.
//

import SwiftUI

struct LocationDetailView: View {
    let columns = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        
        VStack(spacing:16){
            Image("default-banner-asset")
                .resizable()
                .scaledToFill()
                .frame(height:120)
            HStack{
                Label("123 Main Street", systemImage: "mappin.and.ellipse")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Spacer()
            }
            .padding(.horizontal)
            
            Text("This is a test text description. This is a test text description. This is a test text description. This is a test text description.")
                .lineLimit(3)
                .minimumScaleFactor(0.75)
                .frame(height:70)
                .padding(.horizontal)
            ZStack{
                Capsule()
                    .frame(height:80)
                    .foregroundColor(Color(uiColor: .secondarySystemBackground))
                    .padding(.horizontal)
                HStack(spacing: 20.0){
                    Button(action: {}) {
                        LocationActionButton(imageName: "location.fill")
                    }
                    Button(action: {}) {
                        LocationActionButton(imageName: "network")
                    }
                    Button(action: {}) {
                        LocationActionButton(imageName: "phone.fill")
                    }
                    Button(action: {}) {
                        LocationActionButton(imageName: "person.fill.checkmark")
                    }
                }
                
            }
            .padding(.horizontal)
            
            Text("Who's Here?")
                .bold()
                .font(.title2)
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(1..<10){_ in
                        VStack{
                            AvatarView(size: 64)
                            Text("name")
                        }
                        
                    }
                }
                
            }
            
            
            
            
            Spacer()
        }
        .navigationTitle("Location Name")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    
    
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView()
            .preferredColorScheme(.dark)
        
    }
}

struct LocationActionButton: View {
    var imageName = ""
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.brandPrimary)
                .frame(width: 60, height: 60)
            Image(systemName: imageName)
                .resizable()
                .foregroundColor(.white)
                .scaledToFit()
                .frame(width: 22, height: 22)
        }
    }
}
