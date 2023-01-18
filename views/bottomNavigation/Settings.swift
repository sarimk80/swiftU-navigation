//
//  Settings.swift
//  NavigationSwift
//
//  Created by sarim khan on 17/01/2023.
//

import SwiftUI

struct Settings: View {
    @EnvironmentObject var settingViewModel : SettingViewModel
    var body: some View {
        List{
            Section("User") {
                Text("Profile Detail")
                    .onTapGesture {
                        settingViewModel.navigate(route: SettingsRoute.profileDetail)
                    }
            }
            Section("Features") {
                Text("Contacts")
                    .onTapGesture {
                        settingViewModel.navigate(route: SettingsRoute.contacts)
                    }
                Text("Items")
                    .onTapGesture {
                        settingViewModel.navigate(route: SettingsRoute.items)
                    }
                Text("Add Documents")
                    .onTapGesture {
                        settingViewModel.navigate(route: SettingsRoute.addDocuments)
                    }
            }
            Section("Contact") {
                Text("Chat")
                    .onTapGesture {
                        settingViewModel.navigate(route: SettingsRoute.chat)
                    }
                Text("Twitter")
                Text("Facebook")
                Text("Discord")
            }
        }
        
        
        .navigationTitle("Settings")
        .toolbar {
            ToolbarItem {
                Image(systemName: "square.and.arrow.down")
                
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            Settings()
        }
       
    }
}
