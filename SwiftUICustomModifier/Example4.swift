//
//  ContentView.swift
//  SwiftUICustomModifier
//
//  Created by Chee Ket Yung on 15/01/2021.
//

import SwiftUI

struct Example4: View {
    
    @State private var showProgressView : Bool = false
    
    var body: some View {
        
        VStack (spacing: 20) {
        
            Text("Hope you have fun with this tutorial")
            .foregroundColor(.black)
            .roundIt()
    
            Button(action: {
                
                self.showProgressView = true
                
                
                Timer.scheduledTimer(withTimeInterval: 5, repeats: false){ _ in
                    
                    self.showProgressView = false
                }
                
            }, label: {
                Text("Show")
            })
            .roundIt()
            
        }
        .progressView(isShowing: self.$showProgressView)
        
    }
}

struct Example4_Previews: PreviewProvider {
    static var previews: some View {
        Example4()
    }
}
