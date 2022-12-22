//
//  LoginView.swift
//  Twitter
//
//  Created by Martin Novak on 06.06.2022..
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var authViewModel: AuthViewModel
    var body: some View {
        VStack {
            AuthHeaderView(titleFirst: "Hello.", titleSecond: "Welcome Back")
            
            VStack(spacing:40) {
                CustomTextView(imagename: "envelope", labelText: "Email", text: $email)
                CustomTextView(imagename: "lock", labelText: "Password",isSecuredField: true, text: $password)
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
            Button(action: {
                authViewModel.login(email: email, password: password)
            }) {
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
                RegistrationView()
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
