//
//  BackBarItemView.swift
//  Serenity
//
//  Created by Елена Дранкина on 22.09.2021.
//

import SwiftUI

struct BackBarItemView: View {
    
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "arrowshape.turn.up.left.circle.fill")
                .foregroundColor(CustomColors().lightBlue)
                .shadow(color: CustomColors().lightBlue, radius: 10)
        }
    }
}

struct BackBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        BackBarItemView(action: {})
    }
}
