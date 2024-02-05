//
//  ContentView.swift
//  SwiftUIAPIRest
//
//  Created by Angelos Staboulis on 5/2/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = MessageViewModel()
    @State var model:MessageModel
    
    var body: some View {
        VStack {
            Text("ID").font(.largeTitle).frame(width:300,height:45,alignment:.leading)
             Text(String(model.id)).frame(width:300,height:45,alignment:.leading)
             Text("From").font(.largeTitle).frame(width:300,height:45,alignment:.leading)
             Text(model.from).frame(width:300,height:45,alignment:.leading)
             Text("Message").font(.largeTitle).frame(width:300,height:45,alignment:.leading)
             Text(model.message)
                .frame(width:300,height:80,alignment:.leading)
        }
        .padding()
        .onAppear(perform: {
            viewModel.fetchMessages()
        })
        .onReceive(viewModel.messages.publisher, perform: { value in
            model = value
        })
    }
}

#Preview {
    ContentView(model: .init(id: 0, from: "", message: ""))
}
