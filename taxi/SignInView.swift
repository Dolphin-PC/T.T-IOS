//
//  SignInView.swift
//  taxi
//
//  Created by 박찬영 on 2020/02/08.
//  Copyright © 2020 박찬영. All rights reserved.
//

import SwiftUI

struct SignInView: View {
    @State var email : String = ""
    @State var password : String = ""
    @State var loading = false
    @State var error = false
    
    @EnvironmentObject var session : SessionStore
    
    func SignIn(){
        loading = true
        error = false
        session.signIn(email: email, password: password){
            (result, error) in
            self.loading = false
            if error != nil {
                self.error = true
            } else{
                MainView(User: self.session.session?.email ?? "User")
            }
        }
    }
    
    func SignUp(){
        session.signUp(email: email, password: password){
            (result, error) in
            self.loading = false
            if error != nil{
                self.error = true
            } else{
                self.email = ""
                self.password = ""
            }
        }
    }
    var body: some View {
        VStack{
            
            TextField("Email",text : $email)
            SecureField("Password", text:$password)
            HStack{
                Button(action:SignIn){
                    Text("Sign In")
                }
                Button(action:SignUp){
                    Text("Sign Up")
                }
            }
        }
    }
}
