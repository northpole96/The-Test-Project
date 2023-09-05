//
//  TestView.swift
//  Days Since
//
//  Created by Rajesh Khuntia on 03/09/23.
//

import SwiftUI

struct TestView2: View {
    var body: some View {
        
        NavigationView {
            List {
                // Create a VStack with a fixed height of 300
                Section{
                    
                    VStack{
                        Spacer()
                       
                        HStack(){
                        
                            VStack(alignment:.leading) {
                                Text("0").font(.title)
                                Text("Days")
                                Text("Alter Ego")
                                
                            }
                            Spacer()
                            VStack(alignment:.leading){
                                Text("0").font(.title)
                                Text("Hours")
                            }
                            Spacer()
                            VStack (alignment:.leading){
                                Text("0").font(.title)
                                Text("Minutes")

                            }
                            
                           
                        }
                        .padding(.horizontal)
                        
                    }.frame(height: 200)
                        
                }
                .listRowBackground(Color.red)
                
                
                    Section(header: Text("Section 1")) {
                        Text("Content for Section 1")
                    }
                    
                    Section(header: Text("Section 2")) {
                        Text("Content for Section 2")
                    }
                }
            
            .listStyle(InsetGroupedListStyle()) // Remove default list style
            .navigationBarTitle("Your View", displayMode: .inline)
        }
    }
}

#Preview {
    TestView2()
}
