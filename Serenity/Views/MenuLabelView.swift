//
//  MenuLabelView.swift
//  Serenity
//
//  Created by Елена Дранкина on 15.09.2021.
//

import SwiftUI

struct MenuLabelView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.custom("Nasalization", size: 35))
            .foregroundColor(CustomColors().lightBlue)
            .shadow(color: .clear, radius: 10, x: 0.0, y: 0.0)
            .padding(10)
    }
}

struct MenuLabelView_Previews: PreviewProvider {
    static var previews: some View {
        MenuLabelView(title: "Start game")
    }
}
