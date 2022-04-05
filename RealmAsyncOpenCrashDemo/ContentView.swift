//
//  ContentView.swift
//  RealmAsyncOpenCrashDemo
//
//  Created by Alexander Eichhorn on 06.04.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 64) {
            
            Button("Crashfree async open") {
                Task {
                    try await CrashfreeHandler().handle()
                }
            }
            
            
            Button("Async open in Actor") {
                Task {
                    try await CrashingHandler().handle()
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
