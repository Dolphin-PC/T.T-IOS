//
//  MainView.swift
//  taxi
//
//  Created by 박찬영 on 2020/02/08.
//  Copyright © 2020 박찬영. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State var User : String
    
    var body: some View {
        Text("Hello, \(User)!")
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(User: "pcy")
    }
}
