//
//  ContentView.swift
//  UserProfilePage
//
//  Created by Mariam Joglidze on 06.12.23.
//

import SwiftUI

struct NameTextFieldView: View {
    @State private var name: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 11) {
            Text("Name")
                .font(.headline)
                .foregroundColor(.black)
            
            TextField("test", text: $name)
                .padding(10)
                .background(Color.white.opacity(0.1))
                .cornerRadius(6.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 6.0)
                        .stroke(Color.gray, lineWidth: 1)
                )
            
        }
        .padding(EdgeInsets(top: 5, leading: 24, bottom: 0, trailing: 24))
    }
}

struct EmailTextFieldView: View {
    @State private var email: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 11) {
            Text("Email")
                .font(.headline)
                .foregroundColor(.black)
            
            TextField("test@gmail.com", text: $email)
                .padding(10)
                .background(Color.white.opacity(0.1))
                .cornerRadius(6.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 6.0)
                        .stroke(Color.gray, lineWidth: 1)
                )
        }
        .padding(EdgeInsets(top: 5, leading: 24, bottom: 0, trailing: 24))
        
    }
}

struct PasswordTextFieldView: View {
    @State private var password: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 11) {
            Text("Pasword")
                .font(.headline)
                .foregroundColor(.black)
            
            TextField("************", text: $password)
                .padding(10)
                .background(Color.white.opacity(0.1))
                .cornerRadius(6.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 6.0)
                        .stroke(Color.gray, lineWidth: 1)
                )
        }
        .padding(EdgeInsets(top: 5, leading: 24, bottom: 0, trailing: 24))
    }
}

struct DateOfBirthTextFieldView: View {
    @State private var dateOfBirth: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 11) {
            Text("Date of Birth")
                .font(.headline)
                .foregroundColor(.black)
            
            TextField("31/02/2000", text: $dateOfBirth)
                .padding(10)
                .background(Color.white.opacity(0.1))
                .cornerRadius(6.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 6.0)
                        .stroke(Color.gray, lineWidth: 1)
                )
        }
        .padding(EdgeInsets(top: 5, leading: 24, bottom: 0, trailing: 24))
    }
}

struct CountryRegionTextFieldView: View {
    @State private var countryRegion: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 11) {
            Text("Country/Region")
                .font(.headline)
                .foregroundColor(.black)
            
            TextField("Georgia", text: $countryRegion)
                .padding(10)
                .background(Color.white.opacity(0.1))
                .cornerRadius(6.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 6.0)
                        .stroke(Color.gray, lineWidth: 1)
                )
        }
        .padding(EdgeInsets(top: 5, leading: 24, bottom: 0, trailing: 24))
    }
}

struct SaveChangesButtonView: View {
    var body: some View {
        Button(action: {
        }) {
            Text("Save Changes")
                .foregroundColor(.white)
                .font(.headline)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(8)
        }
        .padding(.horizontal, 90)
        .padding(.top, 29)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("Ellipse 2")
                    .resizable()
                    .frame(width: 165, height: 170)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 2))
                    .padding(.bottom, 20)
                NameTextFieldView()
                EmailTextFieldView()
                PasswordTextFieldView()
                DateOfBirthTextFieldView()
                CountryRegionTextFieldView()
                SaveChangesButtonView()
                
                Spacer()
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "chevron.left")
                            .imageScale(.large)
                            .foregroundColor(.black)
                    }
                }
                
                ToolbarItem(placement: .principal) {
                    Text("Edit Profile")
                        .font(.headline)
                        .foregroundColor(.black)
                }
            }
        }
    }
}



#Preview {
    ContentView()
}

