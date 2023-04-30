//
//  AmiiboListResponseDTO.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/30.
//

import Foundation

// MARK: - AmiiboListResponseDTO

struct AmiiboListResponseDTO: Codable {
    let amiibo: [AmiiboResponseDTO]
}

extension AmiiboListResponseDTO {
    func toDomain() -> [Amiibo] {
        return amiibo.map { $0.toDomain() }
    }
}

// MARK: - Amiibo

struct AmiiboResponseDTO: Codable {
    let amiiboSeries: AmiiboSeriesResponseDTO
    let character, gameSeries, head: String
    let image: String
    let name: String
    let release: ReleaseResponseDTO
    let tail: String
    let type: TypeEnumResponseDTO
}

extension AmiiboResponseDTO {
    func toDomain() -> Amiibo {
        return .init(image: image, name: name)
    }
}

enum AmiiboSeriesResponseDTO: String, Codable {
    case animalCrossing = "Animal Crossing"
    case boxBoy = "BoxBoy!"
    case chibiRobo = "Chibi-Robo!"
    case diablo = "Diablo"
    case fireEmblem = "Fire Emblem"
    case kirby = "Kirby"
    case legendOfZelda = "Legend Of Zelda"
    case marioSportsSuperstars = "Mario Sports Superstars"
    case megaMan = "Mega Man"
    case metroid = "Metroid"
    case monsterHunter = "Monster Hunter"
    case monsterHunterRise = "Monster Hunter Rise"
    case others = "Others"
    case pikmin = "Pikmin"
    case pokemon = "Pokemon"
    case powerPros = "Power Pros"
    case shovelKnight = "Shovel Knight"
    case skylanders = "Skylanders"
    case splatoon = "Splatoon"
    case superMarioBros = "Super Mario Bros."
    case superNintendoWorld = "Super Nintendo World"
    case superSmashBros = "Super Smash Bros."
    case the8BitMario = "8-bit Mario"
    case yoshiSWoollyWorld = "Yoshi's Woolly World"
    case yuGiOh = "Yu-Gi-Oh!"
}

// MARK: - Release

struct ReleaseResponseDTO: Codable {
    let au, eu, jp, na: String?
}

enum TypeEnumResponseDTO: String, Codable {
    case band = "Band"
    case card = "Card"
    case figure = "Figure"
    case yarn = "Yarn"
}
