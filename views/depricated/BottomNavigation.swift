//
//  BottomNavigation.swift
//  NavigationSwift
//
//  Created by sarim khan on 12/01/2023.
//

import SwiftUI

struct BottomNavigation: View {
   
    var body: some View {
        VStack{
            TabView {
                Transaction()
                    .tabItem {
                        Label("Cards", systemImage: "creditcard.fill")
                        
                    }
                
                Invoice()
                
                    .tabItem {
                        Label("Invoice", systemImage: "chart.bar.doc.horizontal")
                        
                    }
                Bills()
                    .tabItem {
                        Label("Bills", systemImage: "banknote.fill")
                        
                    }
                More()
                    .tabItem {
                        Label("More", systemImage: "text.justify")
                        
                    }
            }
        }
        .navigationBarBackButtonHidden(true)
        //        .navigationTitle("Transaction")
        //        .navigationBarTitleDisplayMode(.inline)
        //        .toolbarBackground(.white,for: .navigationBar)
        //        .toolbarBackground(.visible,for: .navigationBar)
        //        .toolbar {
        //            ToolbarItem {
        //                Image(systemName: "square.and.pencil")
        //            }
        //            ToolbarItem(placement:.navigationBarLeading) {
        //                Image(systemName: "magnifyingglass")
        //            }
        //        }
        
    }
}

struct BottomNavigation_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack(){
            BottomNavigation()
        }
        
    }
}
