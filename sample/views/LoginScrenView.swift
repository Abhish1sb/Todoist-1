//
//  LoginScrenView.swift
//  sample
//
//  Created by Singh Bhadauria, Abhishek on 24/01/24.
//

import SwiftUI

struct LoginScrenView: View {
    @State private var loginUsername: String = ""
    @State private var loginPassword: String = ""
    var body: some View {
        ZStack{
            //background
            Color.gray
                .ignoresSafeArea()
            //Content
            VStack{
                Text("Login")
                    .font(.largeTitle)
                    .bold().foregroundStyle(Color.white)
                VStack(spacing: 10){
                    TextField("Username", text: $loginUsername)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .textInputAutocapitalization(.never)
                    SecureField("Password", text: $loginPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .textInputAutocapitalization(.never)
                    Button(action: {
                        
                    }, label: {
                        ZStack{
                            Text("Login")
                                .padding()
                                .foregroundStyle(Color.white)
                                .background(Color.blue)
                        }
                    })
                }
                .padding()
                .padding(.vertical, 40)
//                .background(Color.white)
                        
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
        }
    }
}

#Preview {
    LoginScrenView()
}
