//
//  SwiftData_ListAppApp.swift
//  SwiftData-ListApp
//
//  Created by Berkay Yaşar on 21.10.2023.
//

import SwiftUI
import SwiftData

@main
struct SwiftData_ListAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataItem.self)
    }
}
