//
//  TestAppApp.swift
//  TestApp
//
//  Created by Val V on 03/11/22.
//

import SwiftUI

@main
struct TestAppApp: App {
    @StateObject var Router = ViewRouter()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(Router)
        }
    }
}
