//
//  Episode.swift
//  Serenity
//
//  Created by Елена Дранкина on 14.09.2021.
//

import Foundation

struct Episode {
    
    let chapterId: Int
    let hero: Hero?
    let emotion: Emotion?
    let backgroundImage: BackgroundImage
    let shownImage: ShownImage?
    let chapterSound: ChapterSound
    let chapterText: String
    
    static func getEpisodes() -> [Episode] {
        [
        Episode(
            chapterId: 1,
            hero: nil,
            emotion: nil,
            backgroundImage: .shuttleInterior,
            shownImage: nil,
            chapterSound: .standart,
            chapterText: """
                        За столом сидели несколько офицеров. Кто-то пил ром, кто-то просто слушал разговоры. Обсуждали план захвата транспортника.
                        """
        ),
        Episode(
            chapterId: 2,
            hero: .kris,
            emotion: .neutral,
            backgroundImage: .shuttleInterior,
            shownImage: nil,
            chapterSound: .standart,
            chapterText: """
                Да там приключение на десять минут. Зашли и вышли!
                Не так давно банда Кристи перехватила план передвижения «Серенити» — транспортника с ценным грузом.
                """
        ),
        Episode(
            chapterId: 3,
            hero: nil,
            emotion: nil,
            backgroundImage: .shuttleInterior,
            shownImage: .skyMap,
            chapterSound: .swipe,
            chapterText: "Джо отставил пустую кружку и разложил на столе голографическую карту."
        ),
        Episode(
            chapterId: 4,
            hero: .joe,
            emotion: .neutral,
            backgroundImage: .shuttleInterior,
            shownImage: .skyMapDest,
            chapterSound: .swipe,
            chapterText: "Обычно с транспортником в комплекте идет крейсер и минимум пять кораблей поменьше."
        )
        ]
    }
    
}

enum Hero: String {
    case joe = "joe"
    case kris = "kris"
    case nik = "nik"
    case dow = "dow"
    case conf = "conf"
    
    var name: String {
        switch self {
        
        case .joe:
            return "Джо"
        case .kris:
            return "Крис"
        case .nik:
            return "Ник"
        case .dow:
            return "Доу"
        case .conf:
            return "Конфидо"
        }
    }
    
}

enum Emotion: String {
    case angry = "Angry"
    case happy = "Happy"
    case neutral = "Neutral"
    case sad = "Sad"
    case scared = "Scared"
    case suprised = "Suprised"
}

enum ShownImage: String {
    case skyMap = "skyMap"
    case skyMapSerenity = "skyMapSerenity"
    case skyMapDest = "skyMapDest"
    case book = "book"
}

enum BackgroundImage: String {
    case shuttleInterior = "shuttleInterior"
    case bgSpace = "bgSpace"
    case bgStars = "bgStars"
    case mainMenu = "mainMenu"
}

enum ChapterSound: String {
    case loadInterface = "loadInteface"
    case swipe = "swipe"
    case attack = "attack"
    case psh = "psh"
    case standart = "standart"
    case chat = "chat"
}
