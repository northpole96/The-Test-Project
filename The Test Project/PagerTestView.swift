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
                Text("H1").foregroundColor(Color.yellow).font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("H2").foregroundColor(Color.pink).font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("H3").foregroundColor(Color.gray).font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("H4").foregroundColor(Color.blue).font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("Next") .foregroundColor(Color.mint).font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                   
              
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
