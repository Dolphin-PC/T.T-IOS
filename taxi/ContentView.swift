//
//  ContentView.swift
//  taxi
//
//  Created by 박찬영 on 2020/02/08.
//  Copyright © 2020 박찬영. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var session : SessionStore
    
    func getUser(){
        session.listen()
    }
    
    var body: some View {
        Group {
            if (session.session != nil) {
                Text("welcome back \()")
                Button(action : session.signOut){
                    Text("Sign Out")
                }
            }else{
                AuthView()
            }
        }.onAppear(perform: getUser)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(SessionStore())
    }
}
