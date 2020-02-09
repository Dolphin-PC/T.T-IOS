//
//  User.swift
//  taxi
//
//  Created by 박찬영 on 2020/02/08.
//  Copyright © 2020 박찬영. All rights reserved.
//

import Foundation


class User {
    var uid: String
    var email: String?

    init(uid: String, email: String?) {
        self.uid = uid
        self.email = email
    }

}
