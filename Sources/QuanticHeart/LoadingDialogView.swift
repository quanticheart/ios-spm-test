//
//  LoadingView.swift
//  vipertest
//
//  Created by Jonn Alves on 16/02/23.
//

import SwiftUI

@available(iOS 13.0, *)
struct LoadingDialogView: View {
    var status = true
    
    public init(status:Bool){
        self.status = status
    }
    
    var body: some View {
        if(status) {
            if #available(iOS 14, macOS 10.15, *) {
                VStack {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
                .background(Color.white)
                .zIndex(10)
            } else {
                VStack {
                    Text("Loading")
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
                .background(Color.white)
                .zIndex(10)
            }
        }
    }
}

@available(iOS 13.0, *)
struct LoadingDialogView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            LoadingDialogView(status: false)
        }
    }
}
