//
//  PagerTestView.swift
//  Days Since
//
//  Created by Rajesh Khuntia on 03/09/23.
//

import SwiftUI

struct PagerTestView: View {
    @State var isShowing=false
    var body: some View {
        Button("Show"){
            isShowing.toggle()
            
        }
        .sheet(isPresented: $isShowing){
            TabView{
                Text("H1")
                Text("H2")
                Text("H3")
                Text("H4")
                
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .presentationDetents([.medium])
                            }
    
    }
}

#Preview {
    PagerTestView()
}
