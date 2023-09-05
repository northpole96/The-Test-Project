//
//  TestView.swift
//  Days Since
//
//  Created by Rajesh Khuntia on 03/09/23.
//

//This view shows a rectangle along with a Form(not technically ) and also scrolls
//Turns out the trick is not to use Form but List and list style as InsetGroupedListStyle()


import SwiftUI

struct CustomCheckList: View {
    @State var off=false
    var body: some View {
        
        Toggle("Spiderman", isOn: $off).padding().toggleStyle(CheckboxToggleStyle2())
    }
}

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(lineWidth: 2)
                .frame(width: 25, height: 25)
                .cornerRadius(5.0)
                .overlay {
                    Image(systemName: configuration.isOn ? "checkmark" : "")
                }
                .onTapGesture {
                    withAnimation(.spring()) {
                        configuration.isOn.toggle()
                    }
                }
            
            configuration.label
            
        }
    }
}



struct CheckboxToggleStyle2: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Label {
                configuration.label
            } icon: {
                Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                    .foregroundStyle(configuration.isOn ? Color.accentColor : .secondary)
                    .accessibility(label: Text(configuration.isOn ? "Checked" : "Unchecked"))
                    .imageScale(.large)
            }
        }
        .buttonStyle(.plain)
    }
}


#Preview {
    CustomCheckList()
}
