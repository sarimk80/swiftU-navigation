//
//  ContentView.swift
//  NavigationSwift
//
//  Created by sarim khan on 10/01/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var homeNavigatioon : HomeNavigationViewModel = HomeNavigationViewModel()
    
    @StateObject private var cardNavigation : CardViewModel = CardViewModel()
    @StateObject private var settingNavigation : SettingViewModel = SettingViewModel()
    
    @State private var isSignIn:Bool = true
    
   
    
    var body: some View {
        TabView {
            NavigationStack(path: $homeNavigatioon.homePath)
            {
                Home()
                    .environmentObject(homeNavigatioon)
                    .navigationDestination(for: HomeRoute.self) { routes in
                        switch routes{
                        case .detail_1:
                            Text("Detail 1")
                        case .filter:
                            Text("Filter")
                        case .search:
                            Text("Search")
                        case .detail_2:
                            Text("Detail 2")
                        case .account:
                            Text("Account")
                        }
                    
                    }
                
            }
            .tabItem {
                Label("Home", systemImage: "house")
                
                
            }
            NavigationStack(path:$cardNavigation.cardPath){
                Cards()
                    .environmentObject(cardNavigation)
                    .navigationDestination(for: CardRoute.self, destination: { route in
                        switch route{
                            
                        case .search:
                            Text("Search")
                        case .addCard:
                            Text("add Card")
                        case .transactionDetail:
                            Text("Detail Page")
                        case .filter:
                            Text("Filter")
                        }
                    })
                   
            }
            
            
            .tabItem {
                Label("Transactions", systemImage: "list.bullet.rectangle.portrait")
                
            }
            NavigationStack(path: $settingNavigation.settingPath){
                Settings()
                    .environmentObject(settingNavigation)
                    .navigationDestination(for: SettingsRoute.self) { routes in
                        switch routes {
                        case .addDocuments:
                            Text("Add Documents")
                        case .profileDetail:
                            Text("Profile Detail")
                        case .contacts:
                            Text("Contacts")
                        case .items:
                            Text("Items")
                        case .chat:
                            Text("Chat")
                        }
                    }
                   
            }
            
            .tabItem {
                Label("Settings", systemImage: "line.3.horizontal")
                
            }
        }
        .sheet(isPresented: $isSignIn) {
            Button {
                isSignIn.toggle()
            } label: {
                Text("Sign in")
            }.buttonStyle(.bordered)
                .presentationDetents([.large])
                .presentationDragIndicator(.hidden)

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
            
    }
}
