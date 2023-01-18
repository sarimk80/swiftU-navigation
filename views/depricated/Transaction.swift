//
//  Transaction.swift
//  NavigationSwift
//
//  Created by sarim khan on 12/01/2023.
//

import SwiftUI

struct Transaction: View {
    var body: some View {
            VStack {
                List(0 ..< 15){_ in
                    Text("Transaction")
                        .fontWeight(.light)
                        .font(.title3)
                }
                .listStyle(.automatic)
                
                
            }
            
            
        
        
        
        
    }
}

struct Transaction_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            Transaction()
        }
        
    }
}
