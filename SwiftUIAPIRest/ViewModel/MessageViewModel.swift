//
//  MessageViewModel.swift
//  SwiftUIAPIRest
//
//  Created by Angelos Staboulis on 5/2/24.
//

import Foundation
class MessageViewModel:ObservableObject{
    @Published var messages = [MessageModel]()
    func fetchMessages(){
        DispatchQueue.main.async{
            Task{
                self.messages.append(contentsOf:await DataManager.shared.fetchMessage())
            }
        }
    }
}
