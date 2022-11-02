//
//  RestaurantStore.swift
//  Interface-Co-Ltd
//
//  Created by 안수경 on 2022/11/03.
//

import Foundation

class RestaurantStore: ObservableObject {
    @Published var list: [Restaurant]   // binding view auto update
    
    init() {
        list = [
            Restaurant(title: "컴포즈커피 세종대점",
                       content: "와플이 맛있어요🤤",
                       location: "서울 광진구 능동로 195-16 김원관 1층",
                       phone: "02-2088-7131",
                       operatingTime:
                        """
                        월  08:00 - 23:00
                        화  08:00 - 23:00
                        수  08:00 - 23:00
                        목  08:00 - 23:00
                        금  08:00 - 23:00
                        토  08:00 - 23:00
                        일  08:00 - 23:00
                        """,
                       menu:
                        [
                            ("아메리카노", "1,500"),
                            ("카페라떼", "2,500"),
                            ("밀크티", "3,800"),
                            ("그린티라떼", "3,500"),
                            ("플레인요거트스무디", "3,500"),
                            ("허니자몽티", "3,500"),
                            ("레몬에이드", "3,500")
                        ]
                      ),
            
            Restaurant(title: "스시붐",
                       content: "따연초 맛집",
                       location: "서울 광진구 광나루로17길 14-5",
                       phone: "02-466-6077",
                       operatingTime:
                        """
                        월
                        11:30 - 20:00
                        15:00 - 16:30 브레이크타임
                        19:30 라스트오더
                        화
                        11:30 - 20:00
                        15:00 - 16:30 브레이크타임
                        19:30 라스트오더
                        수
                        11:30 - 20:00
                        15:00 - 16:30 브레이크타임
                        19:30 라스트오더
                        목
                        11:30 - 20:00
                        15:00 - 16:30 브레이크타임
                        19:30 라스트오더
                        금
                        11:30 - 20:00
                        15:00 - 16:30 브레이크타임
                        19:30 라스트오더
                        토
                        12:00 - 20:00
                        15:00 - 16:30 브레이크타임
                        19:30 라스트오더
                        일
                        정기휴무 (매주 일요일)
                        """,
                       menu:
                        [
                            ("따뜻한 연어초밥 8pcs", "12,000")
                            
                        ]
                      ),
            
            Restaurant(title: "미식반점",
                       content: "동글동글 탕후루 탕수육이 맛있는 중식당",
                       location: "서울 광진구 군자로 70 1층",
                       phone: "0507-1492-2020",
                       operatingTime:
                        """
                        월
                        11:30 - 22:00
                        15:00 - 17:00 브레이크타임
                        14:30 라스트오더
                        화
                        11:30 - 22:00
                        15:00 - 17:00 브레이크타임
                        14:30 라스트오더
                        수
                        11:30 - 22:00
                        15:00 - 17:00 브레이크타임
                        14:30 라스트오더
                        목
                        11:30 - 22:00
                        15:00 - 17:00 브레이크타임
                        14:30 라스트오더
                        금
                        11:30 - 22:00
                        15:00 - 17:00 브레이크타임
                        14:30 라스트오더
                        토
                        11:30 - 22:00
                        15:00 - 17:00 브레이크타임
                        14:30 라스트오더
                        일
                        11:30 - 22:00
                        15:00 - 17:00 브레이크타임
                        14:30 라스트오더
                        
                        - 밤9시 주문마감
                        """,
                       menu:
                        [
                            ("탕후루탕수육(소)", "15,000"),
                            ("탕후루탕수육(중)", "20,000"),
                            ("미식짜장면(1인분)", "6,500"),
                            ("미식짜장면(곱배기)", "7,500"),
                            ("해물짬뽕(1인분)", "8,000"),
                            ("해물짬뽕(곱배기)", "9,000"),
                            ("미식볶음밥(1인분)", "7,000"),
                            ("미식볶음밥(곱배기)", "8,500")
                        ]
                      )
        ]
    }
    
    func insert(title: String, content: String, location: String, phone: String, operatingTime: String, menu: Array<(String, String)>) {
        list.insert(Restaurant(title: title, content: content, location: location, phone: phone, operatingTime: operatingTime, menu: menu), at: 0)
    }
    
    func update(restaurant: Restaurant?, title: String, content: String, location: String, phone: String, operatingTime: String, menu: Array<(String, String)>) {
        guard let restaurant = restaurant else {
            return
        }
        restaurant.content = content
        restaurant.title = title
        restaurant.location = location
        restaurant.phone = phone
        restaurant.operatingTime = operatingTime
        restaurant.menu = menu
    }
    
    func delete(restaurant: Restaurant) {
        list.removeAll{ $0.id == restaurant.id }
    }
    
    func delete(set: IndexSet) {
        for index in set {
            list.remove(at: index)
        }
    }
}
