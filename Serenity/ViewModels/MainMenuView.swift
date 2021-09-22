//
//  MainMenuView.swift
//  Serenity
//
//  Created by Елена Дранкина on 14.09.2021.
//

import SwiftUI

struct MainMenuView: View {
    
    

    var body: some View {
        
        NavigationView {
            ZStack {
                Image("mainMenu")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                HStack {
                    VStack {
                        NavigationLink(
                            destination: NewGameView())
                        {
                            MenuLabelView(title: "Начать")
                        }
                        NavigationLink(
                            destination: GameOptionsView())
                        {
                            MenuLabelView(title: "Опции")
                        }
                        NavigationLink(
                            destination: AboutGameInfoView())
                        {
                            MenuLabelView(title: "Об игре")
                        }
                    }
                    Spacer()
                }

            }
            .navigationBarTitle("")
            .navigationBarColor(.black)

        
        }
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
            .landscape()
    }
}
