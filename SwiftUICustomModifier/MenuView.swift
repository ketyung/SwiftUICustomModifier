//
//  MenuView.swift
//  SwiftUICustomModifier
//
//  Created by Chee Ket Yung on 16/01/2021.
//

import SwiftUI

struct MenuView : View {
    
    private let examples = ["Example 1 - roundIt custom modifier","Example 2 - A Custom ProgressView",  "Example 3", "Example 4" ]
    
    var body: some View {
        
        NavigationView {
        
            VStack(spacing : 20){
            
                VStack(spacing: 20){
            
                    ForEach((0..<examples.count)) {
                        idx in
                        
                        NavigationLink( destination: getDestination(index: idx) ){
                            
                           Text(examples[idx])
                           .frame(width:280, height:40)
                           .roundIt()
                        }
                    }
                
                }
                .frame(width: 300, height: 400)
                .roundIt()
           
                Spacer()
            }
            .navigationTitle(Text("Menu"))
          
   
        }
        
    }
}


extension MenuView {
    
    
    @ViewBuilder
    private func getDestination(index : Int ) -> some View {
        
        switch index {
          case  1:
            Example2 ()
          case  2:
            Example3()
          case 3 :
            Example4()
          default:
            Example1()
        }
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
