//
//  User.swift
//  decider1
//
//  Created by Macbook pro on 7/17/18.
//  Copyright © 2018 None. All rights reserved.
//

import Foundation
import FirebaseDatabase.FIRDataSnapshot




class User: Codable {
    
    
    
    let uid: String
    let username: String
    
    
    
    init(uid: String, username: String) {
        
        
        self.uid = uid
        self.username = username
    }
    init?(snapshot: DataSnapshot) {
        guard let dict = snapshot.value as? [String : Any],
            let username = dict["username"] as? String
            else { return nil }
        
        self.uid = snapshot.key
        self.username = username
    }
    
    private static var _current: User?
    
    static func setCurrent(_ user: User) {
        self._current = user
    }
    
    
    //    static var current: User {
    //
    //        guard let currentUser = _current else {
    //            fatalError("Error: current user doesn't exist")
    //        }
    //
    //
    //        return currentUser
    //    }
    
    
    
}



