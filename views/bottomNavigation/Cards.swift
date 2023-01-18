//
//  Cards.swift
//  NavigationSwift
//
//  Created by sarim khan on 17/01/2023.
//

import SwiftUI

struct Cards: View {
    
    @EnvironmentObject var cardViewModel : CardViewModel
    
    var body: some View {
        
        List(0..<5, id: \.self, rowContent: {_ in
            Button {
                cardViewModel.navigate(route: CardRoute.transactionDetail)
            } label: {
                VStack {
                    Text("Transactions ")
                       
                }
            }
            .buttonStyle(.plain)

            
        })
        
        
        .navigationTitle("Cards")
        .toolbar {
            ToolbarItem {
                
                Image(systemName: "magnifyingglass")
                    .onTapGesture {
                        cardViewModel.navigate(route: CardRoute.search)
                    }
                
            }
            ToolbarItem {
                Image(systemName: "plus")
                    .onTapGesture {
                        cardViewModel.navigate(route: CardRoute.addCard)
                    }
                
            }
            ToolbarItem {
                Image(systemName: "line.3.horizontal.decrease")
                    .onTapGesture {
                        cardViewModel.navigate(route: CardRoute.filter)
                    }
                
            }
        }
    }
}

struct Cards_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            Cards()
        }
        
    }
}
