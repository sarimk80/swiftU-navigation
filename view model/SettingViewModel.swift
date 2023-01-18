//
//  SettingViewModel.swift
//  NavigationSwift
//
//  Created by sarim khan on 18/01/2023.
//

import Foundation
import Combine
import SwiftUI

enum SettingsRoute : String , Hashable{
    case profileDetail
    case addDocuments
    case contacts
    case items
    case chat
}

class SettingViewModel : ObservableObject{
    
    @Published var settingPath = NavigationPath()
  
    
    func navigate(route:SettingsRoute)  {
        settingPath.append(route)
    }
    
    func pop()  {
        settingPath.removeLast()
    }
    
}
