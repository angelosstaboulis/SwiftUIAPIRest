//
//  DataManager.swift
//  SwiftUIAPIRest
//
//  Created by Angelos Staboulis on 5/2/24.
//

import Foundation
final class DataManager{
    static let shared = DataManager()
    private init(){}
    func fetchMessage() async -> [MessageModel]{
        do{
            let request = URLRequest(url: URL(string:"https://hws.dev/user-messages.json")!)
            async let (data,_) = try URLSession.shared.data(for: request)
            return try await JSONDecoder().decode([MessageModel].self, from: data)
        }catch{
            return []
        }
    }
}
