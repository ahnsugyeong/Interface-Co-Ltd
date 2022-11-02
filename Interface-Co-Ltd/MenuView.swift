//
//  MenuView.swift
//  Interface-Co-Ltd
//
//  Created by 안수경 on 2022/11/02.
//

import SwiftUI

struct MenuView: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("메뉴")
                    .font(.title)
                    .bold()
                    .padding(.leading, 25)
                Spacer(minLength: 0)
            }
            
            List{
                Section() {
                    Button {
                        // 알림 설정
                    } label: {
                        Text("알림 설정")
                    }.foregroundColor(.black)
                    
                    HStack {
                        Button {
                            // 화면 스타일
                        } label: {
                            Text("화면 스타일")
                        }.foregroundColor(.black)
                        
                        Spacer()
                        
                        Button {
                            // 시스템 기본값
                        } label: {
                            Text("시스템 기본값")
                        }.foregroundColor(.secondary)
                    }
                    
                    Button {
                        // 잠금 설정
                    } label: {
                        Text("잠금 설정")
                    }.foregroundColor(.black)
                } header: {
                    Text("앱 설정")
                }.listRowBackground(Color(.sRGB, red: 220.0/255.0, green: 226.0/255.0, blue: 240.0/255.0, opacity: 1.0))
                
                
                Section() {
                    Button {
                        // 내 정보 변경
                    } label: {
                        Text("내 정보 변경")
                    }.foregroundColor(.black)
                    
                    Button {
                        // 비밀번호 변경
                    } label: {
                        Text("비밀번호 변경")
                    }.foregroundColor(.black)
                } header: {
                    Text("내 정보")
                }.listRowBackground(Color(.sRGB, red: 220.0/255.0, green: 226.0/255.0, blue: 240.0/255.0, opacity: 1.0))
                
                
                Section() {
                    Button {
                        // 로그아웃
                    } label: {
                        Text("로그아웃")
                    }.foregroundColor(Color.red)
                } header: {
                    Text("계정")
                }.listRowBackground(Color(.sRGB, red: 220.0/255.0, green: 226.0/255.0, blue: 240.0/255.0, opacity: 1.0))
            }
            .scrollContentBackground(.hidden)
        }.navigationTitle("메뉴")
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
