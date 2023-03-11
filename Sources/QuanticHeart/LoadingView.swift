//
//  LoadingView.swift
//  vipertest
//
//  Created by Jonn Alves on 16/02/23.
//

import SwiftUI

@available(iOS 13.0, *)
struct LoadingView<Content: View>: View {
    var status = true
    var view : () -> Content
    
    public init(status:Bool,@ViewBuilder view: @escaping () -> Content){
        self.status = status
        self.view = view
    }
    
    var body: some View {
        if(status) {
            if #available(iOS 14, macOS 10.15, *) {
                VStack {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                }
            } else {
                VStack {
                    Text("Loading")
                }
            }
        } else {
            self.view()
        }
    }
}

