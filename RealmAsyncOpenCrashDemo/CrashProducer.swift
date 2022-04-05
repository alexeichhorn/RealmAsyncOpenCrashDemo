//
//  BugProducer.swift
//  RealmAsyncOpenCrashDemo
//
//  Created by Alexander Eichhorn on 06.04.22.
//

import Foundation
import RealmSwift

class CrashfreeHandler {
    
    func handle() async throws {
        
        let realm = try await Realm()
        
        print(realm.objects(Dog.self))
        
    }
    
}


actor CrashingHandler {
    
    func handle() async throws {
        
        let realm = try await Realm()
        
        print(realm.objects(Dog.self))
        
    }
    
}
