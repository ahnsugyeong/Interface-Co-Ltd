//
//  MainView.swift
//  Interface-Co-Ltd
//
//  Created by 안수경 on 2022/11/02.
//

import SwiftUI

struct MainView: View {
    @State private var selectedIndex = 0
    
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            NavigationView {
                VStack {
                    NavigationLink("공지사항") {  NoticeView().environmentObject(NoticeStore())
                    }
                }
            }
            .navigationTitle("인터페이스")
            .tabItem {
                Label("메인", systemImage: "house.fill")
            }
            
            Text("Community View")
                .tabItem {
                    Label("커뮤니티", systemImage: "person.2.fill")
                }
            
            Text("Notification View")
                .tabItem {
                    Label("알림내역", systemImage: "bell.fill")
                }
            
            SettingView()
                .tabItem {
                    Label("메뉴", systemImage: "line.3.horizontal")
                }
        }
        .onChange(of: selectedIndex) { newValue in
            print(newValue)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
