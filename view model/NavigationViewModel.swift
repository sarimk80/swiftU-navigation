//
//  NavigationViewModel.swift
//  NavigationSwift
//
//  Created by sarim khan on 10/01/2023.
//

import Foundation
import Combine
import SwiftUI

enum HomeRoute : String , Hashable {
    case filter
    case search
    case detail_1
    case detail_2
    case account
}


class HomeNavigationViewModel : ObservableObject{
    
    @Published var homePath = NavigationPath()
    
    
    func navigate(route:HomeRoute)  {
        homePath.append(route)
    }
    
    func pop()  {
        homePath.removeLast()
    }
}

