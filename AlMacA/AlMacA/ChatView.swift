//
//  ChatView.swift
//  AlMacA
//
//  Created by Jan Dhillon on 2023-04-13.
//

import SwiftUI

struct ChatView: View {
    @StateObject private var viewModel = ChatViewModel()
    
    var body: some View {
        VStack {
            List(viewModel.messages, id: \.self) { message in
                HStack {
                    Text(message)
                        .padding(8)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                    Spacer()
                }
            }
            
            HStack {
                TextField("Type a message...", text: $viewModel.input)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: viewModel.sendMessage) {
                    Image(systemName: "arrow.up.circle.fill")
                        .font(.system(size: 24))
                }
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

