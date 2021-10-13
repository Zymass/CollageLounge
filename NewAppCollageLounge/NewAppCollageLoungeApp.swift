//
//  NewAppCollageLoungeApp.swift
//  NewAppCollageLounge
//
//  Created by Feduk on 29.09.2021.
//

import SwiftUI
import Firebase

@main
struct NewAppCollageLoungeApp: App {
    @UIApplicationDelegateAdaptor(Delegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class Delegate : NSObject,UIApplicationDelegate{

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

        FirebaseApp.configure()
        return true
    }
}
