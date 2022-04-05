//
//  RealmModels.swift
//  RealmAsyncOpenCrashDemo
//
//  Created by Alexander Eichhorn on 06.04.22.
//

import Foundation
import RealmSwift

class Dog: Object {
    @Persisted(primaryKey: true) var name: String
}
