//
//  CardViewModel.swift
//  NavigationSwift
//
//  Created by sarim khan on 18/01/2023.
//

import Foundation
import Combine
import SwiftUI

enum CardRoute : String , Hashable {
    case addCard
    case transactionDetail
    case filter
    case search
}

class CardViewModel : ObservableObject{
    
    @Published var cardPath = NavigationPath()
   
    
    func navigate(route:CardRoute)  {
        cardPath.append(route)
    }
    
    func pop()  {
        cardPath.removeLast()
    }
    
}
