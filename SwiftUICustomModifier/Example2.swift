//
//  Example2.swift
//  SwiftUICustomModifier
//
//  Created by Chee Ket Yung on 17/01/2021.
//

import SwiftUI

struct Example2 : View {
    
    @State private var showProgressView : Bool = false
    
    var body: some View {
        
        Button(action: {
            
            self.showProgressView = true
            
            // close it after 3 seconds 
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            
                self.showProgressView = false
            }
            
        }, label: {
            
            Text("Tap To Show")
            
        })
        .progressView(isShowing: self.$showProgressView)
    }
}


struct Example2_Previews: PreviewProvider {
    static var previews: some View {
        Example2()
    }
}
