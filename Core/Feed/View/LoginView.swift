//
//  LoginView.swift
//  Twitter
//
//  Created by Martin Novak on 06.06.2022..
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading,content:{
                HStack{Spacer()}
                Text("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            })//VSTACK
                .frame(height:260)
                .padding(.leading)
                .foregroundColor(.white)
                .background(Color(.systemBlue))
                .clipShape(CustomShape(corners: [.bottomRight]))
            
            VStack(spacing:40) {
                CustomTextView(imagename: "envelope", labelText: "Email", text: .constant(""))
                CustomTextView(imagename: "lock", labelText: "Password", text: .constant(""))
            }//VSTACK
            .padding(.horizontal, 33)
            .padding(.top,44)
            
            HStack {
                Spacer()
                NavigationLink("Forgot your password?", destination: {})
                    .foregroundColor(Color(.systemBlue))
                    .padding(.trailing,33)
                    .padding(.top)
                    .padding(.bottom)
            }//HSTACK
            Button(action: {}) {
                Text("Sign in")
                    .padding()
                    .frame(width: 350, height: 50)
                    .foregroundColor(.white)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
           Spacer()
            
            NavigationLink{
                
            } label: {
                HStack{
                   Text("Don't have an account?")
                        .foregroundColor(Color(.systemBlue))
                        .font(.footnote)
                    Text("Sign up")
                        .foregroundColor(Color(.systemBlue))
                        .font(.body)
                        .fontWeight(.semibold)
                }//HSTACK
            }
            .padding()
        }//VSTACK
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
