//
//  TextBlockView.swift
//  Serenity
//
//  Created by Елена Дранкина on 22.09.2021.
//

import SwiftUI

struct TextBlockView: View {
    
    var body: some View {
        ZStack {
            Image("textbox")
                .resizable()
                .scaledToFit()
        }
    }
}

struct TextBlockView_Previews: PreviewProvider {
    static var previews: some View {
        TextBlockView()
    }
}
