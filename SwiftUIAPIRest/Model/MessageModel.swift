//
//  MessageModel.swift
//  SwiftUIAPIRest
//
//  Created by Angelos Staboulis on 5/2/24.
//

import Foundation
struct MessageModel:Identifiable,Decodable{
    let id:Int
    let from:String
    let message:String
}
