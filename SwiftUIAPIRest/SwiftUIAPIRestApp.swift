//
//  SwiftUIAPIRestApp.swift
//  SwiftUIAPIRest
//
//  Created by Angelos Staboulis on 5/2/24.
//

import SwiftUI

@main
struct SwiftUIAPIRestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(model: .init(id: 0, from: "", message: ""))
        }
    }
}
