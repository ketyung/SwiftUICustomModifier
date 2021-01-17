//
//  CustomActivityIndicator.swift
//  SwiftUICustomModifier
//
//  Created by Chee Ket Yung on 16/01/2021.
//

import SwiftUI

struct CustomActivityIndicator : View {
    
    var color : Color
    
    @Binding var isRunning : Bool
    
    @State private var position : Int = 0
    
    var body: some View {
        
        HStack (spacing: 10){
            
            Circle()
            .fill( (self.position == 0) ? self.color : Color(UIColor.lightGray) )
            .frame(width: 30, height: 30)
            
            Circle()
            .fill( (self.position == 1) ? self.color : Color(UIColor.lightGray)  )
            .frame(width: 30, height: 30)
            
            Circle()
            .fill( (self.position == 2) ? self.color : Color(UIColor.lightGray)  )
            .frame(width: 30, height: 30)
            
        }
        .onAppear {
            
            
            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
                withAnimation{
                    self.changePosition()
                }
                
                if !self.isRunning {
                   
                    timer.invalidate()
                }
            }

        
        }
    }
        
}


extension CustomActivityIndicator {
    
    private func changePosition(){
        
        if self.position < 3 {
            self.position += 1
            if ( self.position == 3 )
            {
                self.position = 0
            }
        }
    }
}

