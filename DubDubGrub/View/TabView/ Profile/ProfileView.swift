//
//  ProfileView.swift
//  DubDubGrub
//
//  Created by Asem on 27/02/2022.
//

import SwiftUI

struct ProfileView: View {
    
    
    
    var body: some View {
        
        VStack{
            UserInfoView()
            BioView()
            Spacer()
            CreateProfileView()
                .padding()
            
            
        }
        
        .navigationTitle("Profile")
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ProfileView()
        }
        
        
    }
}

struct UserInfoView: View {
    @State private var firstName    = ""
    @State private var lastName     = ""
    @State private var companyName  = ""
    
    var body: some View {
        ZStack{
            
            Color(uiColor: .secondarySystemBackground)
                .frame(height:130)
                .cornerRadius(13)
                .padding(.horizontal)
            
            HStack(spacing: 16.0){
                
                EditImage()
                
                VStack(spacing: 1.0){
                    TextField("First name", text: $firstName) .font(.system(size: 32,weight: .bold)) .lineLimit(1) .minimumScaleFactor(0.75)
                    
                    TextField("Last name", text: $lastName) .font(.system(size: 32,weight: .bold)) .lineLimit(1) .minimumScaleFactor(0.75)
                    
                    TextField("Company name", text: $companyName)
                }
                .padding(.trailing,16)
                
            }
            .padding()
        }
    }
}

struct EditImage: View {
    var body: some View {
        ZStack{
            AvatarView(size: 84)
            Image(systemName: "square.and.pencil")
                .foregroundColor(.white)
                .offset(y:28)
        }
        .padding(.leading,12)
    }
}

struct BioView: View {
    @State private var bio = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 6.0){
            HStack{
                Text("Bio: ").font(.callout) .foregroundColor(.secondary)
                + Text("\(100-bio.count)") .bold() .font(.callout).foregroundColor(bio.count > 100 ? Color(.systemPink) : .brandPrimary)
                + Text(" Charcters Remain") .font(.callout) .foregroundColor(.secondary)
                
            }
            
            TextEditor(text: $bio)
                .frame(height:100)
                .overlay(RoundedRectangle(cornerRadius: 8) .stroke(.secondary,lineWidth: 1))
        }
        .padding(.horizontal,20)
    }
}

struct CreateProfileView: View {
    var body: some View {
        Button{
            
        }label: {
            Text("Create Profile")
                .bold()
                .foregroundColor(.white)
                .frame(width: 280, height: 44)
                .background(Color.brandPrimary)
                .cornerRadius(8)
        }
        
    }
}
