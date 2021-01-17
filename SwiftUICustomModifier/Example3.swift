//
//  Example2.swift
//  SwiftUICustomModifier
//
//  Created by Chee Ket Yung on 15/01/2021.
//

import SwiftUI

struct Example3 : View {
    
    @State private var showProgressView : Bool = false
    
    var body: some View {
        
        List((1..<6)){ idx in
            
            Text("Text row \(idx)")
            .roundIt()
        }
       
        .progressView(isShowing:self.$showProgressView )
        .onAppear{
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
             
                withAnimation{
                    
                    self.showProgressView = true
                }
                
                // close it after 5 seconds with a Timer
                Timer.scheduledTimer(withTimeInterval: 5, repeats: false){ _ in
                    
                    self.showProgressView = false
                }
                
            }
            
        }
    }
}


struct Example3_Previews: PreviewProvider {
    static var previews: some View {
        Example3()
    }
}
