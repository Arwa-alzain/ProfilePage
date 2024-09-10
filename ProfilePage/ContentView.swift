//
//  ContentView.swift
//  ProfilePage
//
//  Created by arwa on 10/09/2024.
//


import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var email = ""
    @State private var bio = ""
    @State private var education = ""
    @State private var skill = ""
    @State private var isSignedUp = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                VStack (alignment: .leading,content: {
                    VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                        Image("Image").resizable().frame(width: 370,height: 263)
                        
                    })
                    
                    VStack (alignment: .leading, content: {
                        Text("Name")
                        TextField("Enter Name", text: $name).textFieldStyle(.roundedBorder)
                    })
                    VStack (alignment: .leading, content: {
                        Text("Email")
                        TextField("Enter Email", text: $email).textFieldStyle(.roundedBorder)
                    }).padding(.top,7)
                    VStack (alignment: .leading, content: {
                        Text("Bio")
                        TextField("Enter Bio", text: $bio).textFieldStyle(.roundedBorder)
                    }).padding(.top,7)
                    
                    VStack (alignment: .leading, content: {
                        Text("Education")
                        TextField("Enter Education", text: $education).textFieldStyle(.roundedBorder)
                    }).padding(.top,7)
                    
                    VStack (alignment: .leading, content: {
                        Text("Skill")
                        TextField("Enter Skill", text: $skill)
                            .textFieldStyle(.roundedBorder)
                    }).padding(.top,7)
                    
                }).padding()
                
                NavigationLink(
                    destination: Profile(name: $name, email: $email, bio: $bio, education: $education, skill: $skill),
                    isActive: $isSignedUp,
                    label: { EmptyView() }
                )
                
                Button(action: signUp) {
                    Text("Sign Up")
                        .frame(width: 100, height: 15)
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
    
    private func signUp() {
        // Simulate successful sign-up
        isSignedUp = true
    }
}
                        
struct ContenView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

      






