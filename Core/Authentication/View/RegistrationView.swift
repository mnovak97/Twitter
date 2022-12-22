//
//  RegistrationView.swift
//  Twitter
//
//  Created by Martin Novak on 25.06.2022..
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullName = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var authViewModel: AuthViewModel
    var body: some View {
        VStack {
            NavigationLink(destination: ProfilePhotoSelecterView(), isActive: $authViewModel.didAuthenticateUser, label: {})

            
            AuthHeaderView(titleFirst: "Get started.", titleSecond: "Create your account")
            
            VStack(spacing:40) {
                CustomTextView(imagename: "envelope", labelText: "Email", text: $email)
                
                CustomTextView(imagename: "person", labelText: "Username", text: $username)

                CustomTextView(imagename: "person", labelText: "Full name", text: $fullName)
                
                CustomTextView(imagename: "lock", labelText: "Password",isSecuredField: true, text: $password)
            }
            .padding(32)
            
            Button(action: {
                authViewModel.register(email: email, password: password, username: username, fullName: fullName)
            }) {
                Text("Sign up")
                    .frame(width:350, height: 50)
                    .foregroundColor(.white)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .font(.footnote)
                    Text("Sign in")
                        .font(.body)
                        .fontWeight(.semibold)
                }
                .foregroundColor(Color(.systemBlue))
            }
            .padding(.bottom, 32)

            
            
        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
