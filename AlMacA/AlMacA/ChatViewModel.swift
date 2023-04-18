//
//  ChatViewModel.swift
//  AlMacA
//
//  Created by Jan Dhillon on 2023-04-18.
//

import SwiftUI
import Combine

class ChatViewModel: ObservableObject {
    @Published var messages: [String] = []
    @Published var input: String = ""
    
    func sendMessage() {
        if !input.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            messages.append(input)
            input = ""
        }
    }
}
