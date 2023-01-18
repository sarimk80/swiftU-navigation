//
//  Home.swift
//  NavigationSwift
//
//  Created by sarim khan on 17/01/2023.
//

import SwiftUI

struct Home: View {
    
    @EnvironmentObject var homeViewModel : HomeNavigationViewModel
    
    var body: some View {
        
        
        
        List{
            Section("Details") {
                Button {
                    homeViewModel.navigate(route: HomeRoute.detail_1)
                } label: {
                    HStack{
                        Text("Detail 1")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                }
                .buttonStyle(.plain)

                
                Button {
                    homeViewModel.navigate(route: HomeRoute.detail_2)
                } label: {
                    HStack{
                        Text("Detail 2")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    
                }
                .buttonStyle(.plain)
            }
            Section("Filter") {
                Button {
                    homeViewModel.navigate(route: HomeRoute.search)
                } label: {
                    HStack{
                        Text("Search")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    
                }
                .buttonStyle(.plain)
                Button {
                    homeViewModel.navigate(route: HomeRoute.filter)
                } label: {
                    HStack{
                        Text("Filter")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    
                }
                .buttonStyle(.plain)
            }
        }
        .navigationTitle("Home")
        .toolbar {
            ToolbarItem {
                Image(systemName: "person.circle")
                
            }
        }
        

       
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
            Home()
        
        
    }
}
