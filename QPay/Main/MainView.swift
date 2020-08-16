//
//  MainView.swift
//  QPay
//
//  Created by Md. Yamin on 8/13/20.
//  Copyright © 2020 QPay. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var userData: UserData
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection) {
            Text("Tab view 1")
                .tabItem {
                VStack {
                    Image(systemName: "1.square.fill")
                        .imageScale(.large)
                    Text("Tab-1")
                }
            }
            .tag(0)
            
            Text("Tab view 2")
                .tabItem {
                VStack {
                    Image(systemName: "2.square.fill")
                        .imageScale(.large)
                    Text("Tab-2")
                }
            }
            .tag(1)
            
            Text("Tab view 3")
                .tabItem {
                    VStack {
                        Image(systemName: "3.square.fill")
                            .imageScale(.large)
                        Text("Tab-3")
                    }
            }
            .tag(2)
            
            Text("Tab view 4")
                .tabItem {
                    VStack {
                        Image(systemName: "4.square.fill")
                            .imageScale(.large)
                        Text("Tab-4")
                    }
            }
            .tag(3)
        }
        .onReceive(userData.$selectedTabItem.receive(on: RunLoop.main)) { value in
            self.selection = value
        }
        .accentColor(Colors.colorTheme)
        .background(Color.white)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(UserData())
    }
}
