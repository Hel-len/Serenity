//
//  NewGameView.swift
//  Serenity
//
//  Created by Елена Дранкина on 15.09.2021.
//

import SwiftUI

struct NewGameView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var currentChapterId = 1
    let episodes = Episode.getEpisodes()
    
    var body: some View {
        ZStack(alignment: .leading) {
            Image("bgStars")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            Image(episodes[currentChapterId].backgroundImage.rawValue)
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                Spacer()
                TextBlockView()
                    .padding()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackBarItemView(
                                action: { self.presentationMode.wrappedValue.dismiss()}
        ))
    }
}

struct NewGameView_Previews: PreviewProvider {
    static var previews: some View {
        NewGameView()
    }
}
