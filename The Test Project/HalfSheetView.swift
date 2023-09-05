//
//  HalfSheetView.swift
//  The Test Project
//
//  Created by Rajesh Khuntia on 03/09/23.
//

import SwiftUI

struct HalfSheetView: View {
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
                Text("SpiderMan")
                Text("Style")
                Text("Abbreviation")
                
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            //for half screen sheet only
            .presentationDetents([.medium])
            //for customizable half screen full screen sheet
            .presentationDetents([.medium,.large])
        }
        
    }
}

#Preview {
    HalfSheetView()
}
