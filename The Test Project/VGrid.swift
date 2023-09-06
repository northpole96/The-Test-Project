//
//  VGrid.swift
//  The Test Project
//
//  Created by Rajesh Khuntia on 06/09/23.
//

import SwiftUI

struct VGrid: View {
    let data = (
        1...100
    ).map {
        "\($0)"
    }
    let col = [
        GridItem(
                .adaptive(
                minimum: 80
            )
        ),
        GridItem(
                .adaptive(
                minimum: 80
            )
        )
    ]
    var body: some View {
        ScrollView {

            LazyVGrid(
                columns: col,
                spacing: 10
            ) {

                ForEach(
                    data,
                    id: \.self
                ) { item in
                    Text(
                        item
                    ).font(
                            .largeTitle
                    ).fontWeight(
                        /*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/
                    ).foregroundColor(
                        randomColor()
                    )
                    .frame(width: 50, height: 50)
                    .border(Color.black)
                }
            }

        }
    }

    func randomColor() -> Color {
        let col = [
            Color.red,
            Color.blue,
            Color.pink,
            Color.mint,
            Color.yellow,
            Color.gray,
            Color.green,
            Color.teal,
            Color.cyan,
            Color.brown,
            Color.indigo
        ]
        let index = Int.random(
            in: 0...col.count - 1
        )
        return col[index]
    }
}

#Preview {
    VGrid()
}
