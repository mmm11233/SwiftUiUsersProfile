//
//  UsersListPage.swift
//  UserProfilePage
//
//  Created by Mariam Joglidze on 06.12.23.
//

import SwiftUI
struct User {
    let name: String
    let image: String
    let message: String
    let time: String
}

struct UsersListPage: View {
    @State var users = [
        User(name: "Francisco Miles", image: "Avatar", message: "I went there yesterday", time: "18:14"),
        User(name: "Arlene Fisher", image: "Avatar2", message: "IDK what else is there to do", time: "22:31"),
        User(name: "Darlene Hawkins", image: "Avatar3", message: "No, I can't come tomorrow.", time: "18:14"),
        User(name: "Eduardo Mckinney", image: "Avatar4", message: "Go to hell", time: "Yesterday"),
        User(name: "Aubrey Cooper", image: "Avatar5", message: "I hope it goes well.", time: "Friday"),
        User(name: "Jorge Nguyen", image: "Avatar6", message: "So, what's your plan this weekend?", time: "Thursday"),
        User(name: "Cody Cooper", image: "Avatar7", message: "What's the progress on that task?", time: "Tuesday"),
        User(name: "Kristin Pena", image: "Avatar8", message: "Yeah! You're right.", time: "7/22/20"),
        User(name: "Brandie Watson", image: "Avatar9", message: "I went there yesterday", time: "8/19/20"),
        User(name: "Stella Henry", image: "Avatar10", message: "Martinique", time: "9/15/20"),
    ]
    @State var alldeleted = false
    @State private var initialUsers: [User] = []
    
    init() {
        _initialUsers = State(initialValue: users)
    }
    
    
    var body: some View {
        NavigationView {
            VStack {
                List(users, id: \.name) { user in
                    HStack {
                        Image(user.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            Text(user.name)
                                .font(.headline)
                            Text(user.message)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .padding(.leading, 0)
                        
                        Spacer()
                        
                        Text(user.time)
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                }
                .navigationTitle("Chat")
                
                Spacer()
                Button(action: {
                    users = []
                    alldeleted = true
                }) {
                    Text("Clear all")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(8)
                        .padding(.horizontal, 78)
                        .padding(.top, 34)
                }
                
                if alldeleted {
                    VStack {
                        Spacer()
                        
                        Text("All correspondence has been deleted.")
                            .foregroundColor(.gray)
                            .padding()
                        
                        Spacer()
                        
                        Button(action: {
                            users = initialUsers
                            alldeleted = false
                        }) {
                            Text("Reset")
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.blue)
                                .cornerRadius(8)
                                .padding(.horizontal, 78)
                                .padding(.top, 34)
                        }

                    }
                }
            }
            
        }
        
    }
}

#Preview {
    UsersListPage()
}
