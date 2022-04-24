import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                MainMenuView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
        }
    }
}
