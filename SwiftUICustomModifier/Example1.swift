//
//  Example3.swift
//  SwiftUICustomModifier
//
//  Created by Chee Ket Yung on 16/01/2021.
//

import SwiftUI

struct Example1 : View {
    
    var body: some View {
        
        Text("It's an awesome sunset taken 2 years ago")
        .roundIt()
        
    }
}


struct Example1_Previews: PreviewProvider {
    static var previews: some View {
        Example1()
    }
}
