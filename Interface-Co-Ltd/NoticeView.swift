//
//  NoticeView.swift
//  Interface-Co-Ltd
//
//  Created by 안수경 on 2022/11/02.
//

import SwiftUI

struct NoticeView: View {
    @EnvironmentObject var store: NoticeStore
    
    var body: some View {
        NavigationView {
            List(store.list) { notice in
                NoticeCell(notice: notice)
            }
            .listStyle(.plain)
            .navigationTitle("공지사항")
            
        }
    }
}

struct NoticeView_Previews: PreviewProvider {
    static var previews: some View {
        NoticeView()
            .environmentObject(NoticeStore())
            
    }
}

