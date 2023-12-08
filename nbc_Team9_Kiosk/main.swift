//
//  main.swift
//  nbc_Team9_Kiosk
//
//  Created by t2023-m0035 on 12/6/23.
//

import Foundation

class Main {
    let cart = Cart()
    
    func kiosk() {
        while true {
            print("[ SHAKESHACK MENU ]")
            print("1. Burgers         | 앵거스 비프 통살을 다져만든 버거")
            print("2. Frozen Custard  | 매장에서 신선하게 만드는 아이스크림")
            print("3. Drinks          | 매장에서 직접 만드는 음료")
            print("4. Beer            | 뉴욕 브루클린 브루어리에서 양조한 맥주")
            print("0. 종료             | 프로그램 종료")
            if let input = readLine() {
                switch input {
                    case "1",
                    "2",
                    "3",
                    "4":
                        let menu = Menu(cart: cart)
                        menu.showDetailMenu(mainInstance: self, input)
                case "5":
                    cart.displayCart()
//                case "6":
//                    TODO: main에서는 product 프로퍼티로 보낼 수 있는 값이 없습니다ㅠㅠ
//                    cart.removeProduct(product: ??)
                case "0":
                    print("프로그램을 종료합니다")
                    exit(0)
                default:
                    print("잘못된 입력입니다. 다시 입력해주세요.")
                }
            }
        }
    }
}

let main = Main()
main.kiosk()
