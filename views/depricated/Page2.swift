//
//  Page2.swift
//  NavigationSwift
//
//  Created by sarim khan on 10/01/2023.
//

import SwiftUI

struct Page2: View {
    
    
    
    
    var body: some View {
        
        VStack {
            Button {
                
            } label: {
                Text("Intro Page")
                    .fontWeight(.bold)
                    .font(.largeTitle)
            }
            
        }
        //        .navigationDestination(for: Routes.self) { value in
        //            if(value == Routes.bottomNavigation) {
        //                BottomNavigation()
        //            }
        //
        //        }
        
    }
}

struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        Page2()
    }
}
