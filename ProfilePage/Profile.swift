//
//  Profile.swift
//  ProfilePage
//
//  Created by arwa on 10/09/2024.
//


import SwiftUI

struct Profile: View {
    @Binding var name: String
    @Binding var email: String
    @Binding var bio: String
    @Binding var education: String
    @Binding var skill: String
    var body: some View {
        
        VStack (alignment: .leading,content: {
             VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                 Image("Image").resizable().frame(width: 300,height: 200)

        })
        
            VStack (alignment: .leading, content: {
                 Text("Name")
                 TextField(name, text: $name).textFieldStyle(.roundedBorder)
                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            })
        
            VStack (alignment: .leading, content: {
                Text("Email")
                TextField(email, text: $email).textFieldStyle(.roundedBorder)
                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            }).padding(.top,7)
            
             
            VStack (alignment: .leading, content: {
                Text("Bio")
                TextField(bio, text: $bio).textFieldStyle(.roundedBorder)
                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            }).padding(.top,7)
        
            VStack (alignment: .leading, content: {
                Text("Education")
                TextField(education, text: $education).textFieldStyle(.roundedBorder)
                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            }).padding(.top,7)
        
            VStack (alignment: .leading, content: {
                Text("Skill")
                TextField(skill, text: $skill)
                    .textFieldStyle(.roundedBorder)
                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            }).padding(.top,7)
    
        }).padding()
     
        Button(action: {
               }, label: {
                   Text("Sign Up").bold().foregroundStyle(.white)
                       .padding(.all,10)
                      .padding(.horizontal,30)
                      .background(.purple)
           })
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        Profile(name: .constant(""),
                email: .constant(""),
                bio: .constant(""),
                education: .constant(""),
                skill: .constant(""))
    }
}

